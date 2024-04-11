-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 11, 2024 at 12:00 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `benjor`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` varchar(120) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Henrietta Asantewaa', 'henrietta ', 447782771301, 'admin@gmail.com', 'f925916e2754e5e03f75dd58a5733251', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcomments`
--

CREATE TABLE `tblcomments` (
  `id` int(11) NOT NULL,
  `recipeId` int(11) DEFAULT NULL,
  `userName` varchar(200) DEFAULT NULL,
  `userEmail` varchar(200) DEFAULT NULL,
  `commentMessage` mediumtext DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `status` int(1) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblcomments`
--

INSERT INTO `tblcomments` (`id`, `recipeId`, `userName`, `userEmail`, `commentMessage`, `postingDate`, `status`, `updationDate`) VALUES
(1, 1, 'Magaret Antwi', 'magaretantwi60@gmail.com', 'This is for testing.   This is for testing.   This is for testing.   This is for testing.   This is for testing.   This is for testing.  ', '2024-03-20 05:37:22', 0, '2024-03-24 18:16:45'),
(2, 1, 'Bennet K Hadjor', 'bennetkh@gmail.com', 'This is the best recipe. Thank you much.', '2024-03-28 05:39:06', 0, '2024-03-30 11:03:34'),
(3, 1, 'Ernest', 'ernstonie2003@gmail.com', 'This is the best recipe. Thank you much.', '2024-04-01 15:33:50', 1, '2024-04-03 17:15:50'),
(4, 1, 'Helena', 'herlie90@gmail.com', 'This is for testing purpose.', '2023-04-03 16:50:40', 1, '2024-04-05 17:16:16'),
(5, 5, 'Petra Torgbor', 'petrat@gmail.com', 'Nice recipe. I like it', '2024-04-05 19:43:36', 1, '2024-04-07 19:44:52'),
(6, 2, 'Joe', 'officialjoeprojects@gmail.com', 'the best recipe ever', '2024-04-04 16:33:56', 1, '2024-04-04 16:35:11'),
(7, 2, 'Abena', 'abenashiny@gmail.com', 'the best recipe ever', '2024-04-07 16:33:56', 1, '2024-04-10 16:35:11');

-- --------------------------------------------------------

--
-- Table structure for table `tblenquiry`
--

CREATE TABLE `tblenquiry` (
  `id` int(11) NOT NULL,
  `userName` varchar(200) DEFAULT NULL,
  `userEmail` varchar(200) DEFAULT NULL,
  `subject` varchar(200) DEFAULT NULL,
  `commentMessage` mediumtext DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `adminRemark` mediumtext DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblenquiry`
--

INSERT INTO `tblenquiry` (`id`, `userName`, `userEmail`, `subject`, `commentMessage`, `postingDate`, `adminRemark`, `updationDate`) VALUES
(3, 'hgff', 'rectifyingissues@gmail.com', 'hjkkhg fbb', 'sdfsaghh brhrfhh fhh dgdg', '2024-04-06 15:05:50', NULL, NULL),
(4, 'Enoch Delali', 'enochdelali@gmail.com', 'Nice website with nice recipes.', 'I really love your website. I would be grateful to see more recipes added everyday. Thanks.', '2024-04-10 11:21:03', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `ID` int(11) NOT NULL,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext DEFAULT NULL,
  `PageDescription` text DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `UpdationDate`) VALUES
(1, 'aboutus', 'Welcome to Benjors Recipe', '                                <div style=\"text-align: justify;\" bis_skin_checked=\"1\"><div bis_skin_checked=\"1\" style=\"text-align: justify;\"><font color=\"#000000\" face=\"Arial, sans-serif\"><span style=\"font-size: 18px;\">\"Akwaaba ba\" benjors Kitchen Recipe</span></font></div><div bis_skin_checked=\"1\" style=\"text-align: justify;\"><font color=\"#000000\" face=\"Arial, sans-serif\"><span style=\"font-size: 18px;\">We aim to provide a platform for recipe enthusiasts and cooks to share their culinary experiences with others by creating an account and sharing recipes to other chefs and site viewers</span></font></div></div>', '2024-04-11 09:57:51'),
(2, 'contactus', 'Contact Us', '<div style=\"text-align: center;\" bis_skin_checked=\"1\"><div bis_skin_checked=\"1\"><span style=\"font-weight: 700;\"><u>Benjor Kitchen Recipe</u></span></div><div bis_skin_checked=\"1\" style=\"text-align: start;\"><span style=\"font-weight: 700;\">Address:&nbsp; &nbsp; &nbsp;42b Holland Street, AB25 3UL</span></div><div bis_skin_checked=\"1\" style=\"text-align: start;\"><span style=\"font-weight: 700;\">Telephone:&nbsp;</span>07782781301</div><div bis_skin_checked=\"1\" style=\"text-align: start;\"><span style=\"font-weight: 700;\">Email</span>: benjorskitchenrecipe@gmail.com<br><div bis_skin_checked=\"1\"><span style=\"font-weight: 700;\">Youtube:&nbsp;</span>youtube.com/@Benjorkitchenrecipe</div></div></div>', '2024-04-11 08:18:03');

-- --------------------------------------------------------

--
-- Table structure for table `tblrecipes`
--

CREATE TABLE `tblrecipes` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `recipeTitle` varchar(255) DEFAULT NULL,
  `recipePrepTime` int(11) DEFAULT NULL,
  `recipeCookTime` int(11) DEFAULT NULL,
  `recipeYields` int(11) DEFAULT NULL,
  `recipeIngredients` mediumtext DEFAULT NULL,
  `recipeDescription` mediumtext DEFAULT NULL,
  `recipePicture` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `category` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblrecipes`
--

INSERT INTO `tblrecipes` (`id`, `userId`, `recipeTitle`, `recipePrepTime`, `recipeCookTime`, `recipeYields`, `recipeIngredients`, `recipeDescription`, `recipePicture`, `postingDate`, `category`, `country`) VALUES
(1, 1, 'HOME BROAD PASTA', 10, 20, 33, '2 cups general purpose white flour,2 eggs,1 tablespoon olive oil,4 tablespoons water', 'Add all ingredients to a food processor.\r\nProcess until mixture starts to form a ball. You should knead the dough for at about ten minutes until it bouncers back when pressed down with your finger.\r\nYou may want to start with a little less water depending on the size of your eggs and moistness of your flour.\r\nWrap ball in plastic wrap and let rest for about an hour.\r\nThen make your pasta using your pasta machine or rolling out. Enjoy -- .', '5ff0d64acbde003ecd13543f2b8f3a29.jpg', '2023-08-10 18:12:28', 'Breakfast', 'Bahrain'),
(2, 1, ' BREAD WITH EGG SALAD', 45, 40, 3, '1⁄2 cup butter, softened,1 cup granulated sugar,2 eggs, beaten,3 bananas, finely crushed (for serious and extreme moist and delicious, try 4 bananas),1 1⁄2 cups all-purpose flour,1 teaspoon baking soda,1⁄2 teaspoon salt,1⁄2 teaspoon vanilla (optional)', 'Take strange pots and pans out of the oven.\r\nPreheat the oven to 300º or 160º.\r\nCream butter and sugar together.\r\nIncorporate eggs and crushed bananas.\r\nBlend well.\r\nCombine flour, soda, and salt. Add to whipped mixture. Add vanilla extract.\r\nJust mix until everything is mixed. Please do not overmix.\r\nPour into a floured and greased loaf pan.\r\nBake for 45 minutes at 300º or 160º.\r\nKeeps well in the refrigerator.', '3c11a6cdcd44304c5a395e8fd5cc0f6b.jpg', '2023-08-11 17:49:07', 'Breakfast', 'Ghana'),
(3, 2, 'AMPESI(YAM)', 25, 30, 4, 'yam, water, salt, egg(optional), garden eggs, red oil, peper', 'Select fresh, firm yams from the market. Remove the skin with a sharp knife or vegetable peeler.\r\nCut the yams into equal-sized chunks or slices. To ensure consistent cooking, choose pieces of nearly same size.\r\nRinse the yam chunks with cold water to eliminate any dirt or debris.\r\nFill a big pot with enough water to completely submerge the yams. If desired, add a pinch of salt to the water; this is optional.\r\nBring the water to a boil over medium high heat.Carefully place the yam pieces into the boiling water. Be cautious to avoid splashing.\r\nAllow the yams to simmer for 15-20 minutes, or until fork tender. You should have little trouble piercing them with a fork.\r\nWhen the yams are fully cooked, take the pot from the heat and drain the water with a colander.\r\nMove the boiled yams to a serving plate.\r\nServe the ampesi hot with your choice of stew, sauce, or protein. Popular accompaniments include palm nut soup, groundnut soup, and spicy tomato stew.\r\nEnjoy your tasty and filling ampesi dinner!', '37339debac5744e048a8c82c0ce94058.jpg', '2023-08-13 16:35:20', 'Lunch', 'Ghana'),
(4, 2, 'YELLOW MOONG DAL RECIPE', 5, 10, 3, '1 cup Yellow Moong Dal,1/2 tsp Turmeric Powder,1 tsp Salt,2 cups water,1 tsp Ghee / Butter,2 -3 Cloves Garlic,1 tsp Jeera (Cumin Seeds),1 tblsp chopped Green Coriander', 'Wash the dal 3 – 4 times and keep aside.\r\nNow in a pressure cooker add the washed dal, salt, turmeric pwoder and 2 cups of water.\r\nNow cook the dal for 2 whistles.\r\nWait till the pressure releases naturally.\r\nNow dish out the dal to a serving bowl.\r\nTake a tadka pan, heat the ghee in it.\r\nNow add jeera seeds and chopped garlic.\r\nCook till the garlic gets dark brown in color. This is important or the garlic will taste raw.\r\nNow add red chilly powder and immediately pour this tadka over the cooked dal.\r\nGarnish with chopped green coriander.\r\nYour peeli dal is ready to be served.', '3af88f4447eff348bb2bb6df559ba9c3.jpg', '2023-08-13 16:54:15', 'Lunch', 'India'),
(5, 3, 'VINICLYN RICE RECIPE', 15, 40, 10, '75 to 2 cups water for stove-top pan and 1.25 cups for instant pot,⅓ teaspoon rock salt (edible and food grade) or add as required,1 to 2 tablespoons chopped coriander leaves (cilantro) for garnish', '2 cups long-grain white rice\r\n3 tablespoons vegetable oil\r\n1 onion, finely chopped\r\n2-3 cloves garlic, minced\r\n1 bell pepper, chopped (red, green, or yellow)\r\n1-2 tomatoes, chopped\r\n2 cups chicken or vegetable broth\r\n1 teaspoon curry powder\r\n1 teaspoon thyme\r\n1 teaspoon paprika\r\nSalt and pepper to taste\r\nOptional: chopped vegetables such as carrots, peas, or green beans', '1e33c8ad826abf9ea92ca23c92300358.jpg', '2023-08-14 19:42:43', 'Dinner', 'Nigeria'),
(10, 4, 'EGG CURRY MALIAN STYLE RECIPE', 65, 65, 76, 'Egg,Onion (finely chopped),Tomato (finely chopped),Ginger-garlic paste,Green chilies (slit),Curry leaves,Turmeric powder,Water', 'Here is a basic recipe to prepare egg curry:\r\n\r\nStart by boiling the eggs: Place the eggs in a saucepan and cover them with water. Bring the water to a boil over medium-high heat. Once boiling, reduce the heat and let the eggs simmer for about 9-10 minutes. Then, remove the eggs from the heat, drain the hot water, and transfer the eggs to a bowl of cold water. Allow them to cool completely before peeling off the shells.\r\n\r\nHeat oil or ghee in a pan: In a large pan or skillet, heat a tablespoon of oil or ghee over medium heat.\r\n\r\nSauté the onions: Add the finely chopped onions to the heated oil and cook until they turn golden brown. Stir occasionally to prevent burning.\r\n\r\nAdd ginger-garlic paste and spices: Once the onions are cooked, add the ginger-garlic paste to the pan and sauté for a minute until the raw smell disappears. Then, add the turmeric powder, red chili powder, coriander powder, cumin powder, and a pinch of salt. Mix well to combine the spices with the onions.\r\n\r\nCook the tomatoes: Add the finely chopped tomatoes to the pan and cook until they become soft and mushy. Stir occasionally to prevent sticking.\r\n\r\nPrepare the curry base: Once the tomatoes are cooked, you can either use a blender to puree the mixture or continue cooking it as it is for a chunkier texture.\r\n\r\nAdd water and simmer: Pour water into the pan, depending on your desired consistency of the curry. Stir well and let the mixture simmer for a few minutes to allow the flavors to blend together.\r\n\r\nAdd boiled eggs: Gently add the boiled eggs to the curry, making sure they are submerged in the sauce. Reduce the heat to low and let the curry simmer for another 5-7 minutes to allow the eggs to absorb the flavors.\r\n\r\nAdjust seasoning and add garnish: Taste the curry and adjust the salt and spices according to your preference. Finally, garnish with fresh coriander leaves.\r\n\r\nServe: Remove the pan from heat and transfer the egg curry to a serving dish. It pairs well with steamed rice, roti (Indian bread), or naan. Enjoy your delicious egg curry!', '3c44c35675b04d5cc64ef1d90e76c52c.jpg', '2024-04-06 09:57:21', 'Lunch', 'Mali'),
(13, 4, 'FUFU', 60, 30, 5, 'Cassava: 2 pounds (approximately 900 grams),Plantains: 2 ripe plantains,Water: Sufficient amount for boiling,Salt: 1 teaspoon (optional, for seasoning)', 'Here is a basic recipe for making fufu using cassava and plantains:\r\n\r\nPeel and cut the cassava and plantains: Start by peeling the cassava and plantains. Cut them into small chunks for easier cooking.\r\n\r\nBoil the cassava and plantains: In a large pot, add enough water to cover the cassava and plantain chunks. Bring the water to a boil over medium-high heat. Add the cassava and plantains to the boiling water and cook until they become soft and tender. This usually takes about 20-30 minutes.\r\n\r\nDrain the water: Once the cassava and plantains are cooked, carefully drain the water from the pot.\r\n\r\nMash the cassava and plantains: Transfer the cooked cassava and plantains to a large bowl or a fufu pounding board. Use a fufu masher or a wooden pestle to mash them together. Apply pressure and mash until they form a smooth and cohesive mixture. This process requires some effort and can take a few minutes.\r\n\r\nShape the fufu: After mashing, you can shape the fufu into small round or oval portions using your hands. Wet your hands with water to prevent sticking.\r\n\r\nServe: Fufu is traditionally served with various West African soups and stews such as egusi soup, groundnut soup, or palm nut soup. It is commonly eaten by tearing off a small piece of fufu, rolling it into a ball, and dipping it into the accompanying soup or stew.', '30a9b5a6adc44f3278a3e0df8634c669.jpg', '2024-04-08 04:53:24', 'Dinner', 'Ghana'),
(14, 4, 'BEANS STEW AND RIPE PLANTAIN ', 30, 40, 12, 'ripe plantain ,beans,salt,water, red oil,fish, egg(optional)', 'This ingredients are used to prepare the beans recipe.', '6748c5b0c360bf6f2a181952e4e5122a.jpg', '2024-04-08 14:44:56', 'Lunch', 'Ghana'),
(15, 4, 'KELEWELE', 12, 78, 32, 'plaintain,salt,water,garlic,ginger', 'it is very delicious and nice', 'b317c8a2af8daf62a6ed94669ded5baajpeg', '2024-04-08 16:32:20', 'Dessert', 'Bahamas');

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `ID` int(10) NOT NULL,
  `FullName` varchar(200) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`ID`, `FullName`, `Email`, `MobileNumber`, `Password`, `RegDate`) VALUES
(6, 'Henrietta Ampadu', 'asantewaahenrietta6@gmail.com', 7782771301, '34357aee570a6b0c3f679234464848d7', '2024-04-10 18:36:06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcomments`
--
ALTER TABLE `tblcomments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblrecipes`
--
ALTER TABLE `tblrecipes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcomments`
--
ALTER TABLE `tblcomments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblrecipes`
--
ALTER TABLE `tblrecipes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
