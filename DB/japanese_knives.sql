-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema japanese_knives
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `japanese_knives` ;

-- -----------------------------------------------------
-- Schema japanese_knives
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `japanese_knives` DEFAULT CHARACTER SET utf8 ;
USE `japanese_knives` ;

-- -----------------------------------------------------
-- Table `knives`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `knives` ;

CREATE TABLE IF NOT EXISTS `knives` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `type` VARCHAR(150) NOT NULL,
  `maker` VARCHAR(125) NOT NULL,
  `construction` VARCHAR(125) NULL,
  `steel` VARCHAR(100) NULL,
  `cladding` VARCHAR(200) NULL,
  `handle` VARCHAR(200) NULL,
  `edge` VARCHAR(100) NULL,
  `weight` VARCHAR(100) NULL,
  `blade_length` VARCHAR(100) NULL,
  `total_length` VARCHAR(100) NULL,
  `spine_thickness` VARCHAR(100) NULL,
  `blade_height` VARCHAR(100) NULL,
  `description` VARCHAR(5000) NULL,
  `img_link` BLOB NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS knivesuser@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'knivesuser'@'localhost' IDENTIFIED BY 'knivesuser';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'knivesuser'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `knives`
-- -----------------------------------------------------
START TRANSACTION;
USE `japanese_knives`;
INSERT INTO `knives` (`id`, `type`, `maker`, `construction`, `steel`, `cladding`, `handle`, `edge`, `weight`, `blade_length`, `total_length`, `spine_thickness`, `blade_height`, `description`, `img_link`) VALUES (1, 'Gyuto', 'Minamoto Hamon', '', '19C27', '', 'pakka wood', '', '5 oz', '184 mm', '308mm', '1.7 mm', '43.49', 'Minamoto 19C27 Hamon Gyuto 185mm. This is an awesome little gyuto. It is small enough to do detail work, but it has the heft needed for larger jobs. The steel used, 19C27 is well known for its excellent edge retention and ease of sharpening. The pakka wood handle and the hamon finish give these knives great aesthetics', 0x6D696E616D6F746F2D68616D6F6E2D677975746F2D3138356D6D2D32302E6A706567);
INSERT INTO `knives` (`id`, `type`, `maker`, `construction`, `steel`, `cladding`, `handle`, `edge`, `weight`, `blade_length`, `total_length`, `spine_thickness`, `blade_height`, `description`, `img_link`) VALUES (2, 'Gyuto', 'Katsushige Anryu', 'San Mai, Hammer Forged', 'Blue #2', 'Stainless Steel', 'Rosewood Oval', 'even', '4.7 ounces', '182 mm', '330 mm', '2.9 mm', '42 mm', 'Katsushige Anryu has worked for over 50 years as a blacksmith. His kitchen knives have a reputation among users and collectors for being well made and robust as well as possessing an attractive and rustic aesthetic appeal.  He has used Hitachi Aogami #2 carbon steel in the manufacture of this particular line of blades. He hardens the core steel to 63 HRC and then wraps it in a soft stainless steel for ease of maintenance and added strength. Blue #2 steel will take an extremely keen edge with ease and hold that edge for a long time. Even though it is wrapped in stainless steel, the carbon core of the knife will discolor with normal use and could rust if abused. Keep it dry and clean and you are good to go!  This is about the smallest size that gyuto style knives are made. In fact it could be considered part petty and part santoku, not just in dimensions but in abilities and feel. People who like a shorter blade will be intrigued by this knife as it serves so many purposes and is so adroit at many cutting and slicing tasks. It is also a great knife for use in restricted spaces or on small boards.', 0x616E7279752D626C75652D322D68616D6D657265642D677975746F2D3138306D6D2D31382E6A706567);
INSERT INTO `knives` (`id`, `type`, `maker`, `construction`, `steel`, `cladding`, `handle`, `edge`, `weight`, `blade_length`, `total_length`, `spine_thickness`, `blade_height`, `description`, `img_link`) VALUES (3, 'Gyuto', 'Yasunori-san', 'San Mai, Hammer Forged', 'VG-10', 'Hammered Damascus', 'Black Pakka Wood', 'even', '5.4 oz', '180 mm', '310mm', '', '42 mm', 'The Yasunori VG-10 Hammered Damascus Gyuto 180mm is pretty much as small as gyutos get. It is a great choice for people who prefer shorter blades or users with very restricted board space. It is also a good tool for prepping garnishes and other smaller items. This knife will appeal to rock and push cutters alike. Its 50/50 grind will also be useful to both left- and right-handed users. It has a fairly thin spine that tapers very nicely towards the tip and it also possesses a fairly thin grind behind the edge.\n\nYasunori-san crafts this knife out of the very popular stainless steel known as VG-10. VG-10 is a stainless steel with a particularly high carbon content of 1%. It also contains 15% chromium, 1% molybdenum, 0.2% vanadium, 1.5% cobalt, and 0.5% manganese. The steel was first created by the Takefu Special Steel Company and has become the most popular stainless steel used in the making of kitchen knives. Yasunori clads the core steel with multiple layers of a softer stainless steel. The cladding is etched to reveal the lovely damascus pattern. A further hammer treatment is applied to the upper blade road, adding to the great looks while enhancing food release.\n\nThe single-piece Western handle is made from black pakka wood which is mated to a stainless bolster and secured with three stainless rivets. Great looks, high performance, and a very keen price make this lovely little gyuto a natural choice for chefs of all kinds looking for an easy to care for and versatile kitchen utensil.', 0x796173756E6F72692D766731302D68616D6D657265642D64616D61736375732D677975746F2D3138306D6D2D31352E6A706567);
INSERT INTO `knives` (`id`, `type`, `maker`, `construction`, `steel`, `cladding`, `handle`, `edge`, `weight`, `blade_length`, `total_length`, `spine_thickness`, `blade_height`, `description`, `img_link`) VALUES (4, 'Kiritsuke', 'Goko', 'San Mai, Hammer Forged', 'White #1', 'Nashiji Finish', 'Walnut Octagonal', 'even', '7.6 ounces', '240 mm', '', '2.9 mm', '53.5 mm', 'Kiritsuke blades have arguably the most iconic profiles of any blade in the Japanese knife world. The reverse tanto tip gives the knife a very weapon-like appearance. In fact, the tip is a really important component of the overall efficiency of this unusual gyuto. The tip is very nimble but also delicate, while the knife has a flatter profile than a normal gyuto which lends itself well to chopping and push cutting.\n\nThe core construction of the blade uses Shirogami #1 steel with a cladding of soft stainless steel. This series of knives is hardened to approximately 60 HRC. This steel is known for being very easy to sharpen, and being able to take highly refined, keen edges. The surface is given a nashiji or, pear skin, finish. The cladding enhances the strength and durability of the knife while protecting the core steel from shocks and corrosion. It also aids in food release.\n\nWe love the rustic antique finish of these blades, which sets them apart from other knives in this price range, as does the attractive walnut octagonal handle with black pakka wood ferrule. But of course the looks are secondary to the fine performance that this knife is capable of. We recommend giving this knife your serious consideration if you seek a larger, flatter gyuto style blade with character and performance to spare.', 0x676F6B6F2D77686974652D312D6B6972697473756B652D3234306D6D2D31392E6A706567);
INSERT INTO `knives` (`id`, `type`, `maker`, `construction`, `steel`, `cladding`, `handle`, `edge`, `weight`, `blade_length`, `total_length`, `spine_thickness`, `blade_height`, `description`, `img_link`) VALUES (5, 'Kiritsuke', 'Kitaoka', '', 'Blue #2', 'soft iron jigane', 'Rosewood Octagonal', 'single bevel', '4.3 Oz', '202mm', '210mm', '3.1 mm', '35.9 mm', 'There is something about the shape of a kiritsuke that reminds us of a samurai sword. It has a ‘weapon’ look to it. And this knife is certainly a kitchen weapon of the highest order.\n\nKiritsuke knives are one of the few multipurpose traditional Japanese blades. They can be used as a yanagi for fish slicing, or as an usuba for vegetable cutting. These sword shaped knives feature a straighter edge than a yanagi and a longer blade than an usuba. In Japan the chef must be highly skilled with traditional Japanese knives in order to master this unique design correctly. In fact tradition has it that these knives are used only by the executive chefs as a symbol of status and due to its difficulty in use.\n\nThe Kitaoka 210mm Kiritsuke is made from the popular Hitachi Blue Paper #2 alloy with a soft iron jigane covering the front and spine. It is a single bevel knife and the core steel is hardened to 62-63 HRC. The back of the blade has a mild concave grind to aid in food release. The blade is very reactive so you must keep it completely dry between uses and wipe it down regularly if cutting acidic foods. The knife is intended for right-handed users only.', 0x6B6974616F6B612D3231302D6B6972697473756B652D626C75652D322D33312E6A706567);
INSERT INTO `knives` (`id`, `type`, `maker`, `construction`, `steel`, `cladding`, `handle`, `edge`, `weight`, `blade_length`, `total_length`, `spine_thickness`, `blade_height`, `description`, `img_link`) VALUES (6, 'Kiritsuke', 'Moritaka', 'San Mai, Hammer Forged', 'Aogami Super Steel', 'Soft Iron', 'Magnolia Octagonal / Buffalo Horn', 'even', '6o z', '210 mm', '', '3.1 mm', '49 mm', 'The Moritaka Supreme 210mm Kiritsuke is another instance where the maker has applied 50/50 geometry to a traditional Japanese pattern in order to heighten versatility and ease of use, and create an ambidextrous profile. Kiritsukes may lack some of the versatility of a gyuto, but the sword tip certainly makes up for some of that and how prodigious this pattern is for push and pull cutting make it a favorite addition to many cooks’ blocks. If you are interested in the pattern, but have limited board space, this knife is a particularly good selection as there are relatively few kiritsukes that come in below 240 mm.\n\nThe core steel in the Moritaka Supreme line is a wonderfully treated Aogami Super which takes and holds a wicked edge. This high end carbon steel is clad with softer iron and produced with a rustic kurouchi finish. While still reactive, this finish aids in corrosion resistance. Hand-forging blades for over 700 years, Moritaka Hamono offers some of the more unique knives on our site at an incredible value given the performance, fit and finish, premium steel, and handmade nature of the knives.', 0x6D6F726974616B612D3231306D6D2D6B6972697473756B652D677975746F2D34322E6A706567);
INSERT INTO `knives` (`id`, `type`, `maker`, `construction`, `steel`, `cladding`, `handle`, `edge`, `weight`, `blade_length`, `total_length`, `spine_thickness`, `blade_height`, `description`, `img_link`) VALUES (7, 'Bunka', 'Daovua', 'Hammer Forged', 'Pipeline Carbon Steel', '', 'Ergonomic Style Wooden Handle', 'even', '5.1 oz', '185 mm', '', '', ' 53 mm', 'Daovua Pipeline Steel Bunka 180mm Special! Our friends from Vietnam have made a new knife with an updated ergonomic handle as well as using a new type of steel which is made from recycled pipelines.', 0x64616F7675612D706970656C696E652D737465656C2D62756E6B612D3138306D6D2D7370656369616C2D31332E6A706567);
INSERT INTO `knives` (`id`, `type`, `maker`, `construction`, `steel`, `cladding`, `handle`, `edge`, `weight`, `blade_length`, `total_length`, `spine_thickness`, `blade_height`, `description`, `img_link`) VALUES (8, 'Bunka', 'Kanehide', ' Laser Cut, Mono Steel', 'PS60 Stainless', '', 'Custom Amboynia Burl Octagonal', '50/50', '4.8 ounces', '185 mm', '', '2 mm', '48 mm', 'Hitachi makes this steel for the razor industry and has a dominant share of the market world wide and is nearly identical to AEB-L. Kanehide was able to increase the hardness to HRC 60-61 through special heat treating and also increasing the wear resistance by giving the blades by using a cryogenic treatment with liquid nitrogen at minus 180 degrees C. The sub-zero treating works to change retained austenite to martensite, as a result, it is effective not only to enhance the hardness but also the wear resistance.\n\nThe result is a fully stainless knife that sharpens extremely well and cuts great. It features a nice octagonal walnut handle. Give it a try and we think you\'ll be as delighted with this knife as we are.', 0x6B616E65686964652D707336302D62756E6B612D3138356D6D2D637573746F6D2D33322E6A706567);
INSERT INTO `knives` (`id`, `type`, `maker`, `construction`, `steel`, `cladding`, `handle`, `edge`, `weight`, `blade_length`, `total_length`, `spine_thickness`, `blade_height`, `description`, `img_link`) VALUES (9, 'Western Bunka', 'Kato', 'San Mai, Hammer Forged', 'VG-10', 'Nickel Damascus', 'Yo Rosewood', 'Even Edge Grind', '5.6 ounces', '170 mm', '', '1.9 mm', '47 mm', 'Yoshimi Kato has recently inherited the business from his father Hiroshi. Along with his experienced crew he is coming out with several new lines with a focus on quality stainless steels and nice damascus finishes. This Bunka is a perfect example. With this new line of VG-10 blades he has managed to these build these principles into his most affordable line of kitchen knives.\n\nVG-10 is a cutlery grade stainless steel produced in Japan. The name stands for V Gold 10 (\"gold\" meaning quality), or sometimes V-Kin-10 (kin means \"gold\" in Japanese). It is a stainless steel with a high carbon content containing 1% carbon, 15% chromium, 1% molybdenum, 0.2% vanadium, 1.5% cobalt, and 0.5% manganese. All of these relatively small amounts of other metals give the VG-10 steel its most important properties, such as its ability to hold an edge coupled with great durability. It is one reason why the VG-10 label has been so highly prized among so many people, ranging from chefs to knife collectors.\n\nThis bunka is a good choice for lovers of shorter blades or those with very restricted board space. It is also a great choice for prepping garnishes and other smaller items. This knife will appeal to rock and push cutters alike. Its 50/50 grind will also be useful to both left- and right-handed users. It has a nice thin spine that tapers towards the tip and it also exhibits a fairly thin grind behind the edge.', 0x6B61746F2D76672D31302D73756D696E6167617368692D62756E6B612D3137306D6D2D31392E6A706567);
INSERT INTO `knives` (`id`, `type`, `maker`, `construction`, `steel`, `cladding`, `handle`, `edge`, `weight`, `blade_length`, `total_length`, `spine_thickness`, `blade_height`, `description`, `img_link`) VALUES (10, 'Hankotsu', 'Takayuki Grand Chef', 'Mono Steel', 'AEB-L', 'no cladding ', 'pakka wood handle ', '', '6.4 oz', '145 mm', '266 mm', '3.4 mm', '27.7 mm', 'Hankotsu knives are designed to bone and process meat. They are typically stout, short blades with a very pointed tip. The most unusual aspect of the hankotsu is its heel design. The blade transforms straight into the handle or bolster, so there is absolutely no knuckle clearance if using on a cutting board. This makes the knife more useful for processing hanging meats or for boning chops or frenching rib racks. They have really stiff blades with no flex at all, unlike a western boning knife. Hankotsu knives also have an edge that is not sharpened all the way to the handle, for safety reasons.\n\nThe Takayuki company makes this knife out of AEB-L stainless steel. It is a mono steel design so there is no cladding over the core. The steel is hardened to about 60HRC. This is a great Swedish stainless steel that is well liked in the knife industry for its rugged and easy to maintain characteristics.\n\nThe blade is attached to a very nice pakka wood handle that is secured to the tang by 3 stainless rivets.', 0x74616B6179756B692D6772616E642D636865662D68616E6B6F7473752D3135306D6D2D34312E6A706567);
INSERT INTO `knives` (`id`, `type`, `maker`, `construction`, `steel`, `cladding`, `handle`, `edge`, `weight`, `blade_length`, `total_length`, `spine_thickness`, `blade_height`, `description`, `img_link`) VALUES (11, 'Hankotsu', 'Kikuichi Elite', '', 'SK-4 soft carbon steel', 'no cladding ', 'black pakka wood', 'single bevel', '5.6oz', '150mm', '265mm', '2.32 mm', '27.6 mm', 'The hankotsu is a boning knife that has a very different profile from a honesuki. This style of knife is used to bone hanging and larger cuts of meat as opposed to the honesuki, which is employed more for processing poultry. It is a very stout and tough blade that can take on some serious boning tasks. The blade is made from SK-4 soft carbon steel which takes a really sharp edge. Returning the blade to its sharp condition is also an easy task with this steel. It has a very asymmetrical grind, almost flat on one side and quite curved on the other. So strictly speaking is better for right-handed users. But as this is a short boning knife steerage should not be an issue for left-handers.\n\nThe blade is coupled to a nicely finished black pakka wood handle attached with three rivets and a steel bolster. It is balanced to the rear of the bolster. Remember that this is a reactive steel so the knife must be kept very dry between uses. A nice patina will develop, however, which will aid in the general maintenance of the blade.', 0x6B696B75696368692D656C6974652D636172626F6E2D68616E6B6F7473752D3135306D6D2D34312E6A706567);
INSERT INTO `knives` (`id`, `type`, `maker`, `construction`, `steel`, `cladding`, `handle`, `edge`, `weight`, `blade_length`, `total_length`, `spine_thickness`, `blade_height`, `description`, `img_link`) VALUES (12, 'Honesuki', 'MAC', '', 'VG-10', '', '', 'single bevel', '6.8 ounces', '155 mm', '', '2.9 mm', '42 mm', 'This is MAC\'s take on the traditional Japanese poultry knife. This is an indispensable tool for the home chef who prefers to fabricate and process chicken, turkey and game birds at home. We\'ve found that it\'s possible to save substantial amounts of money buying chicken and turkey whole and cutting our own pieces for serving, as whole chicken and turkey is often several dollars less expensive per pound. The honesuki\'s unique triangular blade is ideally suited for the detailed maneuvering required when cutting breasts from the bone, and cutting through the cartilage in wing and leg joints. MAC offers their 25 year warranty against defects in materials and workmanship with this excellent honesuki. This honesuki is NOT dishwasher safe, no knife really is.', 0x6D61632D686F6E6573756B692D626F6E696E672D6B6E6966652D362D34312E6A706567);
INSERT INTO `knives` (`id`, `type`, `maker`, `construction`, `steel`, `cladding`, `handle`, `edge`, `weight`, `blade_length`, `total_length`, `spine_thickness`, `blade_height`, `description`, `img_link`) VALUES (13, 'Honesuki', 'Okeya', 'San Mai, Hammer Forged', 'Hitachi Blue #2 Steel', ' Tsuchime Finish', 'Western Rosewood', '50/50', '2.8oz', '150mm', '265mm', '2 mm', '37.5mm', 'The classic Honesuki knife is designed to process poultry. The pointed tip and triangular shape make it a great blade to get into joints and between bone. However, it not meant to cut through bones. The blade is normally stiff and quite stout.\n\nThis version, made by the father and son team at Okeya, adheres to the design principles of this style of blade but unlike many Honesuki, this has a double sided 50/50 edge. The knife is made with a core of Aogami 2, or Blue #2 steel. This high carbon steel is well liked in the knife world. It is a steel that takes a very sharp edge and is quite easy to sharpen. The core steel is hardened to 60 HRC. The inner core is covered in a layer of a softer iron. This layer is given a very attractive tsuchime finish. It requires care with cleaning and drying between uses.\n\nThe good looking blade is enhanced with some nicely executed hand chiseled kanji on one side of the blade together with some stamped figures on the back. The blade is attached to a very good looking Western style rosewood handle.', 0x6F6B6579612D626C75652D322D686F6E6573756B692D3135306D6D2D31362E6A706567);
INSERT INTO `knives` (`id`, `type`, `maker`, `construction`, `steel`, `cladding`, `handle`, `edge`, `weight`, `blade_length`, `total_length`, `spine_thickness`, `blade_height`, `description`, `img_link`) VALUES (14, 'Funayuki', 'Kitaoka', '', 'Blue #2', 'soft iron jigane', 'Rosewood Octagonal / Black Pakkawood', '', '', '174mm', '', '5 mm', '45mm', 'The funayuki is a multi-purpose traditional single bevel Japanese knife. The name funayuki means \"going on a boat.\" It comes from a custom of fishermen who used these knives to clean and prepare fish on the boat. The blade is exceptionally thin which gives it the ability to slice fish and vegetables in a very controlled and efficient manner.\n\nHideo Kitaoka fashions his knives out of carbon steel using the traditional jacketed ‘awase’ method. His blades consist of a core ‘hagane’ steel made from Blue #2 Aogami for the cutting edge and a ‘jigane’ of soft iron for the spine and upper blade body. The super sharp cutting edge is revealed at the bottom of the blade path. Please make sure to clean and dry these knives after use to prevent corrosion.\n\nThe knife is finished with a rosewood octagonal handle with black pakkawood ferrule. The light handle gives the knife a blade heavy balance point. This is a classic Japanese knife that has character written all over its attractive facade. Please note Kitaoka installs the machi on his knives with a gap that is called Tokyo Style. It\'s not a flaw it\'s an aesthetic choice based on a traditional way of installing the handles', 0x6B6974616F6B612D3138306D6D2D66756E6179756B692D626C75652D322D33372E6A706567);
INSERT INTO `knives` (`id`, `type`, `maker`, `construction`, `steel`, `cladding`, `handle`, `edge`, `weight`, `blade_length`, `total_length`, `spine_thickness`, `blade_height`, `description`, `img_link`) VALUES (15, 'Funayuki', 'Kajiwara', '', 'Hitachi Aogami blue paper #2', '', 'ebony  / rosewood oval wa handle ', 'convex grind', '4.6 ounces', '165mm', '304 mm', ' 3.3 mm', '47.5 mm', 'The Kajiwara damascus 165mm funayuki is a fantastic smaller all around chef’s knife. It’s smaller-than-a-traditional-gyuto length is perfect for those intimidated by using large chefs knives. It’s length is well suited to cutting midsize veggies, and for many it would be ideally suited as a primary meal prep knife. Like the other Kajiwara damascus blades, this one is forged of Hitachi Aogami or blue paper #2 steel, heat treated to 62 HRC, and fitted with a warm feeling rosewood oval wa handle, and ebony ferrule.\n\nThis knife is capable of taking an extremely sharp edge, and holding it for substantially longer than a similarly sized European stainless steel chef’s knife. The blade is quite thick, and stiff, with good height for chopping, and has a traditional Japanese gyuto “tip-down” profile. The funayuki is 100% carbon steel, but it is not as reactive as some of its iron clad competition. Even a person used to using stainless steel knives would be able to quickly adapt to wiping their blade before setting it down, or storing it. Like all of the Kajiwara knives, it has a fantastic convex grind, and is an ideal candidate as a go to knife for small kitchen spaces, or even restaurant line cooking.', 0x747375746F6D752D6B616A69686172612D66756E6179756B692D3136356D6D2D31332E6A706567);
INSERT INTO `knives` (`id`, `type`, `maker`, `construction`, `steel`, `cladding`, `handle`, `edge`, `weight`, `blade_length`, `total_length`, `spine_thickness`, `blade_height`, `description`, `img_link`) VALUES (16, 'Funayuki', 'Yasunori', '', 'Blue #2', 'soft stainless awasi', 'Octagonal walnut / black pakka wood', '', '4.2 ounces', '166 mm', '305 mm', '3.1 mm', '43.8 mm', 'Owner, Yaunori-san, undertakes the entire production himself, from forging to heat treating, grinding and edging.\n\nRather than using cost saving methods like kurouchi finishes and cheap handles, his blades feature attractive brushed lower blade roads and hairline finishes. He even hand engraves the fine kanji script that decorates the blade.\n\nHe uses Blue #2 as the core steel which is then covered with a soft stainless awasi. Adding a stainless outer layer reduces maintenance to a minimum and strengthens the blade while reducing weight. Of course you will need to keep it dry and clean between uses as the core carbon steel will rust if left wet.\n\nThis is a classic Funayuki in so much as it has a fairly flat blade profile with relatively little belly. It is a short knife which is a great complement or replacement for a gyuto or chef knife.', 0x796173756E6F72692D626C75652D322D66756E6179756B692D3136356D6D2D31362E6A706567);
INSERT INTO `knives` (`id`, `type`, `maker`, `construction`, `steel`, `cladding`, `handle`, `edge`, `weight`, `blade_length`, `total_length`, `spine_thickness`, `blade_height`, `description`, `img_link`) VALUES (17, 'Nakiri', 'Kamo', 'San Mai, Hammer Forged', 'VG10 Suminagashi', 'multi-layer damascus stainless steel', 'Oak', '', '6.9oz', '165 mm', '', '2.4mm', '49 mm', 'Mr. Kamo uses the ubiquitous stainless steel VG10 as his core. He then covers this with a multi-layer damascus stainless steel. VG-10 “super steel” is composed of carbon, chromium, cobalt, manganese, molybdenum, silicon, and vanadium. All of these relatively small amounts of other metals give the VG-10 steel its most important properties, such as its ability to hold an edge coupled with great durability. The core is hardened to about 61 HRC.\n\nThe nontraditional handle is made of a sturdy and distortion-free multi ply oak wood. The possibilities of shrinking or deformation are very much reduced. The handle and blade are connected by a forged, solid stainless steel bolster. This results in a very durable, easy to maintain, and well balanced kitchen knife.\n\nAt 160mm long and 49mm tall, this is a classic nakiri in every way. Designed to cut vegetables with ease, the flat edge and extra finger clearance make it a great choice for users who prefer push cutting over a rocking style. This nakiri will amaze you with its ability to fall through the hardest ingredients.', 0x6B616D6F2D6E616B6972692D3136356D6D2D31392E6A706567);
INSERT INTO `knives` (`id`, `type`, `maker`, `construction`, `steel`, `cladding`, `handle`, `edge`, `weight`, `blade_length`, `total_length`, `spine_thickness`, `blade_height`, `description`, `img_link`) VALUES (18, 'Nakiri', 'Kohetsu', 'San Mai, Hammer Forged', 'White #2 Carbon Steel', 'Soft Iron', 'Walnut Octagonal / Black Pakka Wood\n', 'even', '4.9 ounces', '165 mm', '310 mm', '3.7 mm', '49.5 mm', 'Kohetsu White #2 Nakiri 165mm. This Kohetsu nakiri was created to make life easier for busy cooks. Made in Japan exclusively for Chefknivestogo, it was designed to be durable, affordable, and excellent at its job. It is made of Hitachi white #2 steel. Kohetsu loosely translates to \"be happy\" in Japanese, and we know this knife will live up to its name. It now comes with a walnut and pakkawood octagonal handle.', 0x6B6F68657473752D77686974652D322D6E616B6972692D3136356D6D2D33332E6A706567);
INSERT INTO `knives` (`id`, `type`, `maker`, `construction`, `steel`, `cladding`, `handle`, `edge`, `weight`, `blade_length`, `total_length`, `spine_thickness`, `blade_height`, `description`, `img_link`) VALUES (19, 'Tall Nakiri', 'Moritaka', 'Hammer Forged, San Mai', 'Aogami Super', 'Soft Iron', 'Ho Wood Octagonal / Buffalo Horn', 'even', '7.3oz', '182 mm', '', '', '76 mm', 'Nakiris are by definition taller than many knives but this one really pushes the envelope coming in at an impressive 76mm height at the heel. It resembles a cleaver but it is anything but. This is a thin blade made for processing vegetables, especially harder ones where thicker blades would wedge or stick. As with most nakiri blades, it is very flat at the edge.\n\nThe Moritaka AS series of knives are constructed with a core of Aogami Super (AS) steel between layers of softer iron cladding. In a fairly unique twist, Moritaka welds a stainless tang to the hand forged blade to prevent corrosion inside the handle. The classic kurouchi finish on these blades also improves the corrosion resistance of the otherwise highly reactive cladding.\n\nThis is a fun and functional knife that will find favor with chefs who like the height and general dimensions of a cleaver but want a thinner and lighter tool to dispatch vegetables with ease and accuracy.\n', 0x6D6F726974616B612D61732D74616C6C2D6E616B6972692D31352E6A706567);
INSERT INTO `knives` (`id`, `type`, `maker`, `construction`, `steel`, `cladding`, `handle`, `edge`, `weight`, `blade_length`, `total_length`, `spine_thickness`, `blade_height`, `description`, `img_link`) VALUES (20, 'Sujihiki', 'Gihei Zuika', 'San Mai', 'ZDP189', 'soft iron jigane', '4,000 Year Old Bog Oak Octagonal', 'even', '7.7oz', '266 mm', '', '2.8 mm', '40 mm', 'This knife is a wonderful example of modern materials and age old techniques and skills coming together to create an item of great form and function. The inner core of ZDP189 is clad with a softer stainless steel in a san-mai construction. Thus the cladding, or jigane, is not wrapped over the spine but just covers the more brittle hagane on both sides. The lower part of the blade face is given a nice matte finish which contrasts with the upper polished face and the exposed cutting edge. It has a 50/50 bevel suitable for left or right handed users. The edge profile features a nicely curved belly with enough of a flat section to please both push and rocking style cutters.\n\nThe finely finished blade comes with a beautiful custom handle made with bog oak which is stabilized.', 0x67696865692D7A75696B612D7A64703138392D677975746F2D3234306D6D2D3230332E6A706567);
INSERT INTO `knives` (`id`, `type`, `maker`, `construction`, `steel`, `cladding`, `handle`, `edge`, `weight`, `blade_length`, `total_length`, `spine_thickness`, `blade_height`, `description`, `img_link`) VALUES (21, 'Sujihiki', 'Sukenari', '', 'ZDP189 Damascus', 'soft stainless steel ', '4,000 Year Old Bog Oak Octagonal', 'even', '5.7oz', '262 mm', '', '2.3 mm', '34 mm', 'ZDP189 is a powdered metallurgy steel. It is very high in Carbon and Chromium content which make the steel quite expensive to produce. Its main attributes are high wear resistance and the ability to harden to a very high rating. In this case 65 Rockwell. Of course, this makes it a bit tougher to sharpen by hand. But once achieved, it holds its edge like few other steels.\n\nHinaki-san of Sukenari takes the core ZDP189 and wraps it in a layer of soft stainless steel to protect the inner core and reduce weight. As both alloys are fully stainless, maintenance of the exquisite blade is kept to a minimum. He grinds the blade with an even 50/50 bevel. The profile is typical sujihiki, fairly flat with that great looking and very thin tip. This is a slicer\'s dream machine. It is also very versatile as the tip allows for intricate work and access to hard to reach places.\n\nThe beautifully crafted blade is mated to a fine custom octagonal handle. The Sukenari ZDP189 Sujihiki is a truly outstanding item that will last a lifetime. It performs as well as it looks while remaining easy to care for.', 0x73756B656E6172692D7A64703138392D6B6972697473756B652D3234306D6D2D3130302E6A706567);
INSERT INTO `knives` (`id`, `type`, `maker`, `construction`, `steel`, `cladding`, `handle`, `edge`, `weight`, `blade_length`, `total_length`, `spine_thickness`, `blade_height`, `description`, `img_link`) VALUES (22, 'Sujihiki', 'Takayuki', 'San Mai, Hammer Forged', 'Silver 3', 'Stainless Damascus', 'Magnolia Wood Octagonal / Buffalo Horn', 'even', '5.4 ounces', '261 mm', '415 mm', '2.8 mm', '39.2 mm', 'And what a damascus it is! We think it is one of the finest looking finishes we have ever seen. The subtle frosting and lovely hamon-look combined with the hand etched kanji result in a blade of simple elegance. The highly polished magnolia and buffalo horn handle are of equal quality and aesthetic. Overall, the fit and finish are of the highest standards.\n\nThe blade grind is equally impressive. It has a 50/50 edge which is very thin and perfectly ground. There is a distal taper all along the spine which is polished to a high degree. The small machi is also finished to perfection. The shape is pure slicer: long and thin with little belly curve. The blade length is less than advertised at 261mm. It is slightly taller than other sujis at 40mm and about average weight at 5.4oz.', 0x73616B61692D74616B6179756B692D64616D61736375732D3237306D6D2D77612D73756A6968696B692D33322E6A706567);
INSERT INTO `knives` (`id`, `type`, `maker`, `construction`, `steel`, `cladding`, `handle`, `edge`, `weight`, `blade_length`, `total_length`, `spine_thickness`, `blade_height`, `description`, `img_link`) VALUES (23, 'Oval Santoku', 'Kato', '', 'VG-10 steel', '', 'oval wa handle', 'even', '4.2 ounces', '171 mm', '314 mm', '1.8 mm', '46.9 mm', 'VG-10 steel is a designation used for a very particular type of stainless steel. The G stands for “gold”, which refers to the “gold standard” that this level of stainless steel is considered to have met. VG-10 steel is produced in Japan, and it is the Japanese cutlery market that has traditionally made the most use of this alloy.\n\nHiroshi Kato has created his affordable line of kitchen knives out of this well liked steel which he then wraps in finely decorated outer layers of stainless steel. Unlike the other knives in the Kato Suminagashi line, this Santoku features a traditional oval wa handle.\n\nThe Kato santoku\'s blade and handle are designed to work in harmony by matching the blade\'s width/weight to the weight of blade tang and handle, The Japanese santoku is regarded as a well-balanced knife. This is certainly true of the Kato VG-10 santoku. While the knife may be used in a rocking motion, very little cutting edge makes contact with the surface due to the extreme radius of the tip. The best action relies more on a single downward cut and even landing from heel to tip, thus using less of a rocking motion than a Western style knife.\n\nThe Kato VG-10 Damascus wa-santoku is a well-balanced, well made, and extremely fine looking piece of kitchen cutlery. Handmade by a genuine master blacksmith, and all at a truly affordable price. Highly recommended.', 0x6B61746F2D766731302D64616D61736375732D77612D73616E746F6B752D3137306D6D2D31362E6A706567);
INSERT INTO `knives` (`id`, `type`, `maker`, `construction`, `steel`, `cladding`, `handle`, `edge`, `weight`, `blade_length`, `total_length`, `spine_thickness`, `blade_height`, `description`, `img_link`) VALUES (24, 'Santoku', 'Yoshimi', 'San Mai', 'SG-2 Powdered Stainless', 'Damascus Stainless', 'Rosewood Octagonal / Pakka Wood', 'even', '4.3 ounces', '173 mm', '314 mm', '1.8 mm', '46 mm', 'Yoshimi Kato makes knives for several leading brands including Masakage and Kanehiro. This new line is the first to bear his name. As always, we are very impressed with his quality of grinds, fit, and finish. The overall aesthetic appeal is quite stunning, especially in the case of this new range. They are made from the advanced Powdered Stainless Steel, SG2, which is known for its great edge taking and holding characteristics.\n\nThis is an amazing steel for kitchen knives as it can be heat treated to a high rating. The result is a blade that is easy to use and to sharpen. It holds a sharp edge and is very durable. The inner core of R-2 is then covered in a multi-layer damascus cladding made from a soft stainless steel. These are really easy knives to maintain.\n\nThe santoku featured here is of average size at 165mm with a blade height of 46mm. These knives really are great all-arounders. Their compact size belies their many abilities. In fact, they are starting to replace gyutos and chef knives in many kitchens and knife rolls.', 0x796F7368696D692D7367322D73616E746F6B752D3136356D6D2D35302E6A706567);
INSERT INTO `knives` (`id`, `type`, `maker`, `construction`, `steel`, `cladding`, `handle`, `edge`, `weight`, `blade_length`, `total_length`, `spine_thickness`, `blade_height`, `description`, `img_link`) VALUES (25, 'Santoku', 'Masakage Kiri', 'San Mai, Hammer Forged', 'VG-10', '49 layer Stainless Damascus', 'Magnolia Wood Oval\n/ Red Dyed Pakka Wood', '50/50', '4.2 ounces', '170 mm ', '315 mm', '3.1 mm', '46.5 mm', 'The name Kiri is apropos in this 165mm santoku from Masakage because the beautiful Damascus cladding resembles fog or mist which is what Kiri means in Japanese. The cladding surrounds a core of VG-10 steel hardened to 61-62 HRC. Care for the Kiri is easy as both the core and cladding layers are stainless steels. Characteristic of Masakage knives is their outstanding grind and high level of fit and finish, and this knife is no exception. The handle is magnolia wood with a striking red pakka wood ferrule. The Kiri line of knives is made in Takefu Village by master blacksmith Hiroshi Kato.', 0x6D6173616B6167652D6B6972692D766731302D73616E746F6B752D3136356D6D2D33322E6A706567);

COMMIT;

