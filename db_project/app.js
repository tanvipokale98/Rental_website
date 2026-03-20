const express = require("express");
const app = express();
const engine = require("ejs-mate");
const session = require("express-session");
const path = require("path");
const db = require("./db.js");
const bcrypt =require("bcrypt")
const multer = require("multer");
app.engine("ejs",engine);
app.set("view engine", "ejs");
app.set("views", path.join(__dirname, "/views"));
app.use(express.static(path.join(__dirname, "/public")));
app.use(express.urlencoded({ extended: true }));
const cors = require('cors');
const { time } = require("console");
app.use(cors());
app.use(express.json());
app.use(express.urlencoded({ extended: true }));
app.use(session({secret:"secret"}));
app.use((req, res, next) => {
  if (!req.session.cart) {
      req.session.cart = [];
  }
  next();
});

app.listen(3002,()=>{
    console.log("http://localhost:3002");
});


function incart(cart,id){
         for(let i=0;i<cart.length;i++){
          if(cart[i].id===id){
            return true;
          }
         }
         return false;
}

function total(cart, req) {
  let t = 0;
  cart.forEach(item => {
      t += item.rent * item.quantity* item.days;
  });
  req.session.t = t;
  return t;
}


app.get("/", (req, res) => {
 var userID =req.session.customer_id;
 let found=0;

    const query = "SELECT * FROM products WHERE product_id IN (2,6,8,15,20,4)";
    db.query(query, (error, results) => {
      if (error) {
        return res.send("Error Occured!");
      }
      results.forEach(item => {
        if (typeof item.imgurl === "string") {
          item.imgurl = JSON.parse(item.imgurl); 
        }
      });
      //console.log(userID);
      if(!userID){
        found=0;
  res.render("pages/home.ejs", { results,found:found });
}
else{
  found=1;
   res.render("pages/home.ejs", { results,found:found });
}
    });
  });
  


app.get('/know',(req,res)=>{
  res.render("pages/about.ejs");
})

app.get("/category", (req, res) => {
var userID=req.session.customer_id;
let found=0;

  if(!userID){
    found=0;
    res.render("pages/category.ejs",{ found:found });
}
else{
found=1;
res.render("pages/category.ejs",{ found:found });
}
   
});  

app.get("/about", (req, res) => {
  var userID=req.session.customer_id;
let found=0;

  if(!userID){
    found=0;
    res.render("pages/about.ejs",{ found:found });
}
else{
found=1;
res.render("pages/about.ejs",{ found:found });
}
}); 

app.get("/adminlogin", (req, res) => {
  res.render("pages/adminlogin.ejs"); 
});

app.get('/transaction',function(req,res){
  var tot=req.session.t;


res.render('pages/transaction.ejs',{ total:tot});

  
});

app.get("/checkout" , (req,res)=>{
  var cart = req.session.cart;
  var total=req.session.t;
  var userID=req.session.customer_id;
let found=0;

  if(!userID){
    found=0;
    res.render('pages/checkout.ejs' ,{cart:cart,total:total , found:found });
}
else{
found=1;
res.render('pages/checkout.ejs' ,{cart:cart,total:total, found:found});
}
        
});

app.get("/placeorder", (req,res)=>{
  var userid=req.session.customer_id;
  var cart=req.session.cart;
  if(!userid){
    return res.render('pages/login');
  }
  if(!cart || cart.length===0){
    return res.send("Add items Your Cart is Empty");
  }
  
  res.redirect('/checkout');
});

app.get("/check", (req,res)=>{
  res.redirect('pages/transaction.ejs');
});


app.get("/login", (req, res) => {
  res.render("pages/login.ejs");
});

app.get("/signup", (req, res) => {
  res.render("pages/signup.ejs");
});

app.get("/logout", (req, res) => {
  req.session.destroy((err) => {
    if (err) console.error("Logout Error:", err);
    res.redirect("/");
  });
});

app.get("/thankyou", (req, res) => {
  res.render("pages/thankyou.ejs");
});

app.get("/page1", (req, res) => {
  const query = "SELECT * FROM products";
  db.query(query, (error, results) => {
    if (error) {
      return res.status(500).send("Error Occurred!");
    }

    results.forEach(item => {
      if (typeof item.features === "string") {
        item.features = JSON.parse(item.features); 
      }
    });

    results.forEach(item => {
      if (typeof item.imgurl === "string") {
        item.imgurl = JSON.parse(item.imgurl); 
      }
    });
    if(!req.session.customer_id){
      res.render("pages/page1", { results , found:0}); 
    }
    else{
      res.render("pages/page1", { results , found:1}); 
    }
    
  });
});

app.post("/signup", async (req, res) => {
  const { username, email, password, phone, address} = req.body;

  try {
      const hashedPassword = await bcrypt.hash(password, 10); 
      const query = "INSERT INTO customer (username, email, password, phone, address) VALUES (?, ?, ?, ?,?)";
      db.query(query, [username, email, hashedPassword, phone, address], (err, result) => {
          if (err) {
              console.error("Error inserting user:", err);
              return res.status(500).json({ message: "Error registering user" });
          }
          res.status(201).json({ message: "User registered successfully" });
      });
  } catch (error) {
      console.error("Error hashing password:", error);
      res.status(500).json({ message: "Error registering user" });
  }
});

app.post("/login", async (req, res) => {
  const { username, password } = req.body;
  const query = "SELECT * FROM customer WHERE username = ?";
  db.query(query, [username], async (err, result) => {
      if (err) {
          console.error("Error querying database:", err);
          return res.status(500).json({ message: "Error logging in" });
      }

      if (result.length === 0) {
          return res.status(404).json({ message: "User not found" });
      }

      const isMatch = await bcrypt.compare(password, result[0].password);
      if (isMatch) {
        req.session.customer_id = result[0].id;
          return res.status(200).json({ message: "Login successful" });
      } else {
          return res.status(401).json({ message: "Incorrect password" });
      }
  });
});

app.post("/adminlogin", async (req, res) => {
  var email=req.body.email;
  var password=req.body.password;

  let isMatch = false; 
  console.log("Admin login request received:", req.body);
  if (email == "admin@gmail.com" && password == "admin") {
    isMatch = true;
  }
   
  if (isMatch) {
    req.session.admin=1;
    console.log("Admin login successful, redirecting to /track");
    res.redirect("/track");
  } else {
    return res.status(401).json({ message: "Incorrect email or password" });
  }
});

app.post("/addtocart", (req, res) => {
var userid=req.session.customer_id;

  if (!userid) {
    return res.render('pages/login');
}

  let { id, name, rent, quantity, days} = req.body;
 
  let product = { id, name, rent, quantity: parseInt(quantity), days:parseInt(days)};

  if (req.session.cart) {
      let cart = req.session.cart;
      if (!incart(cart, id)) {
          cart.push(product);
      }
  } else {
      req.session.cart = [product];
  }

  total(req.session.cart, req);
  res.redirect('/page1')
});


app.get('/cart',function(req,res){
      var cart =req.session.cart;
      var tot=req.session.t;
      var userID=req.session.customer_id;
let found=0;

  if(!userID){
    found=0;
    res.render('pages/cart.ejs' ,{cart:cart,total:tot , found:found });
}
else{
found=1;
res.render('pages/cart.ejs' ,{cart:cart,total:tot, found:found});
}
     
});

app.post("/removeprod",(req,res)=>{
           var id=req.body.id;
           var cart=req.session.cart || [];

           for(let i=0;i<cart.length;i++){
            if(cart[i].id===id){
              cart.splice(i,1);
              break;
            }
           }
           total(cart,req);
           res.redirect('/cart');
});

app.post('/updatecart',(req,res)=>{
var id=req.body.id;
var quantity=req.body.quantity;
var inc=req.body.inc;
var dec=req.body.dec;

var cart=req.session.cart;
if(inc){
  for(let i=0;i<cart.length;i++){
    if(cart[i].id===id){
      if(cart[i].quantity>0){
        cart[i].quantity=parseInt(cart[i].quantity)+1;
      }
    }
  }
}

if(dec){
  for(let i=0;i<cart.length;i++){
    if(cart[i].id===id){
      if(cart[i].quantity>1){
        cart[i].quantity=parseInt(cart[i].quantity)-1;
      }
      
    }
  }
}

total(cart,req);
res.redirect('/cart');
});

app.post('/rental',(req,res)=>{
  var id=req.body.id;
  var days=req.body.days;
  var rinc=req.body.rinc;
  var rdec=req.body.rdec;
  var cart=req.session.cart;
  if(rinc){
    for(let i=0;i<cart.length;i++){
      if(cart[i].id===id){
        if(cart[i].days>0){
          cart[i].days=parseInt(cart[i].days)+1;
        }
        
      }
    }
  }
  
  if(rdec){
    for(let i=0;i<cart.length;i++){
      if(cart[i].id===id){
        if(cart[i].days>1){
          cart[i].days=parseInt(cart[i].days)-1;
        }
        
      }
    }
  }
  
  total(cart,req);
  res.redirect('/cart');
  });

  const storage = multer.memoryStorage(); 
const upload = multer({ storage: storage });
  
  app.post("/transac", upload.single("receipt"), (req, res) => {
      const { transact  } = req.body;
      const receiptImage = req.file.buffer;
      let order_id=req.session.order;
      const sql = "INSERT INTO transactions (order_id, transaction_id, receipt_image) VALUES (?, ?, ?)";
      db.query(sql, [order_id, transact, receiptImage], (err, result) => {
          if (err) {
              console.error("Database error:", err);
              return res.status(500).json({ message: "Error storing image" });
          }
          req.session.order=null;
          res.json({ message: "Transaction saved successfully!" });
      });
  });

app.post('/check', (req, res) => {
  var email = req.body.email;
  var contact = req.body.tel;
  var address = req.body.address;
  var userid = req.session.customer_id;
  var total = req.session.t;
  var cart = req.session.cart;

  if (!userid) {
      return res.send("You are not logged in");
  }

  const orderQuery = 'INSERT INTO orders (customer_id, contact, email, address, total_price, stat, Status_reason) VALUES (?, ?, ?, ?, ?, ?,"UnderReview")';
  
  db.query(orderQuery, [userid, contact, email, address, total, 0], (err, orderResult) => {
      if (err) {
          console.error("Error processing order:", err);
          return res.status(500).send("Error processing your order.");
      }
      
      let orderId = orderResult.insertId;
      req.session.order=orderId;
      let itemQueries = [];
for (let i = 0; i < cart.length; i++) {
    let item = cart[i];
    
    itemQueries.push(
        db.query('INSERT INTO order_items (order_id, product_name, rental_days,quantity,  price) VALUES (?, ?, ?, ?, ?)', 
        [orderId, item.name,item.days ,item.quantity, BigInt(item.rent)])
    );
  }
      res.redirect('/transaction');
  });
});

app.get("/track", (req, res) => {
  if(req.session.admin!=1){
    return res.redirect('/adminlogin');
  }
  const sql = `
      SELECT o.order_id, o.customer_id, o.total_price, o.address, o.contact, o.stat, t.transaction_id,
       JSON_ARRAYAGG(
            JSON_OBJECT('product_name', i.product_name, 'rental_days', i.rental_days, 'quantity', i.quantity, 'price', i.price)
       ) AS items
FROM orders o
LEFT JOIN order_items i ON o.order_id = i.order_id
LEFT JOIN transactions t ON o.order_id = t.order_id
WHERE o.stat != 1 
GROUP BY o.order_id, t.transaction_id;
  `;

  db.query(sql, (err, results) => {
      if (err) {
          console.error("Database error:", err);
          return res.status(500).send("Error fetching orders.");
      }
      //console.log(results);
      const orders = results.map(order => ({
          order_id: order.order_id,
          customer_id: order.customer_id,
          address: order.address,
          contact: order.contact,
          total_price: order.total_price,
          items: order.items, 
          transaction : order.transaction_id 
          //imageBase64: order.receipt_image ? order.receipt_image.toString("base64") : null
      }));
      //console.log(orders);
      //console.log("Orders fetched:", JSON.stringify(orders, null, 2));
      //console.log("reached");
      res.render("pages/track.ejs", { orders });
  });
});

app.post("/track/:orderId", (req, res) => {
  const { orderId } = req.params;
  const sql = "UPDATE orders SET stat = 1,Status_reason='Shipped' WHERE order_id = ?";  
  db.query(sql, [orderId], (err, result) => {
      if (err) {
          console.error("Database error:", err);
          return res.status(500).send("Error updating order status.");
      }
      res.redirect("/track"); 
  });
});
app.post("/tracki/:orderId", (req, res) => {
  const { orderId } = req.params;
  const sql = "UPDATE orders SET stat = 1,Status_reason ='Transaction id does not matched' WHERE order_id = ?";  
  db.query(sql, [orderId], (err, result) => {
      if (err) {
          console.error("Database error:", err);
          return res.status(500).send("Error updating order status.");
      }
      res.redirect("/track"); 
  });
});
app.post("/track2/:orderId", (req, res) => {
  const { orderId } = req.params;
  const sql = "UPDATE orders SET stat = 1,Status_reason ='Full amount has not paid' WHERE order_id = ?";  
  db.query(sql, [orderId], (err, result) => {
      if (err) {
          console.error("Database error:", err);
          return res.status(500).send("Error updating order status.");
      }
      res.redirect("/track"); 
  });
});

app.get("/user", (req, res) => {
  var userID = req.session.customer_id;
  // if (!userID) {
  //   return res.render("pages/login");
  // }
  const pquery="SELECT * FROM customer WHERE id=?";
  db.query(pquery,[userID],(err, result)=>{
    if (err) {
      console.error(err);
      return res.status(500).send("Database error");
    }
    const query = `SELECT o.order_id, o.total_price, o.address, o.contact,o.created_at,o.Status_reason,
       JSON_ARRAYAGG(
            JSON_OBJECT('product_name', i.product_name, 
                        'rental_days', i.rental_days, 
                        'quantity', i.quantity, 
                        'price', i.price)
       ) AS items
FROM orders o
JOIN order_items i ON o.order_id = i.order_id
WHERE o.customer_id = ? GROUP BY o.order_id, o.total_price, o.address, o.contact,o.created_at,o.Status_reason;
`;
  db.query(query, [userID], (err, results) => {
    if (err) {
      console.error(err);
      return res.status(500).send("Database error");
    }
    const orders = results.map(order => ({
      order_id: order.order_id,
      address: order.address,
      contact: order.contact,
      total_price: order.total_price,
      time:order.created_at,
      items: order.items,
      reason:order.Status_reason, 
  
  }));
  if(!req.session.customer_id){
    res.render("pages/user", { orders , result, found:0}); 
  }
  else{
    res.render("pages/user", { orders , result, found:1});
  }
    //res.render("pages/user", { orders , result, found});
  });
  });
  
});

app.post("/require" ,(req,res)=>{
var feedback=req.body.story;
var userID=req.session.customer_id;
const query="insert into feedback (customer_id, feed, date_time) values (?,?,NOW())";
db.query(query,[userID,feedback] , (err,result)=>{
     if(err){
      console.log(err);
      return res.status(500).send("Database error");
     }
     res.json({ success: true, message: "Feedback submitted successfully" });
});
});

app.post("/feedback/:feedback_id", (req, res) => {
  const { customer_id,feedback_id } = req.params;

  const sql = "UPDATE feedback SET stat = 1 WHERE feedbid = ?";  
  db.query(sql, [feedback_id], (err, result) => {
      if (err) {
          console.error("Database error:", err);
          return res.status(500).send("Error updating order status.");
      }
      res.redirect("/feedback"); 
  });
});

app.get("/feedback", (req, res) => {
  if(req.session.admin!=1){
    return res.redirect('/adminlogin');
  }
  const sql = `
      SELECT c.id, c.username, c.email, c.phone, c.address , f.feed,f.date_time,f.feedbid from customer as c join feedback as f on c.id=f.customer_id where f.stat!=1;
  `;

  db.query(sql, (err, results) => {
      if (err) {
          console.error("Database error:", err);
          return res.status(500).send("Error fetching orders.");
      }
      //console.log(results);
      const orders = results.map(order => ({
          customer_id: order.id,
          username: order.username,
          address: order.address,
          contact: order.phone,
          email: order.email,
          feedback:order.feed,
          date:order.date_time,
          feedback_id:order.feedbid
      }));
   
      res.render("pages/feedback.ejs", { orders });
  });
});
