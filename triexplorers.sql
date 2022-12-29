-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 29, 2022 at 03:00 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `triexplorers`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `sno` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone_num` varchar(50) NOT NULL,
  `msg` text NOT NULL,
  `date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`sno`, `name`, `email`, `phone_num`, `msg`, `date`) VALUES
(1, 'shubam', 'su@gmail.com', '03333333333', 'checking form', NULL),
(8, 'shubam', 'efwq@gmail.com', '2222222222', 'send email checking', '2022-12-16 13:29:10'),
(11, 'shubam', 'efwq@gmail.com', '', 'checking\r\n', '2022-12-21 16:03:50');

-- --------------------------------------------------------

--
-- Table structure for table `customform`
--

CREATE TABLE `customform` (
  `sno` int(50) NOT NULL,
  `name` text NOT NULL,
  `number` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `cityres` text NOT NULL,
  `visitplace` text NOT NULL,
  `traveldate` datetime NOT NULL,
  `tourtype` text NOT NULL,
  `adult` int(11) NOT NULL,
  `child` int(11) NOT NULL,
  `infant` int(11) NOT NULL,
  `duration` int(11) NOT NULL,
  `vehicle` text NOT NULL,
  `Itinerary` text NOT NULL,
  `further` text NOT NULL,
  `personal` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customform`
--

INSERT INTO `customform` (`sno`, `name`, `number`, `email`, `cityres`, `visitplace`, `traveldate`, `tourtype`, `adult`, `child`, `infant`, `duration`, `vehicle`, `Itinerary`, `further`, `personal`) VALUES
(1, 'shubam', '12342345235', 'su@gmail.com', 'kkarchi', 'skrdu', '2022-12-30 00:00:00', 'honeymoon', 2, 0, 0, 6, 'toyota corola car', 'this is itienray', 'further id here', 'on');

-- --------------------------------------------------------

--
-- Table structure for table `package`
--

CREATE TABLE `package` (
  `sno` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `category` text NOT NULL,
  `days` text NOT NULL,
  `content` text NOT NULL,
  `image` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `package`
--

INSERT INTO `package` (`sno`, `name`, `category`, `days`, `content`, `image`) VALUES
(1, 'Skardu 7 days', 'family tour', '7days', 'We are invite you for __ Days Trip to SKARDU VALLEY – DEOSAI - SHANGRILA RESORT - MANTOKHA WATERFALL & More\nLet\'s Discover to see the North of Pakistan with Tri Explorers.                                         \nWe ensure to give you a family friendly environment on the whole journey.\n\n▶️ 𝗗𝘂𝗿𝗮𝘁𝗶𝗼𝗻: __ Days & __ Nights Hotels\n\n• Pick Up Point\n(Address)______\n\n\n❇️ Places to be Covered:\n• Mansehra\n• Hazara Motorway\n• 3 Mountain Junction\n• Jaglot\n• Shangrila Resort\n• Nanga Parbat View Point\n• Mantokha Waterfall\n• Shigar Valley\n• Sarfarnga Cold Desert\n• Upper Kachura Lake\n• Lower Kachura Lake\n• Sadpara Dam\n• Katapna Desert\n• Katapna Lake\n• Sadpara Lake\n• Deosai Plains\n• Bara Pani & Chota Pani\n• Sheosar Lake\n• Shigar Fort\n• Naran\n• Kiwai\n• Batakundi\n• Lulusar Lake\n• Babusar Top\n• Zero Point\n\nTRIP PLAN.\nDay 00\n[Departure From LHR (Thokar Niaz Baig)]\n\nDay 01\n[Members Pickup from ISB (I8 Markaz Habibi Restaurant)\nBreakfast at Balakot \nVisit Naran\nDinner & Overnight Stay @ Chillas]\n\nDay 02\n[Breakfast Call at 6am\nLeave For Skardu \nVisit 3 Mountain JC Point\nVisit Nanga Parbat Point\nVisit Shangrila Resort\nVisit Upper Kachura Lake\nVisit Lower Kachura Lake \nDinner & Overnight Stay @ Skardu]\n\nDay 03\n[Breakfast call at 7am\nVisit Mantokha Waterfall\nVisit Sarfarnga Cold Desert\nVisit Shigar Valley\nVisit Shigar Fort\nDinner & Overnight Stay @ Skardu]\n\nDay 04\n[Breakfast call at 6am\nVisit Deosai Plains\nVisit Sadpara Lake\nVisit Sadpara Dam\nVisit Bara Pani & Chota Pani\nVisit Sheosar Lake\nDinner & Overnight Stay @ Skardu]\n\n Day 5\n[Breakfast Call @ 6am\nVisit Katpana Desert \nVisit Astak Nala (Abshar)\nDinner & Stay Chillas]\n\nDay 6\n[Breakfast Call @ 6am\nLeave for ISB / LHR]\n\n End of services\n\n▶️MEALS MANU\nBreakfast:\n🥞Paratha/Bread + Egg 🍳/Channy/Alo Bujhiya+ Milk Tea☕\nDinner:\nchicken dish with 🍜raita, 🥗salad,\n\n▶️Activities\n▫️Sight-Seeing - 🤳Photography - 🔥Bonfire \n\n❌ SERVICES NOT INCLUDED\n\n• Entry Tickets\n• Jeep Charges not included for any Point during the trip\n• Tea, Mineral water and Cold drinks expense  \n• Extra expenses due to the acts of nature and political reasons etc.\n• Personal insurances of client\n-Tickets of forts, boating , Rafting and parks etc not included.\n\n \n✅ Services included\n\n__ Nights at Hotels  \nBeds + Mattress \nShuffling Criteria on 5 - 6 person sharing\nTaxes\nSaloon Coaster/Grand cabin Up model\nChalans\nToll Taxes (isko exclude krdo)\nFuel Expenses\nDriver Expenses\nTour Guide (ye free services ma daal do alag se)\n\n🔶 Terms and Conditions are Applying\n\n[ NOTE ]\nPlan can be changed a little bit during tour on a request of participants or for their comfort-ability & also due to forced or unexpected circumstances itinerary can be altered at any time in tour.\n[ Equipment List you must carry]\n• Face Mask / Hand Sanitizer / Gloves\n• Casual shoes / Trekking shoes / Softy\n• Cotton trouser and shirts/Ts\n• Jackets / Hoddies / Raincoat\n• Hat / Sun Glases / Umbrella ☂️\n• CNIC ( Identity Card ) [in sb ma sa ghair zaruri cheezy khtm kro]\n\n Children Policy 👩‍👧‍👦👨‍👧‍👦\n• Under 3 Years: Free of Charge ( Lap or on folding seat if available )\n• 3-8 Years: Half Charges ( Folding Seat )\n• 8 plus Years: Full Charges\n\nREMEMBER\nWe travel like a family😍\n\n[ Registration Process ]\n===> Deposit Rs: 5000/Person\n===> Send your proof\n===> Received your receipt of advance payment\n\n[TERMS & CONDITIONS]\n\n1. Must keep a sanitizer with you and use it often remember keep it within easy to reach.\n• Wear a cloth face covering or face mask.\n• If you are ill or feeling sick like temperature, cough, sneezing don\'t join the tour, stay home and stay safe and let other to be safe.\n• Bring enough of your medicine to last you for the entire trip.\n\n2. The members shall not indulge in any unethical activity (misbehavior with locals or other group members, use of abusive language, use of drugs etc) and may be terminated from tour without warning and will not be refunded any amount.\n\n3. No illegal or prohibited items will be allowed during the trip. Weapons are not allowed.\n\n4. On mountainous roads, AC of the vehicle will be on and off to keep the vehicle away from over-heating.\n\n5. Trip Plan can be altered due to weather or political or any other reason deemed appropriate by us in the best interest of participants and organizers will not be held responsible for that.\n\n6. We reserve the right to cancel the trip without prior notice for any reasons deemed appropriate by us and participants will receive full refund of the advance amount only.\n\n7. Every humanly possible care will be taken for the safety of members, still each venture can be fraught with endangers of unforeseen natural disasters like avalanches and crevasse falls or any other accidents and sometimes such disasters cannot be ruled out. In any such type of accident during the whole tour, the company, group leader and the tour organizers will not be held responsible in any form.\n\n8. In case of theft, lost or damage to personal belongings during the trip, organizers will not be held responsible in any case.\n\n9. Cancellation Policy:\na. 48 HRS or less, 100% cancellation charges of the advanced amount apply.\nb. More than 48 HRS – 50% cancellation charges of the advanced amount apply.\nc. 4 days or more – No cancellation charges.\nd. No amount will be refunded if any person leaves the trip at any stage due to any reason.\n\n10. Our trips are environment friendly and no damage to the environment will be tolerated.\n\n11. Our trips are not insured though we exercise the utmost care & safety of all members. We will not be responsible in case of any incident(s) of unforeseen natural calamities like rock/mud sliding, avalanches, slipping/tripping, crevasse falls or any other accidents.\n \n12. No conflict or violence, whether verbal or via action, is allowed during the trips. Respect different cultures, religions, code of practice, beliefs, and political & geographical affiliations. Non-compliance will be dealt strictly.', 'g2.jpg'),
(2, 'Skardu Naran Hunza 7', 'couple tour', '12 days', 'We are invite you for __ Days Trip to SKARDU VALLEY – DEOSAI - SHANGRILA RESORT - MANTOKHA WATERFALL & More\r\nLet\'s Discover to see the North of Pakistan with Tri Explorers.\r\nWe ensure to give you a family friendly environment on the whole journey.\r\n\r\n▶️ 𝗗𝘂𝗿𝗮𝘁𝗶𝗼𝗻: __ Days & __ Nights Hotels\r\n\r\n• Pick Up Point\r\n(Address)______\r\n\r\n\r\n❇️ Places to be Covered:\r\n• Mansehra\r\n• Hazara Motorway\r\n• 3 Mountain Junction\r\n• Jaglot\r\n• Shangrila Resort\r\n• Nanga Parbat View Point\r\n• Mantokha Waterfall\r\n• Shigar Valley\r\n• Sarfarnga Cold Desert\r\n• Upper Kachura Lake\r\n• Lower Kachura Lake\r\n• Sadpara Dam\r\n• Katapna Desert\r\n• Katapna Lake\r\n• Sadpara Lake\r\n• Deosai Plains\r\n• Bara Pani & Chota Pani\r\n• Sheosar Lake\r\n• Shigar Fort\r\n• Naran\r\n• Kiwai\r\n• Batakundi\r\n• Lulusar Lake\r\n• Babusar Top\r\n• Zero Point\r\n\r\nTRIP PLAN.\r\nDay 00\r\n[Departure From LHR (Thokar Niaz Baig)]\r\n\r\nDay 01\r\n[Members Pickup from ISB (I8 Markaz Habibi Restaurant)\r\nBreakfast at Balakot \r\nVisit Naran\r\nDinner & Overnight Stay @ Chillas]\r\n\r\nDay 02\r\n[Breakfast Call at 6am\r\nLeave For Skardu \r\nVisit 3 Mountain JC Point\r\nVisit Nanga Parbat Point\r\nVisit Shangrila Resort\r\nVisit Upper Kachura Lake\r\nVisit Lower Kachura Lake \r\nDinner & Overnight Stay @ Skardu]\r\n\r\nDay 03\r\n[Breakfast call at 7am\r\nVisit Mantokha Waterfall\r\nVisit Sarfarnga Cold Desert\r\nVisit Shigar Valley\r\nVisit Shigar Fort\r\nDinner & Overnight Stay @ Skardu]\r\n\r\nDay 04\r\n[Breakfast call at 6am\r\nVisit Deosai Plains\r\nVisit Sadpara Lake\r\nVisit Sadpara Dam\r\nVisit Bara Pani & Chota Pani\r\nVisit Sheosar Lake\r\nDinner & Overnight Stay @ Skardu]\r\n\r\n Day 5\r\n[Breakfast Call @ 6am\r\nVisit Katpana Desert \r\nVisit Astak Nala (Abshar)\r\nDinner & Stay Chillas]\r\n\r\nDay 6\r\n[Breakfast Call @ 6am\r\nLeave for ISB / LHR]\r\n\r\n End of services\r\n\r\n▶️MEALS MANU\r\nBreakfast:\r\n🥞Paratha/Bread + Egg 🍳/Channy/Alo Bujhiya+ Milk Tea☕\r\nDinner:\r\nchicken dish with 🍜raita, 🥗salad,\r\n\r\n▶️Activities\r\n▫️Sight-Seeing - 🤳Photography - 🔥Bonfire \r\n\r\n❌ SERVICES NOT INCLUDED\r\n\r\n• Entry Tickets\r\n• Jeep Charges not included for any Point during the trip\r\n• Tea, Mineral water and Cold drinks expense  \r\n• Extra expenses due to the acts of nature and political reasons etc.\r\n• Personal insurances of client\r\n-Tickets of forts, boating , Rafting and parks etc not included.\r\n\r\n \r\n✅ Services included\r\n\r\n__ Nights at Hotels  \r\nBeds + Mattress \r\nShuffling Criteria on 5 - 6 person sharing\r\nTaxes\r\nSaloon Coaster/Grand cabin Up model\r\nChalans\r\nToll Taxes (isko exclude krdo)\r\nFuel Expenses\r\nDriver Expenses\r\nTour Guide (ye free services ma daal do alag se)\r\n\r\n🔶 Terms and Conditions are Applying\r\n\r\n[ NOTE ]\r\nPlan can be changed a little bit during tour on a request of participants or for their comfort-ability & also due to forced or unexpected circumstances itinerary can be altered at any time in tour.\r\n[ Equipment List you must carry]\r\n• Face Mask / Hand Sanitizer / Gloves\r\n• Casual shoes / Trekking shoes / Softy\r\n• Cotton trouser and shirts/Ts\r\n• Jackets / Hoddies / Raincoat\r\n• Hat / Sun Glases / Umbrella ☂️\r\n• CNIC ( Identity Card ) [in sb ma sa ghair zaruri cheezy khtm kro]\r\n\r\n Children Policy 👩‍👧‍👦👨‍👧‍👦\r\n• Under 3 Years: Free of Charge ( Lap or on folding seat if available )\r\n• 3-8 Years: Half Charges ( Folding Seat )\r\n• 8 plus Years: Full Charges\r\n\r\nREMEMBER\r\nWe travel like a family😍\r\n\r\n[ Registration Process ]\r\n===> Deposit Rs: 5000/Person\r\n===> Send your proof\r\n===> Received your receipt of advance payment\r\n\r\n[TERMS & CONDITIONS]\r\n\r\n1. Must keep a sanitizer with you and use it often remember keep it within easy to reach.\r\n• Wear a cloth face covering or face mask.\r\n• If you are ill or feeling sick like temperature, cough, sneezing don\'t join the tour, stay home and stay safe and let other to be safe.\r\n• Bring enough of your medicine to last you for the entire trip.\r\n\r\n2. The members shall not indulge in any unethical activity (misbehavior with locals or other group members, use of abusive language, use of drugs etc) and may be terminated from tour without warning and will not be refunded any amount.\r\n\r\n3. No illegal or prohibited items will be allowed during the trip. Weapons are not allowed.\r\n\r\n4. On mountainous roads, AC of the vehicle will be on and off to keep the vehicle away from over-heating.\r\n\r\n5. Trip Plan can be altered due to weather or political or any other reason deemed appropriate by us in the best interest of participants and organizers will not be held responsible for that.\r\n\r\n6. We reserve the right to cancel the trip without prior notice for any reasons deemed appropriate by us and participants will receive full refund of the advance amount only.\r\n\r\n7. Every humanly possible care will be taken for the safety of members, still each venture can be fraught with endangers of unforeseen natural disasters like avalanches and crevasse falls or any other accidents and sometimes such disasters cannot be ruled out. In any such type of accident during the whole tour, the company, group leader and the tour organizers will not be held responsible in any form.\r\n\r\n8. In case of theft, lost or damage to personal belongings during the trip, organizers will not be held responsible in any case.\r\n\r\n9. Cancellation Policy:\r\na. 48 HRS or less, 100% cancellation charges of the advanced amount apply.\r\nb. More than 48 HRS – 50% cancellation charges of the advanced amount apply.\r\nc. 4 days or more – No cancellation charges.\r\nd. No amount will be refunded if any person leaves the trip at any stage due to any reason.\r\n\r\n10. Our trips are environment friendly and no damage to the environment will be tolerated.\r\n\r\n11. Our trips are not insured though we exercise the utmost care & safety of all members. We will not be responsible in case of any incident(s) of unforeseen natural calamities like rock/mud sliding, avalanches, slipping/tripping, crevasse falls or any other accidents.\r\n \r\n12. No conflict or violence, whether verbal or via action, is allowed during the trips. Respect different cultures, religions, code of practice, beliefs, and political & geographical affiliations. Non-compliance will be dealt strictly.', 'g3.jpg'),
(3, 'skardu deosai shigar', 'family tour', '5 days by air', 'We are invite you for __ Days Trip to SKARDU VALLEY – DEOSAI - SHANGRILA RESORT - MANTOKHA WATERFALL & More\r\nLet\'s Discover to see the North of Pakistan with Tri Explorers.\r\nWe ensure to give you a family friendly environment on the whole journey.\r\n\r\n▶️ 𝗗𝘂𝗿𝗮𝘁𝗶𝗼𝗻: __ Days & __ Nights Hotels\r\n\r\n• Pick Up Point\r\n(Address)______\r\n\r\n\r\n❇️ Places to be Covered:\r\n• Mansehra\r\n• Hazara Motorway\r\n• 3 Mountain Junction\r\n• Jaglot\r\n• Shangrila Resort\r\n• Nanga Parbat View Point\r\n• Mantokha Waterfall\r\n• Shigar Valley\r\n• Sarfarnga Cold Desert\r\n• Upper Kachura Lake\r\n• Lower Kachura Lake\r\n• Sadpara Dam\r\n• Katapna Desert\r\n• Katapna Lake\r\n• Sadpara Lake\r\n• Deosai Plains\r\n• Bara Pani & Chota Pani\r\n• Sheosar Lake\r\n• Shigar Fort\r\n• Naran\r\n• Kiwai\r\n• Batakundi\r\n• Lulusar Lake\r\n• Babusar Top\r\n• Zero Point\r\n\r\nTRIP PLAN.\r\nDay 00\r\n[Departure From LHR (Thokar Niaz Baig)]\r\n\r\nDay 01\r\n[Members Pickup from ISB (I8 Markaz Habibi Restaurant)\r\nBreakfast at Balakot \r\nVisit Naran\r\nDinner & Overnight Stay @ Chillas]\r\n\r\nDay 02\r\n[Breakfast Call at 6am\r\nLeave For Skardu \r\nVisit 3 Mountain JC Point\r\nVisit Nanga Parbat Point\r\nVisit Shangrila Resort\r\nVisit Upper Kachura Lake\r\nVisit Lower Kachura Lake \r\nDinner & Overnight Stay @ Skardu]\r\n\r\nDay 03\r\n[Breakfast call at 7am\r\nVisit Mantokha Waterfall\r\nVisit Sarfarnga Cold Desert\r\nVisit Shigar Valley\r\nVisit Shigar Fort\r\nDinner & Overnight Stay @ Skardu]\r\n\r\nDay 04\r\n[Breakfast call at 6am\r\nVisit Deosai Plains\r\nVisit Sadpara Lake\r\nVisit Sadpara Dam\r\nVisit Bara Pani & Chota Pani\r\nVisit Sheosar Lake\r\nDinner & Overnight Stay @ Skardu]\r\n\r\n Day 5\r\n[Breakfast Call @ 6am\r\nVisit Katpana Desert \r\nVisit Astak Nala (Abshar)\r\nDinner & Stay Chillas]\r\n\r\nDay 6\r\n[Breakfast Call @ 6am\r\nLeave for ISB / LHR]\r\n\r\n End of services\r\n\r\n▶️MEALS MANU\r\nBreakfast:\r\n🥞Paratha/Bread + Egg 🍳/Channy/Alo Bujhiya+ Milk Tea☕\r\nDinner:\r\nchicken dish with 🍜raita, 🥗salad,\r\n\r\n▶️Activities\r\n▫️Sight-Seeing - 🤳Photography - 🔥Bonfire \r\n\r\n❌ SERVICES NOT INCLUDED\r\n\r\n• Entry Tickets\r\n• Jeep Charges not included for any Point during the trip\r\n• Tea, Mineral water and Cold drinks expense  \r\n• Extra expenses due to the acts of nature and political reasons etc.\r\n• Personal insurances of client\r\n-Tickets of forts, boating , Rafting and parks etc not included.\r\n\r\n \r\n✅ Services included\r\n\r\n__ Nights at Hotels  \r\nBeds + Mattress \r\nShuffling Criteria on 5 - 6 person sharing\r\nTaxes\r\nSaloon Coaster/Grand cabin Up model\r\nChalans\r\nToll Taxes (isko exclude krdo)\r\nFuel Expenses\r\nDriver Expenses\r\nTour Guide (ye free services ma daal do alag se)\r\n\r\n🔶 Terms and Conditions are Applying\r\n\r\n[ NOTE ]\r\nPlan can be changed a little bit during tour on a request of participants or for their comfort-ability & also due to forced or unexpected circumstances itinerary can be altered at any time in tour.\r\n[ Equipment List you must carry]\r\n• Face Mask / Hand Sanitizer / Gloves\r\n• Casual shoes / Trekking shoes / Softy\r\n• Cotton trouser and shirts/Ts\r\n• Jackets / Hoddies / Raincoat\r\n• Hat / Sun Glases / Umbrella ☂️\r\n• CNIC ( Identity Card ) [in sb ma sa ghair zaruri cheezy khtm kro]\r\n\r\n Children Policy 👩‍👧‍👦👨‍👧‍👦\r\n• Under 3 Years: Free of Charge ( Lap or on folding seat if available )\r\n• 3-8 Years: Half Charges ( Folding Seat )\r\n• 8 plus Years: Full Charges\r\n\r\nREMEMBER\r\nWe travel like a family😍\r\n\r\n[ Registration Process ]\r\n===> Deposit Rs: 5000/Person\r\n===> Send your proof\r\n===> Received your receipt of advance payment\r\n\r\n[TERMS & CONDITIONS]\r\n\r\n1. Must keep a sanitizer with you and use it often remember keep it within easy to reach.\r\n• Wear a cloth face covering or face mask.\r\n• If you are ill or feeling sick like temperature, cough, sneezing don\'t join the tour, stay home and stay safe and let other to be safe.\r\n• Bring enough of your medicine to last you for the entire trip.\r\n\r\n2. The members shall not indulge in any unethical activity (misbehavior with locals or other group members, use of abusive language, use of drugs etc) and may be terminated from tour without warning and will not be refunded any amount.\r\n\r\n3. No illegal or prohibited items will be allowed during the trip. Weapons are not allowed.\r\n\r\n4. On mountainous roads, AC of the vehicle will be on and off to keep the vehicle away from over-heating.\r\n\r\n5. Trip Plan can be altered due to weather or political or any other reason deemed appropriate by us in the best interest of participants and organizers will not be held responsible for that.\r\n\r\n6. We reserve the right to cancel the trip without prior notice for any reasons deemed appropriate by us and participants will receive full refund of the advance amount only.\r\n\r\n7. Every humanly possible care will be taken for the safety of members, still each venture can be fraught with endangers of unforeseen natural disasters like avalanches and crevasse falls or any other accidents and sometimes such disasters cannot be ruled out. In any such type of accident during the whole tour, the company, group leader and the tour organizers will not be held responsible in any form.\r\n\r\n8. In case of theft, lost or damage to personal belongings during the trip, organizers will not be held responsible in any case.\r\n\r\n9. Cancellation Policy:\r\na. 48 HRS or less, 100% cancellation charges of the advanced amount apply.\r\nb. More than 48 HRS – 50% cancellation charges of the advanced amount apply.\r\nc. 4 days or more – No cancellation charges.\r\nd. No amount will be refunded if any person leaves the trip at any stage due to any reason.\r\n\r\n10. Our trips are environment friendly and no damage to the environment will be tolerated.\r\n\r\n11. Our trips are not insured though we exercise the utmost care & safety of all members. We will not be responsible in case of any incident(s) of unforeseen natural calamities like rock/mud sliding, avalanches, slipping/tripping, crevasse falls or any other accidents.\r\n \r\n12. No conflict or violence, whether verbal or via action, is allowed during the trips. Respect different cultures, religions, code of practice, beliefs, and political & geographical affiliations. Non-compliance will be dealt strictly.', 'g4.jpg'),
(4, 'Naran Hunza', 'Couple', '4 days by road', 'We are invite you for __ Days Trip to SKARDU VALLEY – DEOSAI - SHANGRILA RESORT - MANTOKHA WATERFALL & More\r\nLet\'s Discover to see the North of Pakistan with Tri Explorers.\r\nWe ensure to give you a family friendly environment on the whole journey.\r\n\r\n▶️ 𝗗𝘂𝗿𝗮𝘁𝗶𝗼𝗻: __ Days & __ Nights Hotels\r\n\r\n• Pick Up Point\r\n(Address)______\r\n\r\n\r\n❇️ Places to be Covered:\r\n• Mansehra\r\n• Hazara Motorway\r\n• 3 Mountain Junction\r\n• Jaglot\r\n• Shangrila Resort\r\n• Nanga Parbat View Point\r\n• Mantokha Waterfall\r\n• Shigar Valley\r\n• Sarfarnga Cold Desert\r\n• Upper Kachura Lake\r\n• Lower Kachura Lake\r\n• Sadpara Dam\r\n• Katapna Desert\r\n• Katapna Lake\r\n• Sadpara Lake\r\n• Deosai Plains\r\n• Bara Pani & Chota Pani\r\n• Sheosar Lake\r\n• Shigar Fort\r\n• Naran\r\n• Kiwai\r\n• Batakundi\r\n• Lulusar Lake\r\n• Babusar Top\r\n• Zero Point\r\n\r\nTRIP PLAN.\r\nDay 00\r\n[Departure From LHR (Thokar Niaz Baig)]\r\n\r\nDay 01\r\n[Members Pickup from ISB (I8 Markaz Habibi Restaurant)\r\nBreakfast at Balakot \r\nVisit Naran\r\nDinner & Overnight Stay @ Chillas]\r\n\r\nDay 02\r\n[Breakfast Call at 6am\r\nLeave For Skardu \r\nVisit 3 Mountain JC Point\r\nVisit Nanga Parbat Point\r\nVisit Shangrila Resort\r\nVisit Upper Kachura Lake\r\nVisit Lower Kachura Lake \r\nDinner & Overnight Stay @ Skardu]\r\n\r\nDay 03\r\n[Breakfast call at 7am\r\nVisit Mantokha Waterfall\r\nVisit Sarfarnga Cold Desert\r\nVisit Shigar Valley\r\nVisit Shigar Fort\r\nDinner & Overnight Stay @ Skardu]\r\n\r\nDay 04\r\n[Breakfast call at 6am\r\nVisit Deosai Plains\r\nVisit Sadpara Lake\r\nVisit Sadpara Dam\r\nVisit Bara Pani & Chota Pani\r\nVisit Sheosar Lake\r\nDinner & Overnight Stay @ Skardu]\r\n\r\n Day 5\r\n[Breakfast Call @ 6am\r\nVisit Katpana Desert \r\nVisit Astak Nala (Abshar)\r\nDinner & Stay Chillas]\r\n\r\nDay 6\r\n[Breakfast Call @ 6am\r\nLeave for ISB / LHR]\r\n\r\n End of services\r\n\r\n▶️MEALS MANU\r\nBreakfast:\r\n🥞Paratha/Bread + Egg 🍳/Channy/Alo Bujhiya+ Milk Tea☕\r\nDinner:\r\nchicken dish with 🍜raita, 🥗salad,\r\n\r\n▶️Activities\r\n▫️Sight-Seeing - 🤳Photography - 🔥Bonfire \r\n\r\n❌ SERVICES NOT INCLUDED\r\n\r\n• Entry Tickets\r\n• Jeep Charges not included for any Point during the trip\r\n• Tea, Mineral water and Cold drinks expense  \r\n• Extra expenses due to the acts of nature and political reasons etc.\r\n• Personal insurances of client\r\n-Tickets of forts, boating , Rafting and parks etc not included.\r\n\r\n \r\n✅ Services included\r\n\r\n__ Nights at Hotels  \r\nBeds + Mattress \r\nShuffling Criteria on 5 - 6 person sharing\r\nTaxes\r\nSaloon Coaster/Grand cabin Up model\r\nChalans\r\nToll Taxes (isko exclude krdo)\r\nFuel Expenses\r\nDriver Expenses\r\nTour Guide (ye free services ma daal do alag se)\r\n\r\n🔶 Terms and Conditions are Applying\r\n\r\n[ NOTE ]\r\nPlan can be changed a little bit during tour on a request of participants or for their comfort-ability & also due to forced or unexpected circumstances itinerary can be altered at any time in tour.\r\n[ Equipment List you must carry]\r\n• Face Mask / Hand Sanitizer / Gloves\r\n• Casual shoes / Trekking shoes / Softy\r\n• Cotton trouser and shirts/Ts\r\n• Jackets / Hoddies / Raincoat\r\n• Hat / Sun Glases / Umbrella ☂️\r\n• CNIC ( Identity Card ) [in sb ma sa ghair zaruri cheezy khtm kro]\r\n\r\n Children Policy 👩‍👧‍👦👨‍👧‍👦\r\n• Under 3 Years: Free of Charge ( Lap or on folding seat if available )\r\n• 3-8 Years: Half Charges ( Folding Seat )\r\n• 8 plus Years: Full Charges\r\n\r\nREMEMBER\r\nWe travel like a family😍\r\n\r\n[ Registration Process ]\r\n===> Deposit Rs: 5000/Person\r\n===> Send your proof\r\n===> Received your receipt of advance payment\r\n\r\n[TERMS & CONDITIONS]\r\n\r\n1. Must keep a sanitizer with you and use it often remember keep it within easy to reach.\r\n• Wear a cloth face covering or face mask.\r\n• If you are ill or feeling sick like temperature, cough, sneezing don\'t join the tour, stay home and stay safe and let other to be safe.\r\n• Bring enough of your medicine to last you for the entire trip.\r\n\r\n2. The members shall not indulge in any unethical activity (misbehavior with locals or other group members, use of abusive language, use of drugs etc) and may be terminated from tour without warning and will not be refunded any amount.\r\n\r\n3. No illegal or prohibited items will be allowed during the trip. Weapons are not allowed.\r\n\r\n4. On mountainous roads, AC of the vehicle will be on and off to keep the vehicle away from over-heating.\r\n\r\n5. Trip Plan can be altered due to weather or political or any other reason deemed appropriate by us in the best interest of participants and organizers will not be held responsible for that.\r\n\r\n6. We reserve the right to cancel the trip without prior notice for any reasons deemed appropriate by us and participants will receive full refund of the advance amount only.\r\n\r\n7. Every humanly possible care will be taken for the safety of members, still each venture can be fraught with endangers of unforeseen natural disasters like avalanches and crevasse falls or any other accidents and sometimes such disasters cannot be ruled out. In any such type of accident during the whole tour, the company, group leader and the tour organizers will not be held responsible in any form.\r\n\r\n8. In case of theft, lost or damage to personal belongings during the trip, organizers will not be held responsible in any case.\r\n\r\n9. Cancellation Policy:\r\na. 48 HRS or less, 100% cancellation charges of the advanced amount apply.\r\nb. More than 48 HRS – 50% cancellation charges of the advanced amount apply.\r\nc. 4 days or more – No cancellation charges.\r\nd. No amount will be refunded if any person leaves the trip at any stage due to any reason.\r\n\r\n10. Our trips are environment friendly and no damage to the environment will be tolerated.\r\n\r\n11. Our trips are not insured though we exercise the utmost care & safety of all members. We will not be responsible in case of any incident(s) of unforeseen natural calamities like rock/mud sliding, avalanches, slipping/tripping, crevasse falls or any other accidents.\r\n \r\n12. No conflict or violence, whether verbal or via action, is allowed during the trips. Respect different cultures, religions, code of practice, beliefs, and political & geographical affiliations. Non-compliance will be dealt strictly.', ''),
(5, 'Naran Skardu ', 'corporate tour', '5 days', 'We are invite you for __ Days Trip to SKARDU VALLEY – DEOSAI - SHANGRILA RESORT - MANTOKHA WATERFALL & More\r\nLet\'s Discover to see the North of Pakistan with Tri Explorers.\r\nWe ensure to give you a family friendly environment on the whole journey.\r\n\r\n▶️ 𝗗𝘂𝗿𝗮𝘁𝗶𝗼𝗻: __ Days & __ Nights Hotels\r\n\r\n• Pick Up Point\r\n(Address)______\r\n\r\n\r\n❇️ Places to be Covered:\r\n• Mansehra\r\n• Hazara Motorway\r\n• 3 Mountain Junction\r\n• Jaglot\r\n• Shangrila Resort\r\n• Nanga Parbat View Point\r\n• Mantokha Waterfall\r\n• Shigar Valley\r\n• Sarfarnga Cold Desert\r\n• Upper Kachura Lake\r\n• Lower Kachura Lake\r\n• Sadpara Dam\r\n• Katapna Desert\r\n• Katapna Lake\r\n• Sadpara Lake\r\n• Deosai Plains\r\n• Bara Pani & Chota Pani\r\n• Sheosar Lake\r\n• Shigar Fort\r\n• Naran\r\n• Kiwai\r\n• Batakundi\r\n• Lulusar Lake\r\n• Babusar Top\r\n• Zero Point\r\n\r\nTRIP PLAN.\r\nDay 00\r\n[Departure From LHR (Thokar Niaz Baig)]\r\n\r\nDay 01\r\n[Members Pickup from ISB (I8 Markaz Habibi Restaurant)\r\nBreakfast at Balakot \r\nVisit Naran\r\nDinner & Overnight Stay @ Chillas]\r\n\r\nDay 02\r\n[Breakfast Call at 6am\r\nLeave For Skardu \r\nVisit 3 Mountain JC Point\r\nVisit Nanga Parbat Point\r\nVisit Shangrila Resort\r\nVisit Upper Kachura Lake\r\nVisit Lower Kachura Lake \r\nDinner & Overnight Stay @ Skardu]\r\n\r\nDay 03\r\n[Breakfast call at 7am\r\nVisit Mantokha Waterfall\r\nVisit Sarfarnga Cold Desert\r\nVisit Shigar Valley\r\nVisit Shigar Fort\r\nDinner & Overnight Stay @ Skardu]\r\n\r\nDay 04\r\n[Breakfast call at 6am\r\nVisit Deosai Plains\r\nVisit Sadpara Lake\r\nVisit Sadpara Dam\r\nVisit Bara Pani & Chota Pani\r\nVisit Sheosar Lake\r\nDinner & Overnight Stay @ Skardu]\r\n\r\n Day 5\r\n[Breakfast Call @ 6am\r\nVisit Katpana Desert \r\nVisit Astak Nala (Abshar)\r\nDinner & Stay Chillas]\r\n\r\nDay 6\r\n[Breakfast Call @ 6am\r\nLeave for ISB / LHR]\r\n\r\n End of services\r\n\r\n▶️MEALS MANU\r\nBreakfast:\r\n🥞Paratha/Bread + Egg 🍳/Channy/Alo Bujhiya+ Milk Tea☕\r\nDinner:\r\nchicken dish with 🍜raita, 🥗salad,\r\n\r\n▶️Activities\r\n▫️Sight-Seeing - 🤳Photography - 🔥Bonfire \r\n\r\n❌ SERVICES NOT INCLUDED\r\n\r\n• Entry Tickets\r\n• Jeep Charges not included for any Point during the trip\r\n• Tea, Mineral water and Cold drinks expense  \r\n• Extra expenses due to the acts of nature and political reasons etc.\r\n• Personal insurances of client\r\n-Tickets of forts, boating , Rafting and parks etc not included.\r\n\r\n \r\n✅ Services included\r\n\r\n__ Nights at Hotels  \r\nBeds + Mattress \r\nShuffling Criteria on 5 - 6 person sharing\r\nTaxes\r\nSaloon Coaster/Grand cabin Up model\r\nChalans\r\nToll Taxes (isko exclude krdo)\r\nFuel Expenses\r\nDriver Expenses\r\nTour Guide (ye free services ma daal do alag se)\r\n\r\n🔶 Terms and Conditions are Applying\r\n\r\n[ NOTE ]\r\nPlan can be changed a little bit during tour on a request of participants or for their comfort-ability & also due to forced or unexpected circumstances itinerary can be altered at any time in tour.\r\n[ Equipment List you must carry]\r\n• Face Mask / Hand Sanitizer / Gloves\r\n• Casual shoes / Trekking shoes / Softy\r\n• Cotton trouser and shirts/Ts\r\n• Jackets / Hoddies / Raincoat\r\n• Hat / Sun Glases / Umbrella ☂️\r\n• CNIC ( Identity Card ) [in sb ma sa ghair zaruri cheezy khtm kro]\r\n\r\n Children Policy 👩‍👧‍👦👨‍👧‍👦\r\n• Under 3 Years: Free of Charge ( Lap or on folding seat if available )\r\n• 3-8 Years: Half Charges ( Folding Seat )\r\n• 8 plus Years: Full Charges\r\n\r\nREMEMBER\r\nWe travel like a family😍\r\n\r\n[ Registration Process ]\r\n===> Deposit Rs: 5000/Person\r\n===> Send your proof\r\n===> Received your receipt of advance payment\r\n\r\n[TERMS & CONDITIONS]\r\n\r\n1. Must keep a sanitizer with you and use it often remember keep it within easy to reach.\r\n• Wear a cloth face covering or face mask.\r\n• If you are ill or feeling sick like temperature, cough, sneezing don\'t join the tour, stay home and stay safe and let other to be safe.\r\n• Bring enough of your medicine to last you for the entire trip.\r\n\r\n2. The members shall not indulge in any unethical activity (misbehavior with locals or other group members, use of abusive language, use of drugs etc) and may be terminated from tour without warning and will not be refunded any amount.\r\n\r\n3. No illegal or prohibited items will be allowed during the trip. Weapons are not allowed.\r\n\r\n4. On mountainous roads, AC of the vehicle will be on and off to keep the vehicle away from over-heating.\r\n\r\n5. Trip Plan can be altered due to weather or political or any other reason deemed appropriate by us in the best interest of participants and organizers will not be held responsible for that.\r\n\r\n6. We reserve the right to cancel the trip without prior notice for any reasons deemed appropriate by us and participants will receive full refund of the advance amount only.\r\n\r\n7. Every humanly possible care will be taken for the safety of members, still each venture can be fraught with endangers of unforeseen natural disasters like avalanches and crevasse falls or any other accidents and sometimes such disasters cannot be ruled out. In any such type of accident during the whole tour, the company, group leader and the tour organizers will not be held responsible in any form.\r\n\r\n8. In case of theft, lost or damage to personal belongings during the trip, organizers will not be held responsible in any case.\r\n\r\n9. Cancellation Policy:\r\na. 48 HRS or less, 100% cancellation charges of the advanced amount apply.\r\nb. More than 48 HRS – 50% cancellation charges of the advanced amount apply.\r\nc. 4 days or more – No cancellation charges.\r\nd. No amount will be refunded if any person leaves the trip at any stage due to any reason.\r\n\r\n10. Our trips are environment friendly and no damage to the environment will be tolerated.\r\n\r\n11. Our trips are not insured though we exercise the utmost care & safety of all members. We will not be responsible in case of any incident(s) of unforeseen natural calamities like rock/mud sliding, avalanches, slipping/tripping, crevasse falls or any other accidents.\r\n \r\n12. No conflict or violence, whether verbal or via action, is allowed during the trips. Respect different cultures, religions, code of practice, beliefs, and political & geographical affiliations. Non-compliance will be dealt strictly.', '');

-- --------------------------------------------------------

--
-- Table structure for table `pform`
--

CREATE TABLE `pform` (
  `sno` int(11) NOT NULL,
  `Name` text NOT NULL,
  `Package_name` varchar(50) NOT NULL,
  `Phone` int(11) NOT NULL,
  `Email` varchar(10) NOT NULL,
  `Person` int(11) NOT NULL,
  `Other_Detail` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pform`
--

INSERT INTO `pform` (`sno`, `Name`, `Package_name`, `Phone`, `Email`, `Person`, `Other_Detail`) VALUES
(14, 'shuuu', 'skardu122134124', 5, 's21e123eu@', 2, 'dfvarwgve gtrv45wcywc'),
(15, 'shuuu', 'skardu122134124', 5, 's21e123eu@', 2, 'dfvarwgve gtrv45wcywc'),
(16, 'shuuu', 'skardu122134124', 5, 's21e123eu@', 2, 'dfvarwgve gtrv45wcywc');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `sno` int(11) NOT NULL,
  `topic` text NOT NULL,
  `title` text NOT NULL,
  `slug` varchar(25) NOT NULL,
  `content` text NOT NULL,
  `img_file` varchar(12) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`sno`, `topic`, `title`, `slug`, `content`, `img_file`, `date`) VALUES
(1, 'travel gear', 'this is first post', 'first-post', 'edit post', 'g2.jpg', '2022-12-19 15:34:28'),
(2, 'Travel', 'Travel is the movement of people', 'second-post', 'Travel dates back to antiquity where wealthy Greeks and Romans would travel for leisure to their summer homes and villas in cities such as Pompeii and Baiae.[8] While early travel tended to be slower, more dangerous, and more dominated by trade and migration, cultural and technological advances over many years have tended to mean that travel has become easier and more accessible.[9] Humankind has come a long way in transportation since Christopher Columbus sailed to the new world from Spain in 1492, an expedition which took over 10 weeks to arrive at the final destination; to the 21st century when aircraft allows travel from Spain to the United States overnight.\r\n\r\nTravel in the Middle Ages offered hardships and challenges, however, it was important to the economy and to society. The wholesale sector depended (for example) on merchants dealing with/through caravans or sea-voyagers, end-user retailing often demanded the services of many itinerant peddlers wandering from village to hamlet, gyrovagues (wandering monks) and wandering friars brought theology and pastoral support to neglected areas, traveling minstrels toured, and armies ranged far and wide in various crusades and in sundry other wars.[8] Pilgrimages were common in both the European and Islamic world and involved streams of travelers both locally and internationally.[10]\r\n\r\nIn the late 16th century, it became fashionable for young European aristocrats and wealthy upper-class men to travel to significant European cities as part of their education in the arts and literature. This was known as the Grand Tour, and included cities such as London, Paris, Venice, Florence, and Rome. However, the French Revolution brought with it the end of the Grand Tour.[8]\r\n\r\nTravel by water often provided more comfort and speed than land-travel, at least until the advent of a network of railways in the 19th century. Travel for the purpose of tourism is reported to have started around this time when people began to travel for fun as travel was no longer a hard and challenging task. This was capitalized on by people like Thomas Cook selling tourism packages where trains and hotels were booked together.[11] Airships and airplanes took over much of the role of long-distance surface travel in the 20th century, notably after the Second World War where there was a surplus of both aircraft and pilots.[8] Air travel has become so ubiquitous in the 21st century that one woman, Alexis Alford, visited all 196 countries before the age of 21.[12]', 'g1.jpg', '2022-12-17 17:41:02'),
(3, 'third post', 'travel passion', 'third', 'ather than writing about a recent vacation, I’ve decided to write about why I travel and how I’ve grown from my experiences. I hope this answers questions and inspires those that are sitting where I was just a few years ago.\r\n\r\nAfter living in a rustic, small town for the past 18 years, I was craving change and adventure. Four years later, a senior at UNC Charlotte, I’ve traveled to more places during college than the first two decades of my life.\r\n\r\nTraveling has not only been something that I do, but it has been something that has become a part of me. I have this passion to travel. I haven’t been across the globe or to every continent; but, I’ve had my share of travel and it’s only the beginning. When I get stuck on a consistent routine, I get an itch to pack up my bags and go somewhere spontaneous. Whether it’s by car or plane, there isn’t anything more exciting than traveling to make new experiences and memories that will last forever.\r\n\r\nThere are countless reasons why I am passionate about traveling:\r\n\r\nThe People\r\n\r\nMeeting people from all over the world is the most rewarding part about traveling. The conversations will build knowledge and may lead to bigger opportunities. Networking is becoming a powerful tool and communication is valuable for travelers craving new experiences.\r\n\r\nThe Food\r\n\r\n\r\nChef’s seafood special from Fleet Landing Restaurant and Bar located in Charleston, SC.\r\nThe taste of an authentic dish from a different part of the world is both scary and exhilarating. For me, I enjoy tasting unique foods and some of the best meals I’ve had have been from places I typically would not consider.\r\n\r\nThe Exposure\r\n\r\nExposure to new environments is fulfilling and educational. Traveling takes me out of my comfort zone and it allows me to communicate to natives with different religious beliefs, cultures and ethnicities.\r\n\r\nThe Beauty\r\n\r\n\r\nThe picturesque landscapes enhance every travelers experience. I enjoy taking photos and when I travel, I try to capture the natural beauty of the place I am visiting. I like sharing my photos to help bring my story to life and after getting the perfect shot, I quickly turn to my notebook to check another breathtaking site off my bucket list.\r\n\r\nThe Chance To Build Character', '', '2022-12-20 17:34:27');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `customform`
--
ALTER TABLE `customform`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `package`
--
ALTER TABLE `package`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `pform`
--
ALTER TABLE `pform`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `customform`
--
ALTER TABLE `customform`
  MODIFY `sno` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `package`
--
ALTER TABLE `package`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pform`
--
ALTER TABLE `pform`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
