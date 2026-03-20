create database dbms;
use dbms;
create table customer(
    id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    username VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    phone VARCHAR(255) NOT NULL,
    address VARCHAR(255) NOT NULL
);

CREATE TABLE products (
    product_id INT NOT NULL PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    category VARCHAR(100) NOT NULL,
    Rent_price DOUBLE NOT NULL,
    description TEXT NOT NULL,
    features JSON NOT NULL,
    prod_status INT NOT NULL
);

insert into products values(1,"Red Helium","Camera",21500.0,"RED HELIUM 8K S35 - High-Resolution Digital Cinema Camera. The RED HELIUM 8K S35 is a professional digital cinema camera featuring an 8K Super 35mm sensor that delivers 35.4 megapixels per frame for exceptional resolution, dynamic range, and flexibility. Ideal for high-end film, TV, and commercial productions, it supports REDCODE RAW, ProRes, and DNxHR, ensuring seamless post-production workflows.",
        '["8K Super 35mm Sensor – 8192 × 4320 resolution for superior detail, cropping, and VFX work.","16.5+ Stops Dynamic Range – Captures rich highlights and shadows for enhanced HDR capabilities.", "High Frame Rates – 8K at 60 fps, 4K at 120 fps, 2K at 240 fps for cinematic slow motion.","Exceptional Color & Low-Light Performance – Natural skin tones and reduced noise in dim lighting.","Modular & Compact Design – Customizable with interchangeable lens mounts, monitors, and power options. Used in feature films, Netflix originals, and VFX-heavy productions, the RED HELIUM 8K S35 is the ultimate choice for cinematographers and visual effects artists seeking unmatched image quality and creative flexibility."]',0);
        
insert into products values(2,"Red Dragon","Camera",13500,"RED DRAGON 6K – High-Performance Digital Cinema Camera. The RED DRAGON 6K is a professional digital cinema camera featuring a 6K Super 35mm sensor with 19+ megapixels per frame, delivering exceptional resolution, color accuracy, and dynamic range. Designed for feature films, television, and high-end commercial productions, it supports REDCODE RAW, ProRes, and DNxHR, offering maximum post-production flexibility.",
        '["6K Super 35mm Sensor – 6144 × 3160 resolution for superior detail, clarity, and VFX work.", "16.5+ Stops Dynamic Range – Captures deep shadows and highlights for HDR cinematography.","High Frame Rates – 6K at 75 fps, 4K at 120 fps, 2K at 300 fps for cinematic slow motion.","Exceptional Color & Low-Light Performance – Natural skin tones and enhanced low-light sensitivity.","Modular & Lightweight Design – Customizable with interchangeable lenses, monitors, and power options. Widely used in Hollywood films, TV series, and VFX-heavy productions, the RED DRAGON 6K remains a top choice for filmmakers and cinematographers who demand unparalleled image quality and creative control."]',0);
        
        
insert into products values(3,"Red Raptor","Camera",21500.0,"RED V-RAPTOR – High-Performance 8K Digital Cinema Camera. The RED V-RAPTOR is one of RED Digital Cinema's most advanced cameras, featuring an 8K Vista Vision (VV) sensor with 8192 × 4320 resolution and 17+ stops of dynamic range. Designed for high-end filmmaking, television, and commercial productions, it delivers exceptional image quality, low-light performance, and creative flexibility.",
        '["8K Vista Vision Sensor – Full-frame sensor for cinematic depth and superior detail.","High Frame Rates – 8K at 120fps, 6K at 198fps, 4K at 240fps, and 2K at 600fps for stunning slow motion.","Exceptional Dynamic Range – 17+ stops for highlight retention and shadow detail.","REDCODE RAW & ProRes Support – Maximum post-production flexibility and efficiency.","Compact & Modular Design – Ideal for handheld, gimbal, and drone setups.","Fast Media Workflow – CFexpress Type B cards enable high-speed 8K RAW recording. Used in feature films, commercials, and documentaries, the RED V-RAPTOR is a future-proof investment for professionals who demand unparalleled resolution, dynamic range, and performance in digital cinematography."]',0);
        
insert into products values(4,"Venice Camera","Camera",20500.0,"Sony VENICE – Premium Full-Frame 6K Digital Cinema Camera. The Sony VENICE is a high-end full-frame digital cinema camera from Sony’s CineAlta series, designed for Hollywood productions, high-end TV, and commercial cinematography. With exceptional image quality, advanced color science, and modularity, it is a top choice for cinematographers and directors seeking a cinematic look and creative flexibility.",
        '["6K Full-Frame Sensor – 36.2 × 24.1 mm CMOS sensor with Super 35mm & anamorphic lens support.","Dual Base ISO (500 & 2500) – Optimized for both bright and low-light conditions.","15+ Stops Dynamic Range & Sony’s Color Science – S-Log3 & S-Gamut3 for superior color accuracy.","Interchangeable Sensor Block – Rialto Extension System enables flexible camera setups.","High Frame Rates – 6K at 60fps, 4K at 120fps, and Super 35mm 4K at 120fps for slow motion.","Multiple Recording Formats – X-OCN RAW, ProRes, and XAVC 4K for post-production flexibility.","Modular & Ergonomic Design – Customizable setup with professional-grade connectivity.","Used in Blockbuster Productions: Top Gun: Maverick, Avatar: The Way of Water, The Batman, Stranger Things, Mission: Impossible – Dead Reckoning. The Sony VENICE is a future-proof investment for filmmakers looking for unparalleled cinematic quality, dynamic range, and workflow efficiency."]',0);
           
insert into products values(5,"Sigma Prime Lens (9 lenses)","Lense",6500.0,"Sigma Prime Lenses – Unmatched Optical Precision. Sigma prime lenses are known for their superior image quality, precision engineering, and exceptional performance, catering to both professionals and enthusiasts. Designed for a range of photography styles, these lenses deliver industry-leading optics and outstanding sharpness.",
        '["Wide-Angle Primes: Ideal for landscapes, architecture, and astrophotography, featuring bright apertures like f/1.4 and f/1.8 for excellent low-light performance.","Standard Primes: Perfect for portraits, street photography, and general use, offering sharp contrast, fast autofocus, and beautiful bokeh.","Telephoto Primes: Designed for portraits, sports, and wildlife photography, providing superb subject isolation, stunning background blur, and high precision.","Sigma Art series lenses are built for exceptional optical performance, fast apertures, and premium image quality, making them the top choice for creative professionals."]',0);
        
insert into products values(6,"Ultra Prime Lenses (8 lenses)","Lense",4000.0,"Ultra Prime Lenses – Ultimate Cinematic Precision. Ultra Prime lenses deliver exceptional image quality, cinematic depth, and precise control, making them the top choice for professional filmmakers. With a consistent T1.9 aperture across the range, these lenses ensure stunning low-light performance, beautiful bokeh, and sharp edge-to-edge clarity.",
        '["Wide-Angle Primes: Perfect for landscapes, establishing shots, and architectural filming, offering low distortion and outstanding sharpness.","Standard Primes: Ideal for general filmmaking, character-driven storytelling, and portraits, providing natural perspective, high contrast, and smooth bokeh.","Telephoto Primes: Designed for dramatic close-ups and long-distance shots, delivering superior subject isolation, true-to-life skin tones, and exceptional sharpness.","Built with a robust, high-quality design, Ultra Prime lenses are engineered to meet the demands of professional cinematography, ensuring unmatched optical performance and creative flexibility."]',0);
                
insert into products values(7,"Supreme Prime Lenses (5 lenses)","Lense",9000.0,"Supreme Prime Lenses – High-End Cinematic Precision. The Supreme Prime lenses offer exceptional quality and performance, designed for cinematic filmmakers seeking the highest level of optical precision. With a T1.5 aperture, these lenses provide incredible low-light performance, stunning color accuracy, and minimal distortion. They are perfect for creating immersive compositions and captivating storytelling in a wide range of filmmaking applications.",
        '["Wide-Angle Primes: Ideal for cinematic wide shots and dramatic landscapes, offering incredible color rendering and minimal distortion.","Standard Primes: Best for general filmmaking and close-up shots, providing creamy bokeh, sharp focus, and excellent depth of field control.","Portrait Primes: Perfect for portrait cinematography and artistic compositions, offering beautiful background separation and true-to-life skin tones.","Engineered for professional use, these lenses deliver impeccable optical performance, making them the go-to choice for high-end cinematic productions."]',0);
        
insert into products values(8,"Sony 18-105mm lens","Lense",2000.0,"The Sony 18-105mm f/4 OSS PZ lens is a versatile zoom lens designed for Sony's E-mount mirrorless cameras, making it ideal for both photography and video.",
        '["Focal Length: 18-105mm, offering a wide-angle to medium telephoto zoom range, perfect for landscapes, portraits, and telephoto needs.","Constant f/4 Aperture: Ensures consistent exposure throughout the zoom range, providing reliable performance in various lighting conditions.","Optical SteadyShot (OSS): Built-in image stabilization reduces camera shake, especially useful for handheld shooting or low-light environments.","Power Zoom (PZ): Smooth, electronic zoom control, allowing for precise zoom adjustments, particularly useful for video work.","Compact and Lightweight: Ideal for travel and vlogging with its compact design and easy portability.","Fast and Accurate Autofocus: Ensures quick focusing for both stills and video, enhancing overall shooting experience.","This lens is highly recommended for video creators, vloggers, and photographers seeking a single lens solution that covers a wide range of shooting situations."]',0);
    
insert into products values(9,"Sony Fe  70 - 200mm","Lense",4000.0,"The Sony FE 70-200mm f/2.8 GM OSS lens is a high-performance telephoto zoom for Sony's full-frame mirrorless cameras, offering exceptional image quality and versatility.",
        '["Focal Length: 70-200mm, ideal for portraits, wildlife, sports, and events.","Wide f/2.8 Aperture: Great for low-light conditions and creating shallow depth of field.","Advanced Optics: Features XA and ED elements for sharp, clear images with minimal distortion.","Optical SteadyShot (OSS): Built-in stabilization for reducing camera shake during handheld shooting.","Fast, Silent Autofocus: Ideal for both stills and video.","Durable Build: Weather-sealed for use in tough outdoor conditions.","Zoom Mechanism: Smooth zoom with customizable controls.","Perfect for professionals seeking top-tier performance in telephoto photography."]',0);
       
insert into products values(10,"Sony fe 24-70mm","Lense",2000.0,"The Sony FE 24-70mm f/2.8 GM OSS lens is a versatile standard zoom lens designed for Sony’s full-frame mirrorless cameras, offering exceptional optical performance.",
        '["Focal Length: 24-70mm, ideal for a range of photography, from landscapes to portraits.","Wide f/2.8 Aperture: Great for low-light performance and creating beautiful background bokeh.","G Master Design: Advanced XA and ED elements minimize chromatic aberration and distortion for sharp, high-contrast images.","Optical SteadyShot (OSS): Built-in image stabilization for reducing camera shake, particularly in low-light conditions.","Fast and Quiet Autofocus: Direct Drive SSM motor ensures fast, precise, and silent autofocus, perfect for video.","Durable Build: Weather-sealed for outdoor shooting in tough conditions.","Versatile: Suitable for a wide range of photography, from wide-angle shots to medium telephoto.","Compact: While larger than standard zooms, its size is manageable for its performance.","A professional-grade lens offering high-quality optics for both photography and videography."]',0);

insert into products values(11,"Sony fe 85mm","Lense",2500.0,"The Sony FE 85mm f/1.4 GM lens is a premium portrait lens designed for Sony’s full-frame mirrorless cameras, offering exceptional optical performance and beautiful bokeh.",
        '["Focal Length & Aperture: The 85mm focal length with a wide f/1.4 aperture is ideal for portraits, low-light conditions, and creating stunning background bokeh with a shallow depth of field.","G Master Design: Featuring advanced XA and ED elements to reduce chromatic aberrations, this lens delivers sharp, high-contrast, and clear images.","Fast, Quiet Autofocus: The Direct Drive SSM motor ensures quick, precise, and silent autofocus, making it ideal for both stills and video.","Build & Portability: With a weather-sealed, durable build, the lens is compact and lightweight, making it perfect for on-the-go photographers.","Versatility: While excelling in portraiture, it’s also great for close-ups, events, and general photography, providing high-quality image performance in a variety of situations."," The Sony FE 85mm f/1.4 GM is an outstanding lens for photographers seeking top-tier image quality, smooth bokeh, and fast autofocus in a compact, durable design."]',0);
        
insert into products values(12,"Shougun","Accessories",2500.0,"The Atomos Shogun series is a line of external video recorders and monitors that enhance video recording capabilities for filmmakers and videographers.",
        '["High-Quality Recording & Professional Formats: Records 4K, ProRes, DNxHR, and RAW formats, offering better image quality by bypassing internal camera compression. Supports formats like Apple ProRes, ProRes RAW, Avid DNxHR, and H.265/HEVC for greater bit depth and color accuracy.","High-Resolution Monitor & HDR Support: Features a large 7-inch HDR touchscreen display for precise focus, exposure, and framing. HDR capabilities enhance contrast and color, making it ideal for HDR content creation.","SSD Storage & Connectivity: Uses removable SSDs for fast read/write speeds and offers HDMI and SDI inputs/outputs, providing compatibility with a wide range of cameras, including DSLR, mirrorless, and cinema cameras.","Power Options: Can be powered by Sony NP-F series batteries, DC inputs, or external power sources.","Popular Atomos Shogun Models include the Shogun CONNECT with cloud-based collaboration, the Shogun 7 with Dolby Vision support, and the Shogun Inferno supporting 4K60p recording."]',0);
        
insert into products values(13,"cMotion","Accessories",2000.0,"cMotion is an Austrian company specializing in wireless lens control systems for professional film and television production, offering high-precision equipment for remote focus, iris, and zoom (FIZ) control.",
        '["Wireless Lens Control: Allows focus pullers to remotely adjust focus, zoom, and aperture without physically interacting with the camera.","Modular and Customizable: Systems are modular, enabling users to tailor setups for different production needs.","High Precision & Reliability: Known for accurate, fast response times, ideal for professional cinematography.","Camera Compatibility: Works seamlessly with industry-standard cinema cameras from ARRI, RED, Sony, Canon, and Blackmagic.","Widely Used in Professional Productions: cMotion systems are trusted on Hollywood films, TV shows, and commercials for precise focus pulling.","Popular Products include the cPRO (compact wireless focus control system), cvolution (multi-axis lens control for complex shots), and cforce Motors (motors for controlling focus, zoom, and iris)."]',0);
        
insert into products values(14,"Teradek","Accessories",1200.0,"Teradek is a leading company that specializes in wireless video transmission, monitoring, and camera control systems for film, television, and live streaming. Their products are essential for professional cinematography, broadcasting, and content creation.",
        '["Wireless Video Transmission: The Bolt series offers zero-latency, high-quality wireless video transmission, including the Bolt 4K for uncompressed 4K HDR video and the Bolt 6 for improved reliability in crowded environments.","Camera Control & Wireless Follow Focus: Teradek’s RT systems allow wireless control of focus, iris, and zoom (FIZ), including the Smart 3 for professional cinema cameras and the CTRL.3 for a compact focus-pulling solution.","Camera Control & Wireless Follow Focus: Teradek’s RT systems allow wireless control of focus, iris, and zoom (FIZ), including the Smart 3 for professional cinema cameras and the CTRL.3 for a compact focus-pulling solution.","Wireless Video Streaming & Encoding: Teradek encoders like the Vidiu X and Prism Flex enable high-quality live streaming and IP video encoding for professional broadcasts.","Cloud-Based Video Production: Platforms like Core and Live:Air support cloud-based video switching, remote production, and multi-camera streaming."]',0);
       
insert into products values(15,"Eazy Rig","Accessories",3500.0,"Easyrig is a camera support system that reduces strain by distributing the camera's weight from the arms to the hips and back, providing stability and flexibility during handheld shooting.",
        '["Ergonomic Design: Transfers weight for reduced fatigue and supports cameras from 5 lbs to 55 lbs.","Smooth Movements: Ensures stable, shake-free handheld shots with natural motion.","Camera Compatibility: Works with DSLRs, mirrorless, and heavy cinema rigs.","Uses: Ideal for documentary filmmakers, event videographers, and Hollywood cinematographers."]',0);
       
insert into products values(16,"Sound 4 laple","Accessories",3000.0,"Lapel Microphones (Lavalier Microphones) are compact, clip-on mics designed for hands-free use, commonly used in filmmaking, interviews, public speaking, and live events.",
        '["Wired: Directly connected to recording devices, offering simplicity but limited mobility","Wireless: Battery-powered transmitters enable greater freedom of movement, ideal for video production and events.","Used in film and TV production, interviews, public speaking, and live events for clear, professional audio without bulky equipment."]',0);
      
insert into products values(17,"Zoom Recorder","Accessories",1000.0,"Zoom Recorders are portable, high-quality audio devices used in filmmaking, podcasting, interviews, and music production. Known for versatility and excellent sound, Zoom offers models like the H1n, H4n Pro, H5, H6, and F6, each with varying features like multi-track recording and interchangeable microphones.",
        '["Portability: Lightweight and battery-powered for field use.","High-Quality Audio: 24-bit/96kHz recording for professional sound.","Versatility: Ideal for interviews, music, and filmmaking.","User-Friendly: Easy-to-use interface and built-in microphones.","Who Uses It?: Filmmakers, podcasters, musicians, journalists, and content creators rely on Zoom recorders for capturing professional audio in various settings."]',0);
              
insert into products values(18,"Jimi Jib","Accessories",15000.0,"A Jib is a camera crane used in filmmaking to achieve smooth, dynamic shots such as high-angle sweeps and transitions. It consists of a long arm that holds the camera, balanced by counterweights for stable movement. Jibs can be operated manually or motorized for precise control.",
        '["Used in filmmaking, music videos, live events, and commercials for cinematic, smooth camera movements","JonyJib, Kessler Crane, Glidecam, and EZFX Jibs offer versatile, high-quality options for various filming needs.","Why Use a Jib?: Provides creative flexibility with dynamic, polished camera movements that are hard to achieve with handheld setups or tripods."]',0);
              
insert into products values(19,"Ronin M2","Accessories",9000.0,"The DJI Ronin M2 is a compact 3-axis gimbal stabilizer designed for filmmakers and content creators, offering smooth, cinematic footage with mirrorless, DSLR, and small cinema cameras. It features advanced stabilization algorithms for precise control during dynamic movements and provides multiple shooting modes, including Pan Follow, Lock, and Sport Mode.",
        '["3-Axis Stabilization: Ensures smooth footage by compensating for unwanted camera movements.","Lightweight and Portable: Weighs 1.5 kg, making it easy to carry and use for extended periods.","Camera Compatibility: Supports cameras with payloads from 1 to 4.5 kg.","Long Battery Life: Offers up to 10 hours of use on a single charge.","Multiple Control Modes: Includes features like Pan Follow, Lock, and FPV Mode for creative flexibility.","Wireless Remote Control: Allows precise adjustments from a distance.","ActiveTrack: Built-in tracking to automatically follow moving subjects.","Applications: Ideal for filmmaking, documentary production, live events, and music videos, providing stable footage in various filming conditions. Who Uses the Ronin M2?: Professional filmmakers, videographers, YouTubers, and event videographers looking for smooth, high-quality footage in dynamic environments."]',0);
        
insert into products values(20,"Ronin R2","Accessories",12000.0,"The DJI Ronin 2 is a professional 3-axis gimbal designed for high-end filmmaking, supporting heavy rigs like cinema cameras. It offers smooth stabilization, even in dynamic environments, with a 30 lb (13.6 kg) payload capacity.",
        '["Supports heavy rigs with advanced stabilization and Auto-Tune for optimized performance.","OLED touch screen, wireless control, and ActiveTrack for automated tracking.","Dual batteries providing up to 12 hours of operation, with hot-swappable capability.","Robust, all-terrain design with modular adaptability for various setups.","Applications: Perfect for film productions, commercials, documentaries, and live events, ensuring professional-grade, stable footage. Who Uses It?: Cinematographers, filmmakers, production teams, and content creators needing high-precision stabilization for heavy gear.","Built-in GPS and IMU for precise motion tracking and 3D focus."]',0);
              
insert into products values(21,"Sony A7s MII  with G series Lens 16-35mm","Combo",5500.0,"Sony A7S II + Sony 16-35mm f/4 G Lens – Low-Light & Video Powerhouse The Sony A7S II with the Sony 16-35mm f/4 G Lens is a top choice for filmmakers, travel vloggers, and landscape photographers, offering exceptional low-light performance, 4K video, and wide-angle versatility.",
        '["Sony A7S II: 12.2 MP full-frame sensor, ISO up to 409600, 5-axis stabilization, 4K video (no pixel binning), and S-Log2/S-Log3 for professional color grading.","16-35mm f/4 G Lens: Sharp, ultra-wide zoom, Optical SteadyShot (OSS), fast autofocus, and minimal distortion for landscapes, travel, and vlogging.","Best for: Low-light shooting, filmmaking, travel, and architecture. If you need more megapixels or better autofocus, consider the Sony A7S III or A7R IV."]',0);
              
insert into products values(22,"Sony A7s MII  with G series Lens 28-80mm","Combo",6500.0,"Sony A7S II + Sony 28-80mm f/3.5-5.6 G Lens – Versatile Video & Photography Setup. The Sony A7S II paired with the Sony 28-80mm G Lens offers excellent low-light performance, 4K video capabilities, and a flexible zoom range, making it ideal for videography, portraits, and general photography.",
        '["Sony A7S II: 12.2 MP full-frame sensor, ISO up to 409600, 5-axis stabilization, 4K video (no pixel binning), and S-Log2/S-Log3 for professional color grading.","28-80mm f/3.5-5.6 G Lens: Wide to short telephoto zoom, Optical SteadyShot (OSS) for handheld shooting, fast autofocus, and lightweight build for everyday use.","Best for: Filmmakers, event coverage, portraits, and travel photography. If you need better low-light performance or faster apertures, consider a f/2.8 zoom or prime lens like the Sony 24-70mm f/2.8 GM."]',0);
              
insert into products values(23,"Camera Sony A7s MII  with G series Lens 100-400mm","Combo",9500.0,"Sony A7S II + Sony 100-400mm f/4.5-5.6 G Lens – Ultimate Telephoto Setup. The Sony A7S II, known for its exceptional low-light performance, 4K video recording, and 5-axis in-body stabilization, pairs perfectly with the Sony 100-400mm G Lens, delivering sharp telephoto reach for wildlife, sports, and event photography.",
        '["Sony A7S II: 12.2 MP full-frame sensor, ISO up to 409600, 4K video with S-Log, and 5-axis stabilization for handheld shooting.","100-400mm f/4.5-5.6 G Lens: Super-telephoto zoom, fast autofocus with Dual XD Linear Motors, Optical SteadyShot (OSS) for stability, and weather sealing for outdoor conditions.","Best for: Wildlife, sports, and event photography, as well as videography requiring a stabilized, long-range lens. If you need faster autofocus or higher resolution, consider pairing this lens with the Sony A7R IV or A9 II."]',0);
            
           
ALTER TABLE products ADD COLUMN imgurl JSON NOT NULL;
           
UPDATE products SET imgurl = '["Red_helium1.jpg"]' WHERE product_id = 1;
UPDATE products SET imgurl = '["red_dragon5.jpg"]' WHERE product_id = 2;
UPDATE products SET imgurl = '["red_rapter.jpeg"]' WHERE product_id = 3;
UPDATE products SET imgurl = '["venice2.jpg"]' WHERE product_id = 4;
UPDATE products SET imgurl = '["sigma_prime_lens1.jpg"]' WHERE product_id = 5;
UPDATE products SET imgurl = '["ultra_prime_lens2.jpg"]' WHERE product_id = 6;
UPDATE products SET imgurl = '["suprime_prime_lens.jpg"]' WHERE product_id = 7;
UPDATE products SET imgurl = '["Sony_18-105mm_lens.jpg"]' WHERE product_id = 8;
UPDATE products SET imgurl = '["Sony_Fe_70-200mm_lens_1.jpg"]' WHERE product_id = 9;
UPDATE products SET imgurl = '["Sony_Fe_24-70mm_lens.webp"]' WHERE product_id = 10;
UPDATE products SET imgurl = '["Sony_Fe_85mm_lens.jpg"]' WHERE product_id = 11;
UPDATE products SET imgurl = '["shougun.jpeg"]' WHERE product_id = 12;
UPDATE products SET imgurl = '["c_motion.jpeg"]' WHERE product_id = 13;
UPDATE products SET imgurl = '["teradek2.jpg"]' WHERE product_id = 14;
UPDATE products SET imgurl = '["easy_rig_1.jpg"]' WHERE product_id = 15;
UPDATE products SET imgurl = '["lapel.webp"]' WHERE product_id = 16;
UPDATE products SET imgurl = '["zoom_recorder2.jpg"]' WHERE product_id = 17;
UPDATE products SET imgurl = '["jib1.jpg"]' WHERE product_id = 18;
UPDATE products SET imgurl = '["ronin_m21.jpg"]' WHERE product_id = 19;
UPDATE products SET imgurl = '["ronin_r22.jpg"]' WHERE product_id = 20;
UPDATE products SET imgurl = '["Sony_A7SmII.jpeg"]' WHERE product_id = 21;
UPDATE products SET imgurl = '["Sony_A7SmII.jpeg"]' WHERE product_id = 22;
UPDATE products SET imgurl = '["Sony_A7SmII.jpeg"]' WHERE product_id = 23;
UPDATE products SET imgurl = '["lapel.jpg"]' WHERE product_id = 16;
UPDATE products SET imgurl = '["Sony_Fe_24-70mm_lens.jpg"]' WHERE product_id = 10;
    select*from customer;
    
CREATE TABLE orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT NOT NULL,
    contact varchar(11) Not NULL,
    email VARCHAR(255) NOT NULL,
    address TEXT NOT NULL,
    total_price DECIMAL(10,2) NOT NULL,
    stat int NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE order_items (
    order_item_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT NOT NULL,
    product_name Varchar(255) NOT NULL,
    rental_days INT NOT NULL,
    quantity INT NOT NULL,
    price bigint NOT NULL,
    FOREIGN KEY (order_id) REFERENCES orders(order_id) ON DELETE CASCADE
);
CREATE TABLE transactions (
    id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT NOT NULL,
    transaction_id VARCHAR(100) NOT NULL,
    receipt_image LONGBLOB, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (order_id) REFERENCES orders(order_id) ON DELETE CASCADE
);


desc Orders;
drop table orders;
drop table order_items;
drop table transactions;
truncate table orders;
truncate table order_items;
truncate table transactions;


select* from orders;

SELECT 
    o.order_id, 
    o.customer_id, 
    o.total_price, 
    o.address, 
    o.contact, 
    o.stat,
    JSON_ARRAYAGG(
        JSON_OBJECT(
            'product_name', i.product_name, 
            'rental_days', i.rental_days, 
            'quantity', i.quantity, 
            'price', i.price
        )
    ) AS items 
FROM orders o
LEFT JOIN order_items i ON o.order_id = i.order_id
LEFT JOIN transactions t ON o.order_id = t.order_id
WHERE o.stat != 1
GROUP BY o.order_id;

UPDATE orders SET stat = 0 WHERE order_id = 6;


SELECT o.order_id, o.customer_id, o.total_price, o.address, o.contact, o.stat, t.transaction_id,
       JSON_ARRAYAGG(
            JSON_OBJECT('product_name', i.product_name, 'rental_days', i.rental_days, 'quantity', i.quantity, 'price', i.price)
       ) AS items
FROM orders o
LEFT JOIN order_items i ON o.order_id = i.order_id
LEFT JOIN transactions t ON o.order_id = t.order_id
WHERE o.stat != 1 
GROUP BY o.order_id, t.transaction_id;

select* from products;


create table feedback(feedbid int primary key auto_increment, customer_id int not null, feed text not null, date_time timestamp default current_timestamp);
alter table feedback add column stat int default 0;
select* from feedback;
drop table feedback;
SELECT c.id, c.username, c.email, c.phone, c.address , f.feed,f.date_time from customer as c join feedback as f on c.id=f.customer_id where f.stat!=1;

alter table orders add column Status_reason varchar(255) not null;
select* from orders;student
