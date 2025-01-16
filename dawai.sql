-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 02, 2024 at 02:17 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dawai`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `getcat` (IN `cid` INT)   SELECT * FROM categories WHERE cat_id=cid$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `admin_info`
--

CREATE TABLE `admin_info` (
  `admin_id` int(10) NOT NULL,
  `admin_name` varchar(100) NOT NULL,
  `admin_email` varchar(300) NOT NULL,
  `admin_password` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin_info`
--

INSERT INTO `admin_info` (`admin_id`, `admin_name`, `admin_email`, `admin_password`) VALUES
(1, 'admin', 'admin@gmail.com', 'admin'),
(2, 'ali', 'ali@gmail.com', 'Admin1234'),
(3, 'admin', 'abc@gmail.com', 'Abc12345'),
(5, 'admin', 'admin3@gmail.com', 'Admin1234');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(100) NOT NULL,
  `brand_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES
(1, 'Hilton Pharma'),
(2, 'Searle'),
(3, 'Abott'),
(4, 'Martin Dow'),
(5, 'GSK'),
(6, 'Munawar Pharma');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(10) NOT NULL,
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(250) NOT NULL,
  `user_id` int(10) DEFAULT NULL,
  `qty` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(100) NOT NULL,
  `cat_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'Herbal'),
(2, 'Skin Care'),
(3, 'Baby Care'),
(4, 'Health Care'),
(5, 'Personal Care'),
(6, 'Organic'),
(7, 'Surgical Kit');

-- --------------------------------------------------------

--
-- Table structure for table `email_info`
--

CREATE TABLE `email_info` (
  `email_id` int(100) NOT NULL,
  `email` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `email_info`
--

INSERT INTO `email_info` (`email_id`, `email`) VALUES
(3, 'admin@gmail.com'),
(4, 'ali@gmail.com'),
(5, 'taqi@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `action` varchar(50) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `trx_id` varchar(255) NOT NULL,
  `p_status` tinyint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `user_id`, `product_id`, `qty`, `trx_id`, `p_status`) VALUES
(2, 14, 2, 1, '07M47684BS5725041', 1),
(3, 14, 25, 4, '37585969dft5y5', 0);

-- --------------------------------------------------------

--
-- Table structure for table `orders_info`
--

CREATE TABLE `orders_info` (
  `order_id` int(10) NOT NULL,
  `user_id` int(11) NOT NULL,
  `f_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `zip` int(10) NOT NULL,
  `prod_count` int(15) DEFAULT NULL,
  `total_amt` int(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `orders_info`
--

INSERT INTO `orders_info` (`order_id`, `user_id`, `f_name`, `email`, `address`, `city`, `state`, `zip`, `prod_count`, `total_amt`) VALUES
(1, 12, 'ali', 'ali@gmail.com', 'phase 2, gulberg', 'Lahore', 'Punjab', 560074, 3, 77000),
(2, 12, 'ali haider', 'ali@gmail.com', '123456789', 'Lahore', 'Punjab', 560074, 1, 0),
(3, 12, 'ali haider', 'ali@gmail.com', '123456789', 'lahore', 'Punjab', 560074, 1, 0),
(4, 12, 'ali haider', 'ali@gmail.com', '123456789', 'Lahore', 'Punjab', 560074, 1, 0),
(5, 12, 'Ahmed Ali', 'ali@gmail.com', 'Lahore, St 39/B', 'Lahore', 'Punjab', 560074, 1, 0),
(6, 12, 'Ahmed Ali', 'ali@gmail.com', 'Lahore, St 39/B', 'Lahore', 'Punjab', 560074, 1, 0),
(7, 12, 'Ahmed Ali', 'ali@gmail.com', 'Lahore, St 39/B', 'Lahore', 'Punjab', 560074, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `order_products`
--

CREATE TABLE `order_products` (
  `order_pro_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(15) DEFAULT NULL,
  `amt` int(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `order_products`
--

INSERT INTO `order_products` (`order_pro_id`, `order_id`, `product_id`, `qty`, `amt`) VALUES
(1, 0, 0, 1, 5000),
(2, 0, 0, 2, 64000),
(3, 0, 0, 1, 40000),
(4, 5, 99, 1, 189),
(5, 6, 97, 1, 300),
(6, 7, 98, 1, 450);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(100) NOT NULL,
  `product_cat` int(100) NOT NULL,
  `product_brand` int(100) NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_price` int(255) NOT NULL,
  `product_desc` text NOT NULL,
  `product_image` text NOT NULL,
  `product_keywords` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_cat`, `product_brand`, `product_title`, `product_price`, `product_desc`, `product_image`, `product_keywords`) VALUES
(97, 4, 2, 'Panadol Tablet', 300, 'Panadol can be used for relieving fever and/or for the treatment of mild to moderate pain including headache, migraine, muscle ache, dysmenorrhea, sore throat, musculoskeletal pain and pain after dental procedures/ tooth extraction, toothache and pain of osteoarthritis.\r\n\r\n', '1714637204_images (1).jpeg', 'Paracetamol / Panadol Extra'),
(98, 4, 1, 'Gas-X Extra', 450, 'One package of 72 cherry-flavored Gas-X Extra Strength Chewable Gas Relief Tablets with Simethicone 125 mg for bloating and gas relief; number 1 Anti-Gas Relief Brand', '1714637483_71Qh6EgiGJL._AC_SX569_.jpg', 'Gas-X / Chewable Gas Relief Tablets'),
(99, 4, 5, 'Proton 20 mg 14 Tablet', 189, 'Pantoprazole is a medication that belongs to a class of medications known as ”proton pump inhibitors”. It is used for the short-term treatment of adult patients with reflux signs and symptoms, like, regurgitation and heartburn.', '1714637766_enbase_image100024288.png', 'Pantoprazole 20 mg Gastro-resistant Tablets'),
(100, 5, 5, 'Peptazol Capsule 15mg', 980, 'Peptazol 15mg is an effective treatment for cases of heartburn and acid reflux.\r\nPeptazol is a medication that belongs to a class of medicines called “proton pump inhibitors”.', '1714640508_download (1).jpeg', 'Peptazol 15 mg Capsule 14pcs'),
(101, 3, 5, 'Bona Papa Plus Economy - Medium Diapers 50 Pcs. Pack Pcs', 1590, 'Bona Papa Plus Economy Diapers are specially designed keeping in mind baby’s delicate skin. These diapers are made from skin-friendly material that protects the baby’s skin from rashes. With a high-quality waistband, that fits optimally, and extra absorbent making, the Bona Papa Plus Economy Diapers are an ideal choice for babies.', '1714640645_bon47156_1711533540_1.png', 'Bona Papa Plus Economy - Medium Diapers 50 Pcs. Pack Pcs'),
(103, 3, 6, 'JOHNSON’S 2-in-1 Kids', 950, 'Johnson’s 2 in 1 kids shampoo and conditioner is uniquely formulated to provide gentle cleansing and conditioning to the kid’s hair. It makes the hair soft and easy to comb, even on long or curly hair. It is designed under the supervision of dermatologists without harmful chemicals to prevent the risk of allergies, and a no-tear formula making it suitable for the kid’s hair and scalp.', '1714641674_joh46619_1628251625_1.png', 'JOHNSON’S 2-in-1 Kids Shampoo & Conditioner 200 ml Bottle liquid'),
(104, 3, 5, 'Mothercare Pink Lotion', 115, 'Mothercare Baby Lotion soap is particularly designed to take care of a baby’s delicate skin. It has a unique formula that cleanses a baby’s skin gently yet effectively. Baby Lotion soap has a delicate floral fragrance which leaves your baby smelling clean and fresh all day long. It is enriched with 1/4th baby lotion and vitamin E which make a baby’s skin silky, soft, and smooth. Mothercare Baby Lotion soap nourishes and moisturizes a baby’s skin.', '1714642183_motmot47559_1638432069_1.png', 'Mothercare Pink Lotion Regular Baby Soap 80 gm Pack soap'),
(105, 5, 7, 'Parodontax original toothpaste', 315, '-Sodium fluoride.\r\n-Toothpaste for bleeding gums, 100gm.\r\n-For children above 12 years of age.\r\n-Helps stop bleeding gums, strengthens teeth, makes gums healthier, and prevents the formation of cavities.', '1714642469_gskpar918_1643799535_3.png', 'Oral Hygiene'),
(106, 4, 1, 'Certeza Blood Pressure Monitor (BM-407)', 4090, 'The Certeza Blood Pressure Monitor BM-407 is a digital device that accurately measures blood pressure. It also measures the pulse and heart rate.\r\nGet this product at Dawaai, offering the most reasonable prices in Pakistan.', '1714642576_cercer43747_1.png', 'Medical Equipment'),
(107, 1, 7, 'Hamdard Sharbat-e- Toot Siyah 120ml liquid', 100, '-Quantity: 120ml -Provides prompt relief from chest congestion -Effective for inflammation and pain -Improves pitch of voice and hoarseness\r\n\r\n', '1714643301_product03.png', 'Hmadard'),
(108, 2, 7, 'Booster Moisturizing Sheet Mask', 1425, 'This aqua booster sheet mask is designed for all skin types especially for dry skin after acne treatments. It comes as a cotton sheet mask with watermelon print that allows skin to breathe. It contains beneficial ingredients derived straight from the nature like watermelon & pineapple extract and plant bio ferment. It soothes irritation, deeply moisturizes, nourishes and brightens the skin complexion. It also fights with the free radicals and has an antioxidant effect.', '1714647053_und46842_1629719747_1.png', 'Under 20 Aqua Booster Moisturizing Sheet Mask 1 Pcs. Pack face mask'),
(109, 2, 7, 'Under 20 Aqua Booster Moisturizing Sheet Mask', 1425, 'This sheet mask is designed for combination and oily skin. It comes as a sheet mask with a kiwi print that allows the skin to breath and puts you in a good mood. It contains beneficial ingredients like kiwi extracts and cucumber extracts. This sheet mask is found to be effective in the regulation of sebaceous gland and hence supports cell regeneration and soothes the irritation on your skin. This mask deeply moisturizes and cleanses your face.', '1714647150_und46843_1629719678_1.png', 'Under 20 Aqua Booster Moisturizing Sheet Mask 1 Pcs. Pack face mask'),
(110, 2, 5, 'B5 Hydrating Serum 30 ml Bottle serum', 3087, ' The Hudson B15 Serum provides all the benefits of a daily moisturizer with enhanced benefits to achieve that radiant, smooth, and even-toned skin. Enriched with ultra-hydrating vitamin B5 and the body’s natural hydrator, hyaluronic acid, this serum penetrates into your skin and instantly replenishes it. The powerful combination of vitamin B5 and hyaluronic acid has anti-aging and moisture-locking properties that help repair fine lines, wrinkles, and dull skin.', '1714647227_hudb5s49582_1662125014_1.png', 'B5 Hydrating Serum 30 ml Bottle serum'),
(111, 6, 8, 'Hamdard Khuban 175ml liquid', 175, '-Citrus spp., Ficus carica, Phoenix dactylifera, Prunus armeniaca, and domestica\r\n-Herbal syrup, 175ml\r\n-For adults and children\r\n-Syrup with energising and nutritional properties of natural ingredients, increases appetite, boosts the metabolism, and increases physical stamina', '1714647404_hamham43331_1658476496_2.png', 'Homeopathic'),
(112, 6, 8, 'Hamdard Khamira Gaozaban Sada 100 Gram', 189, '-Natural ingredients, such as Gaozaban, Sandal, and honey\r\n-100 grams\r\n-Adults: 5-10 grams with water twice a day, Children: 1-3 grams with water twice a day\r\n-Strengthens the heart, brain, and gastrointestinal tract. Protects against psychotic disorders, such as delirium, and helpful in catarrh, flu, and chronic cough', '1714647503_hamham43329_1658476456_2.png', 'Hamdard Khamira, Homeopathic'),
(113, 1, 6, 'Hamdard Roghan-e-Badam Sheerin 25ml liquid', 320, 'Prunus Amygdalus.\r\n-Unani medicine, 25ml.\r\n-For adults and children.\r\n-Highly nutritional product with benefits of sweet almonds for the healthy development of the brain, it is effective for constipation and insomnia.', '1714647591_hamham43339_1656675150_2.png', 'Hamdard Roghan-e-Badam Sheerin 25ml liquid'),
(114, 7, 3, 'First Aid Box', 4580, 'Dawaai First Aid box includes all essentials to treat cuts and wounds \r\nFirst Aid box includes cotton bandages, band-aids, scissors, Pyodine, and cotton wool\r\nOTC medicines like Panadol, Dispirin, and ORS are also available in the box\r\nThe following products : Johar Joshanda and pulmunol lozenges are also part of the box.\r\nPortable and can be carried with ease anywhere you go.', '1714647738_fir576_1628749946_4.png', 'First Aid Box'),
(115, 7, 3, 'YMS Uriflo Junior (Leg Bag) 750ml', 60, '.', '1714647878_ymsyms37951_1.png', 'Hospital Supplies');

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `user_id` int(10) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address1` varchar(300) NOT NULL,
  `address2` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`user_id`, `first_name`, `last_name`, `email`, `password`, `mobile`, `address1`, `address2`) VALUES
(12, 'Ahmed', 'Ali', 'ali@gmail.com', 'haider1234', '9232445535', 'Lahore, St 39/B', 'Lahore');

--
-- Triggers `user_info`
--
DELIMITER $$
CREATE TRIGGER `after_user_info_insert` AFTER INSERT ON `user_info` FOR EACH ROW BEGIN 
INSERT INTO user_info_backup VALUES(new.user_id,new.first_name,new.last_name,new.email,new.password,new.mobile,new.address1,new.address2);
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `user_info_backup`
--

CREATE TABLE `user_info_backup` (
  `user_id` int(10) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address1` varchar(300) NOT NULL,
  `address2` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user_info_backup`
--

INSERT INTO `user_info_backup` (`user_id`, `first_name`, `last_name`, `email`, `password`, `mobile`, `address1`, `address2`) VALUES
(12, 'puneeth', 'Reddy', 'puneethreddy951@gmail.com', '123456789', '9448121558', '123456789', 'sdcjns,djc'),
(14, 'hemanthu', 'reddy', 'hemanthreddy951@gmail.com', '123456788', '6526436723', 's,dc wfjvnvn', 'b efhfhvvbr'),
(15, 'hemu', 'ajhgdg', 'keeru@gmail.com', '346778', '536487276', ',mdnbca', 'asdmhmhvbv'),
(16, 'venky', 'vs', 'venkey@gmail.com', '1234534', '9877654334', 'snhdgvajfehyfygv', 'asdjbhfkeur'),
(19, 'abhishek', 'bs', 'abhishekbs@gmail.com', 'asdcsdcc', '9871236534', 'bangalore', 'hassan'),
(20, 'pramod', 'vh', 'pramod@gmail.com', '124335353', '9767645653', 'ksbdfcdf', 'sjrgrevgsib'),
(21, 'prajval', 'mcta', 'prajvalmcta@gmail.com', '1234545662', '202-555-01', 'bangalore', 'kumbalagodu'),
(22, 'puneeth', 'v', 'hemu@gmail.com', '1234534', '9877654334', 'snhdgvajfehyfygv', 'asdjbhfkeur'),
(23, 'hemanth', 'reddy', 'hemanth@gmail.com', 'Puneeth@123', '9876543234', 'Bangalore', 'Kumbalagodu'),
(24, 'newuser', 'user', 'newuser@gmail.com', 'puneeth@123', '9535688928', 'Bangalore', 'Kumbalagodu'),
(25, 'otheruser', 'user', 'otheruser@gmail.com', 'puneeth@123', '9535688928', 'Bangalore', 'Kumbalagodu');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_info`
--
ALTER TABLE `admin_info`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `email_info`
--
ALTER TABLE `email_info`
  ADD PRIMARY KEY (`email_id`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `orders_info`
--
ALTER TABLE `orders_info`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `order_products`
--
ALTER TABLE `order_products`
  ADD PRIMARY KEY (`order_pro_id`),
  ADD KEY `order_id_fk` (`order_id`),
  ADD KEY `product_id_fk` (`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_info_backup`
--
ALTER TABLE `user_info_backup`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_info`
--
ALTER TABLE `admin_info`
  MODIFY `admin_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `email_info`
--
ALTER TABLE `email_info`
  MODIFY `email_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `orders_info`
--
ALTER TABLE `orders_info`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `order_products`
--
ALTER TABLE `order_products`
  MODIFY `order_pro_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `user_info_backup`
--
ALTER TABLE `user_info_backup`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders_info`
--
ALTER TABLE `orders_info`
  ADD CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `user_info` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
