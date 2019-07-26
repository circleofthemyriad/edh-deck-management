/*
This script is intended to be a practice of mySQL calisthenics. For good practice, nothing in this
will be shortcutted and intended souly to provide in and out experience with basic database design,
table creation and updating, and database recovery
Author  : Steven D. Guthrie
Date    : May 24, 2019
Title   : EDH/Commander Lands for My Top Commander Decks
*/

-- Be sure to specify "USE" and then the specified database at the beginning of the script.
USE edh_decks;

-- "DROP TABLE" is to ensure that when we execute this function, there is not already another
--  table that exists with the same name.
DROP TABLE IF EXISTS deck_lands;
CREATE TABLE deck_lands
	(
	land_Name VARCHAR(30),
    land_Set VARCHAR(30),
    land_Condition VARCHAR(60),
    land_Mana VARCHAR(15),
    land_Quantity TINYINT,
    land_Deck VARCHAR(60),
    PRIMARY KEY (land_Name,land_Deck),
    FOREIGN KEY (land_Deck) REFERENCES edh_decks.deck_overview(deck_commander_ID)
    ON DELETE CASCADE
	);

-- Golgari Eldrazi Lands:
INSERT INTO deck_lands(land_Name,land_Set,land_Condition,land_Mana,land_Quantity,land_Deck)
	VALUES('Command Tower','Commander 2011','None','{B/G}','1','Meren of Clan Nel Toth');
INSERT INTO deck_lands(land_Name,land_Set,land_Condition,land_Mana,land_Quantity,land_Deck)
	VALUES('Bojuka Bog','Worldwake','Enters Tapped: Exiles target Graveyard','{B}','1','Meren of Clan Nel Toth');
INSERT INTO deck_lands(land_Name,land_Set,land_Condition,land_Mana,land_Quantity,land_Deck)
	VALUES('Mosswort Bridge','Lorwyn','Enters Tapped: Top 4','{G}','1','Meren of Clan Nel Toth');
INSERT INTO deck_lands(land_Name,land_Set,land_Condition,land_Mana,land_Quantity,land_Deck)
	VALUES('Eldrazi Temple','Rise of the Eldrazi','None','{C}/{C}{C}','1','Meren of Clan Nel Toth');
INSERT INTO deck_lands(land_Name,land_Set,land_Condition,land_Mana,land_Quantity,land_Deck)
	VALUES('Eye of Ugin','Worldwake','Colorless Eldrazi cost {2} Less','None','1','Meren of Clan Nel Toth');
INSERT INTO deck_lands(land_Name,land_Set,land_Condition,land_Mana,land_Quantity,land_Deck)
	VALUES('Temple of the False God','Commander Anthology Volume II','Control Five or More Lands','{C}{C}','1','Meren of Clan Nel Toth');
INSERT INTO deck_lands(land_Name,land_Set,land_Condition,land_Mana,land_Quantity,land_Deck)
	VALUES('Forest','Zendikar #247','None','{G}','10','Meren of Clan Nel Toth');
INSERT INTO deck_lands(land_Name,land_Set,land_Condition,land_Mana,land_Quantity,land_Deck)
	VALUES('Swamp','Zendikar #239','None','{B}','12','Meren of Clan Nel Toth');
INSERT INTO deck_lands(land_Name,land_Set,land_Condition,land_Mana,land_Quantity,land_Deck)
	VALUES('Overgrown Tomb','Return to Ravnica','Pay 2 Life','{B/G}',1,'Meren of Clan Nel Toth');
INSERT INTO deck_lands(land_Name,land_Set,land_Condition,land_Mana,land_Quantity,land_Deck)
	VALUES('Nurturing Peatland','Modern Horizons','Pay 1 Life','{B/G}',1,'Meren of Clan Nel Toth');
INSERT INTO deck_lands(land_Name,land_Set,land_Condition,land_Mana,land_Quantity,land_Deck)
	VALUES('Prismatic Vista','Modern Horizons','Pay 1 Life: Search for a Basic','None',1,'Meren of Clan Nel Toth');
INSERT INTO deck_lands(land_Name,land_Set,land_Condition,land_Mana,land_Quantity,land_Deck)
	VALUES('Tectonic Edge','Worldwake','Destroy Target Land','{C}','1','Meren of Clan Nel Toth');
INSERT INTO deck_lands(land_Name,land_Set,land_Condition,land_Mana,land_Quantity,land_Deck)
	VALUES('Ghost Quarter','Innistrad','Destroy Target Land','{C}','1','Meren of Clan Nel Toth');
INSERT INTO deck_lands(land_Name,land_Set,land_Condition,land_Mana,land_Quantity,land_Deck)
	VALUES('Spawning Bed','Battle for Zendikar','{6} Sacrifice','{C}','1','Meren of Clan Nel Toth');
INSERT INTO deck_lands(land_Name,land_Set,land_Condition,land_Mana,land_Quantity,land_Deck)
	VALUES('Blighted Fen','Battle for Zendikar','{5} Sacrifice','{C}','1','Meren of Clan Nel Toth');
INSERT INTO deck_lands(land_Name,land_Set,land_Condition,land_Mana,land_Quantity,land_Deck)
	VALUES('Blighted Woodland','Battle for Zendikar','{5} Sacrifice','{C}','1','Meren of Clan Nel Toth');


-- Abzan Aristocrats Lands:
INSERT INTO deck_lands(land_Name,land_Set,land_Condition,land_Mana,land_Quantity,land_Deck)
	VALUES('Command Tower','Commander 2011','None','{W/B/G}','1','Karador, Ghost Chieftain');
INSERT INTO deck_lands(land_Name,land_Set,land_Condition,land_Mana,land_Quantity,land_Deck)
	VALUES('Bojuka Bog','Worldwake','Enters Tapped: Exiles target Graveyard','{B}','1','Karador, Ghost Chieftain');
INSERT INTO deck_lands(land_Name,land_Set,land_Condition,land_Mana,land_Quantity,land_Deck)
	VALUES('Exotic Orchard','Conflux','Produces Mana that an Opponents Land Creates','{All}','1','Karador, Ghost Chieftain');
INSERT INTO deck_lands(land_Name,land_Set,land_Condition,land_Mana,land_Quantity,land_Deck)
	VALUES('Mana Confluence','Journey into Nyx','Pay 1 Life','{W/B/G}','1','Karador, Ghost Chieftain');
INSERT INTO deck_lands(land_Name,land_Set,land_Condition,land_Mana,land_Quantity,land_Deck)
	VALUES('Reflecting Pool','Shadowmoor','Any Land You Control Could Produce','{W/B/G}','1','Karador, Ghost Chieftain');
INSERT INTO deck_lands(land_Name,land_Set,land_Condition,land_Mana,land_Quantity,land_Deck)
	VALUES('Tectonic Edge','Worldwake','Destroy Target Land','{C}','1','Karador, Ghost Chieftain');
INSERT INTO deck_lands(land_Name,land_Set,land_Condition,land_Mana,land_Quantity,land_Deck)
	VALUES('Ghost Quarter','Innistrad','Destroy Target Land','{C}','1','Karador, Ghost Chieftain');	
INSERT INTO deck_lands(land_Name,land_Set,land_Condition,land_Mana,land_Quantity,land_Deck)
	VALUES('Forest','New Phyrexia','None','{G}',3,'Karador, Ghost Chieftain');
INSERT INTO deck_lands(land_Name,land_Set,land_Condition,land_Mana,land_Quantity,land_Deck)
	VALUES('Swamp','New Phyrexia','None','{B}',3,'Karador, Ghost Chieftain');
INSERT INTO deck_lands(land_Name,land_Set,land_Condition,land_Mana,land_Quantity,land_Deck)
	VALUES('Plains','New Phyrexia','None','{W}',2,'Karador, Ghost Chieftain');
INSERT INTO deck_lands(land_Name,land_Set,land_Condition,land_Mana,land_Quantity,land_Deck)
	VALUES('Overgrown Tomb','Return to Ravnica','Pay 2 Life','{B/G}',1,'Karador, Ghost Chieftain');
INSERT INTO deck_lands(land_Name,land_Set,land_Condition,land_Mana,land_Quantity,land_Deck)
	VALUES('Godless Shrine','Gatecrash','Pay 2 Life','{W/B}',1,'Karador, Ghost Chieftain');
INSERT INTO deck_lands(land_Name,land_Set,land_Condition,land_Mana,land_Quantity,land_Deck)
	VALUES('Temple Garden','Return to Ravnica','Pay 2 Life','{W/G}',1,'Karador, Ghost Chieftain');
INSERT INTO deck_lands(land_Name,land_Set,land_Condition,land_Mana,land_Quantity,land_Deck)
	VALUES('Isolated Chapel','Innistrad','Control a Plains or Swamp','{W/B}',1,'Karador, Ghost Chieftain');
INSERT INTO deck_lands(land_Name,land_Set,land_Condition,land_Mana,land_Quantity,land_Deck)
	VALUES('Sunpetal Grove','Core Set 13','Control a Plains or Forest','{W/G}',1,'Karador, Ghost Chieftain');
INSERT INTO deck_lands(land_Name,land_Set,land_Condition,land_Mana,land_Quantity,land_Deck)
	VALUES('Woodland Cemetery','Innistrad','Control a Swamp or Forest','{B/G}',1,'Karador, Ghost Chieftain');
INSERT INTO deck_lands(land_Name,land_Set,land_Condition,land_Mana,land_Quantity,land_Deck)
	VALUES('Temple of Malady','Journey into Nyx','Enters Tapped: Scry 1','{B/G}','1','Karador, Ghost Chieftain');
INSERT INTO deck_lands(land_Name,land_Set,land_Condition,land_Mana,land_Quantity,land_Deck)
	VALUES('Temple of Silence','Theros','Enters Tapped: Scry 1','{W/B}','1','Karador, Ghost Chieftain');
INSERT INTO deck_lands(land_Name,land_Set,land_Condition,land_Mana,land_Quantity,land_Deck)
	VALUES('Temple of Plenty','Born of the Gods','Enters Tapped: Scry 1','{W/G}','1','Karador, Ghost Chieftain');
INSERT INTO deck_lands(land_Name,land_Set,land_Condition,land_Mana,land_Quantity,land_Deck)
	VALUES('Twilight Mire','Eventide','Filter Land','{B/G}','1','Karador, Ghost Chieftain');
INSERT INTO deck_lands(land_Name,land_Set,land_Condition,land_Mana,land_Quantity,land_Deck)
	VALUES('Fetid Heath','Eventide','Filter Land','{W/B}','1','Karador, Ghost Chieftain');
INSERT INTO deck_lands(land_Name,land_Set,land_Condition,land_Mana,land_Quantity,land_Deck)
	VALUES('Evolving Wilds','Rise of the Eldrazi','Sacrifice: Search for a Basic','None','1','Karador, Ghost Chieftain');
INSERT INTO deck_lands(land_Name,land_Set,land_Condition,land_Mana,land_Quantity,land_Deck)
	VALUES('Prismatic Vista','Modern Horizons','Pay 1 Life, Sacrifice: Search for a Basic','None','1','Karador, Ghost Chieftain');
INSERT INTO deck_lands(land_Name,land_Set,land_Condition,land_Mana,land_Quantity,land_Deck)
	VALUES('Verdant Catacombs','Zendikar','Pay 1 Life, Sacrifice: Search for a Swamp or Forest','None','1','Karador, Ghost Chieftain');
INSERT INTO deck_lands(land_Name,land_Set,land_Condition,land_Mana,land_Quantity,land_Deck)
	VALUES('Marsh Flats','Zendikar','Pay 1 Life, Sacrifice: Search for a Plains or Swamp','None','1','Karador, Ghost Chieftain');
INSERT INTO deck_lands(land_Name,land_Set,land_Condition,land_Mana,land_Quantity,land_Deck)
	VALUES('Windswept Heath','Khans of Tarkir','Pay 1 Life, Sacrifice: Search for a Plains or Forest','None','1','Karador, Ghost Chieftain');
INSERT INTO deck_lands(land_Name,land_Set,land_Condition,land_Mana,land_Quantity,land_Deck)
	VALUES('Phyrexian Tower','Ultimate Masters','Sacrifice a Creature','{C}/{B}{B}','1','Karador, Ghost Chieftain');
INSERT INTO deck_lands(land_Name,land_Set,land_Condition,land_Mana,land_Quantity,land_Deck)
	VALUES('Urborg, Tomb of Yawgmoth','Ultimate Masters','All Lands are Swamps','None','1','Karador, Ghost Chieftain');
INSERT INTO deck_lands(land_Name,land_Set,land_Condition,land_Mana,land_Quantity,land_Deck)
	VALUES('Cabal Stronghold','Dominaria','{3}','{B}','1','Karador, Ghost Chieftain');
INSERT INTO deck_lands(land_Name,land_Set,land_Condition,land_Mana,land_Quantity,land_Deck)
	VALUES('Llanowar Wastes','Magic Origins','Pay 1 Life','{C}/{B}/{G}','1','Karador, Ghost Chieftain');
INSERT INTO deck_lands(land_Name,land_Set,land_Condition,land_Mana,land_Quantity,land_Deck)
	VALUES('Caves of Koilos','Magic Origins','Pay 1 Life','{C}/{B}/{W}','1','Karador, Ghost Chieftain');
INSERT INTO deck_lands(land_Name,land_Set,land_Condition,land_Mana,land_Quantity,land_Deck)
	VALUES('High Market','Commander 2015','Sacrifice a Creature','{C}','1','Karador, Ghost Chieftain');

-- Jund Sacrifice Lands:
INSERT INTO deck_lands(land_Name,land_Set,land_Condition,land_Mana,land_Quantity,land_Deck)
	VALUES('Command Tower','Commander 2011','None','{B/R/G}','1','Prossh, Skyraider of Kher');
INSERT INTO deck_lands(land_Name,land_Set,land_Condition,land_Mana,land_Quantity,land_Deck)
	VALUES('Bojuka Bog','Worldwake','Enters Tapped: Exiles target Graveyard','{B}','1','Prossh, Skyraider of Kher');
INSERT INTO deck_lands(land_Name,land_Set,land_Condition,land_Mana,land_Quantity,land_Deck)
	VALUES('Exotic Orchard','Conflux','Produces Mana that an Opponents Land Creates','{All}','1','Prossh, Skyraider of Kher');
INSERT INTO deck_lands(land_Name,land_Set,land_Condition,land_Mana,land_Quantity,land_Deck)
	VALUES('Mana Confluence','Journey into Nyx','Pay 1 Life','{B/R/G}','1','Prossh, Skyraider of Kher');
INSERT INTO deck_lands(land_Name,land_Set,land_Condition,land_Mana,land_Quantity,land_Deck)
	VALUES('Reflecting Pool','Shadowmoor','Any Land You Control Could Produce','{B/R/G}','1','Prossh, Skyraider of Kher');
INSERT INTO deck_lands(land_Name,land_Set,land_Condition,land_Mana,land_Quantity,land_Deck)
	VALUES('Tectonic Edge','Worldwake','Destroy Target Land','{C}','1','Prossh, Skyraider of Kher');
INSERT INTO deck_lands(land_Name,land_Set,land_Condition,land_Mana,land_Quantity,land_Deck)
	VALUES('Ghost Quarter','Innistrad','Destroy Target Land','{C}','1','Prossh, Skyraider of Kher');
INSERT INTO deck_lands(land_Name,land_Set,land_Condition,land_Mana,land_Quantity,land_Deck)
	VALUES('Forest','New Phyrexia','None','{G}',3,'Prossh, Skyraider of Kher');
INSERT INTO deck_lands(land_Name,land_Set,land_Condition,land_Mana,land_Quantity,land_Deck)
	VALUES('Swamp','New Phyrexia','None','{B}',3,'Prossh, Skyraider of Kher');
INSERT INTO deck_lands(land_Name,land_Set,land_Condition,land_Mana,land_Quantity,land_Deck)
	VALUES('Mountain','New Phyrexia','None','{R}',2,'Prossh, Skyraider of Kher');
INSERT INTO deck_lands(land_Name,land_Set,land_Condition,land_Mana,land_Quantity,land_Deck)
	VALUES('Overgrown Tomb','Return to Ravnica','Pay 2 Life','{B/G}',1,'Prossh, Skyraider of Kher');
INSERT INTO deck_lands(land_Name,land_Set,land_Condition,land_Mana,land_Quantity,land_Deck)
	VALUES('Blood Crypt','Return to Ravnica','Pay 2 Life','{B/R}',1,'Prossh, Skyraider of Kher');
INSERT INTO deck_lands(land_Name,land_Set,land_Condition,land_Mana,land_Quantity,land_Deck)
	VALUES('Stomping Ground','Gatecrash','Pay 2 Life','{R/G}',1,'Prossh, Skyraider of Kher');
INSERT INTO deck_lands(land_Name,land_Set,land_Condition,land_Mana,land_Quantity,land_Deck)
	VALUES('Dragonskull Summit','Core Set 13','Control a Swamp or Mountain','{B/R}',1,'Prossh, Skyraider of Kher');
INSERT INTO deck_lands(land_Name,land_Set,land_Condition,land_Mana,land_Quantity,land_Deck)
	VALUES('Rootbound Crag','Core Set 13','Control a Mountain or Forest','{R/G}',1,'Prossh, Skyraider of Kher');
INSERT INTO deck_lands(land_Name,land_Set,land_Condition,land_Mana,land_Quantity,land_Deck)
	VALUES('Woodland Cemetery','Innistrad','Control a Swamp or Forest','{B/G}',1,'Prossh, Skyraider of Kher');
INSERT INTO deck_lands(land_Name,land_Set,land_Condition,land_Mana,land_Quantity,land_Deck)
	VALUES('Temple of Malady','Journey into Nyx','Enters Tapped: Scry 1','{B/G}','1','Prossh, Skyraider of Kher');
INSERT INTO deck_lands(land_Name,land_Set,land_Condition,land_Mana,land_Quantity,land_Deck)
	VALUES('Temple of Malice','Born of the Gods','Enters Tapped: Scry 1','{B/R}','1','Prossh, Skyraider of Kher');
INSERT INTO deck_lands(land_Name,land_Set,land_Condition,land_Mana,land_Quantity,land_Deck)
	VALUES('Temple of Abandon','Theros','Enters Tapped: Scry 1','{R/G}','1','Prossh, Skyraider of Kher');
INSERT INTO deck_lands(land_Name,land_Set,land_Condition,land_Mana,land_Quantity,land_Deck)
	VALUES('Twilight Mire','Eventide','Filter Land','{B/G}','1','Prossh, Skyraider of Kher');
INSERT INTO deck_lands(land_Name,land_Set,land_Condition,land_Mana,land_Quantity,land_Deck)
	VALUES('Graven Cairns','Shadowmoor','Filter Land','{B/R}','1','Prossh, Skyraider of Kher');
INSERT INTO deck_lands(land_Name,land_Set,land_Condition,land_Mana,land_Quantity,land_Deck)
	VALUES('Evolving Wilds','Rise of the Eldrazi','Sacrifice: Search for a Basic','None','1','Prossh, Skyraider of Kher');
INSERT INTO deck_lands(land_Name,land_Set,land_Condition,land_Mana,land_Quantity,land_Deck)
	VALUES('Prismatic Vista','Modern Horizons','Pay 1 Life, Sacrifice: Search for a Basic','None','1','Prossh, Skyraider of Kher');
INSERT INTO deck_lands(land_Name,land_Set,land_Condition,land_Mana,land_Quantity,land_Deck)
	VALUES('Verdant Catacombs','Zendikar','Pay 1 Life, Sacrifice: Search for a Swamp or Forest','None','1','Prossh, Skyraider of Kher');
INSERT INTO deck_lands(land_Name,land_Set,land_Condition,land_Mana,land_Quantity,land_Deck)
	VALUES('Bloodstained Mire','Khans of Tarkir','Pay 1 Life, Sacrifice: Search for a Swamp or Mountain','None','1','Prossh, Skyraider of Kher');
INSERT INTO deck_lands(land_Name,land_Set,land_Condition,land_Mana,land_Quantity,land_Deck)
	VALUES('Wooded Foothills','Khans of Tarkir','Pay 1 Life, Sacrifice: Search for a Mountain or Forest','None','1','Prossh, Skyraider of Kher');
INSERT INTO deck_lands(land_Name,land_Set,land_Condition,land_Mana,land_Quantity,land_Deck)
	VALUES('Phyrexian Tower','Ultimate Masters','Sacrifice a Creature','{C}/{B}{B}','1','Prossh, Skyraider of Kher');
INSERT INTO deck_lands(land_Name,land_Set,land_Condition,land_Mana,land_Quantity,land_Deck)
	VALUES('Urborg, Tomb of Yawgmoth','Ultimate Masters','All Lands are Swamps','None','1','Prossh, Skyraider of Kher');
INSERT INTO deck_lands(land_Name,land_Set,land_Condition,land_Mana,land_Quantity,land_Deck)
	VALUES('Cabal Stronghold','Dominaria','{3}','{B}','1','Prossh, Skyraider of Kher');
INSERT INTO deck_lands(land_Name,land_Set,land_Condition,land_Mana,land_Quantity,land_Deck)
	VALUES('Homeward Path','Commander 2011','Nome','{C}','1','Prossh, Skyraider of Kher');
INSERT INTO deck_lands(land_Name,land_Set,land_Condition,land_Mana,land_Quantity,land_Deck)
	VALUES('Canyon Slough','Amonkhet','{2} Cycle','{B}/{R}','1','Prossh, Skyraider of Kher');
INSERT INTO deck_lands(land_Name,land_Set,land_Condition,land_Mana,land_Quantity,land_Deck)
	VALUES('Sheltered Thicket','Amonkhet','{2} Cycle','{R}/{G}','1','Prossh, Skyraider of Kher');


-- Sultai Graveyard Lands:
INSERT INTO deck_lands(land_Name,land_Set,land_Condition,land_Mana,land_Quantity,land_Deck)
	VALUES('Command Tower','Commander 2011','None','{U/B/G}','1','The Mimeoplasm');
INSERT INTO deck_lands(land_Name,land_Set,land_Condition,land_Mana,land_Quantity,land_Deck)
	VALUES('Bojuka Bog','Worldwake','Enters Tapped: Exiles target Graveyard','{B}','1','The Mimeoplasm');
INSERT INTO deck_lands(land_Name,land_Set,land_Condition,land_Mana,land_Quantity,land_Deck)
	VALUES('Exotic Orchard','Conflux','Produces Mana that an Opponents Land Creates','{All}','1','The Mimeoplasm');
INSERT INTO deck_lands(land_Name,land_Set,land_Condition,land_Mana,land_Quantity,land_Deck)
	VALUES('Mana Confluence','Journey into Nyx','Pay 1 Life','{U/B/G}','1','The Mimeoplasm');
INSERT INTO deck_lands(land_Name,land_Set,land_Condition,land_Mana,land_Quantity,land_Deck)
	VALUES('Reflecting Pool','Shadowmoor','Any Land You Control Could Produce','{U/B/G}','1','The Mimeoplasm');
INSERT INTO deck_lands(land_Name,land_Set,land_Condition,land_Mana,land_Quantity,land_Deck)
	VALUES('Tectonic Edge','Worldwake','Destroy Target Land','{C}','1','The Mimeoplasm');
INSERT INTO deck_lands(land_Name,land_Set,land_Condition,land_Mana,land_Quantity,land_Deck)
	VALUES('Ghost Quarter','Innistrad','Destroy Target Land','{C}','1','The Mimeoplasm');
INSERT INTO deck_lands(land_Name,land_Set,land_Condition,land_Mana,land_Quantity,land_Deck)
	VALUES('Forest','New Phyrexia','None','{G}',3,'The Mimeoplasm');
INSERT INTO deck_lands(land_Name,land_Set,land_Condition,land_Mana,land_Quantity,land_Deck)
	VALUES('Swamp','New Phyrexia','None','{B}',3,'The Mimeoplasm');
INSERT INTO deck_lands(land_Name,land_Set,land_Condition,land_Mana,land_Quantity,land_Deck)
	VALUES('Island','New Phyrexia','None','{U}',2,'The Mimeoplasm');
INSERT INTO deck_lands(land_Name,land_Set,land_Condition,land_Mana,land_Quantity,land_Deck)
	VALUES('Overgrown Tomb','Return to Ravnica','Pay 2 Life','{B/G}',1,'The Mimeoplasm');
INSERT INTO deck_lands(land_Name,land_Set,land_Condition,land_Mana,land_Quantity,land_Deck)
	VALUES('Watery Grave','Gatecrash','Pay 2 Life','{U/B}',1,'The Mimeoplasm');
INSERT INTO deck_lands(land_Name,land_Set,land_Condition,land_Mana,land_Quantity,land_Deck)
	VALUES('Breeding Pool','Gatecrash','Pay 2 Life','{U/G}',1,'The Mimeoplasm');
INSERT INTO deck_lands(land_Name,land_Set,land_Condition,land_Mana,land_Quantity,land_Deck)
	VALUES('Drowned Catacomb','Innistrad','Control a Island or Swamp','{U/B}',1,'The Mimeoplasm');
INSERT INTO deck_lands(land_Name,land_Set,land_Condition,land_Mana,land_Quantity,land_Deck)
	VALUES('Hinterland Harbor','Core Set 13','Control a Island or Forest','{U/G}',1,'The Mimeoplasm');
INSERT INTO deck_lands(land_Name,land_Set,land_Condition,land_Mana,land_Quantity,land_Deck)
	VALUES('Woodland Cemetery','Innistrad','Control a Swamp or Forest','{B/G}',1,'The Mimeoplasm');
INSERT INTO deck_lands(land_Name,land_Set,land_Condition,land_Mana,land_Quantity,land_Deck)
	VALUES('Temple of Malady','Journey into Nyx','Enters Tapped: Scry 1','{B/G}','1','The Mimeoplasm');
INSERT INTO deck_lands(land_Name,land_Set,land_Condition,land_Mana,land_Quantity,land_Deck)
	VALUES('Temple of Deceit','Theros','Enters Tapped: Scry 1','{U/B}','1','The Mimeoplasm');
INSERT INTO deck_lands(land_Name,land_Set,land_Condition,land_Mana,land_Quantity,land_Deck)
	VALUES('Temple of Mystery','Theros','Enters Tapped: Scry 1','{U/G}','1','The Mimeoplasm');
INSERT INTO deck_lands(land_Name,land_Set,land_Condition,land_Mana,land_Quantity,land_Deck)
	VALUES('Twilight Mire','Eventide','Filter Land','{B/G}','1','The Mimeoplasm');
INSERT INTO deck_lands(land_Name,land_Set,land_Condition,land_Mana,land_Quantity,land_Deck)
	VALUES('Sunken Ruins','Shadowmoor','Filter Land','{U/B}','1','The Mimeoplasm');
INSERT INTO deck_lands(land_Name,land_Set,land_Condition,land_Mana,land_Quantity,land_Deck)
	VALUES('Evolving Wilds','Rise of the Eldrazi','Sacrifice: Search for a Basic','None','1','The Mimeoplasm');
INSERT INTO deck_lands(land_Name,land_Set,land_Condition,land_Mana,land_Quantity,land_Deck)
	VALUES('Prismatic Vista','Modern Horizons','Pay 1 Life, Sacrifice: Search for a Basic','None','1','The Mimeoplasm');
INSERT INTO deck_lands(land_Name,land_Set,land_Condition,land_Mana,land_Quantity,land_Deck)
	VALUES('Verdant Catacombs','Zendikar','Pay 1 Life, Sacrifice: Search for a Swamp or Forest','None','1','The Mimeoplasm');
INSERT INTO deck_lands(land_Name,land_Set,land_Condition,land_Mana,land_Quantity,land_Deck)
	VALUES('Misty Rainforest','Zendikar','Pay 1 Life, Sacrifice: Search for a Island or Forest','None','1','The Mimeoplasm');
INSERT INTO deck_lands(land_Name,land_Set,land_Condition,land_Mana,land_Quantity,land_Deck)
	VALUES('Polluted Delta','Khans of Tarkir','Pay 1 Life, Sacrifice: Search for a Island or Swamp','None','1','The Mimeoplasm');
INSERT INTO deck_lands(land_Name,land_Set,land_Condition,land_Mana,land_Quantity,land_Deck)
	VALUES('Urborg, Tomb of Yawgmoth','Ultimate Masters','All Lands are Swamps','None','1','The Mimeoplasm');
INSERT INTO deck_lands(land_Name,land_Set,land_Condition,land_Mana,land_Quantity,land_Deck)
	VALUES('Cabal Stronghold','Dominaria','{3}','{B}','1','The Mimeoplasm');
INSERT INTO deck_lands(land_Name,land_Set,land_Condition,land_Mana,land_Quantity,land_Deck)
	VALUES('Llanowar Wastes','Magic Origins','Pay 1 Life','{C}/{B}/{G}','1','The Mimeoplasm');
INSERT INTO deck_lands(land_Name,land_Set,land_Condition,land_Mana,land_Quantity,land_Deck)
	VALUES('Yavimaya Coast','Magic Origins','Pay 1 Life','{C}/{U}/{B}','1','The Mimeoplasm');
INSERT INTO deck_lands(land_Name,land_Set,land_Condition,land_Mana,land_Quantity,land_Deck)
	VALUES('Alchemists Refuge','Avacyn Restored','{U}{G}','{C}','1','The Mimeoplasm');
INSERT INTO deck_lands(land_Name,land_Set,land_Condition,land_Mana,land_Quantity,land_Deck)
	VALUES('Winding Canyons','Weatherlight','{2}','{C}','1','The Mimeoplasm');

-- ######################################################################################## --
-- Precon Lands
-- Esper Miracles Lands:
INSERT INTO deck_lands(land_Name,land_Set,land_Condition,land_Mana,land_Quantity,land_Deck)
	VALUES('Command Tower','Commander 2018','None','{W/U/B}',1,'Yennett, Cryptic Sovereign');
INSERT INTO deck_lands(land_Name,land_Set,land_Condition,land_Mana,land_Quantity,land_Deck)
	VALUES('Arcane Sanctum','Commander 2018','Enters Tapped','{W/U/B}',1,'Yennett, Cryptic Sovereign');
INSERT INTO deck_lands(land_Name,land_Set,land_Condition,land_Mana,land_Quantity,land_Deck)
	VALUES('Secluded Steppe','Commander 2018','Enters Tapped / Cycling','{W}',1,'Yennett, Cryptic Sovereign');
INSERT INTO deck_lands(land_Name,land_Set,land_Condition,land_Mana,land_Quantity,land_Deck)
	VALUES('Lonely Sandbar','Commander 2018','Enters Tapped / Cycling','{U}',1,'Yennett, Cryptic Sovereign');
INSERT INTO deck_lands(land_Name,land_Set,land_Condition,land_Mana,land_Quantity,land_Deck)
	VALUES('Barren Moor','Commander 2018','Enters Tapped / Cycling','{B}',1,'Yennett, Cryptic Sovereign');
INSERT INTO deck_lands(land_Name,land_Set,land_Condition,land_Mana,land_Quantity,land_Deck)
	VALUES('New Benalia','Commander 2018','Enters Tapped / Scry 1','{W}',1,'Yennett, Cryptic Sovereign');
INSERT INTO deck_lands(land_Name,land_Set,land_Condition,land_Mana,land_Quantity,land_Deck)
	VALUES('Halimar Depths','Commander 2018','Enters Tapped / Arrange Top 3','{U}',1,'Yennett, Cryptic Sovereign');
INSERT INTO deck_lands(land_Name,land_Set,land_Condition,land_Mana,land_Quantity,land_Deck)
	VALUES('Mortuary Mire','Commander 2018','Enters Tapped / Return Creature to Top of Deck','{B}',1,'Yennett, Cryptic Sovereign');
INSERT INTO deck_lands(land_Name,land_Set,land_Condition,land_Mana,land_Quantity,land_Deck)
	VALUES('Plains','Dominaria','None','{W}',3,'Yennett, Cryptic Sovereign');
INSERT INTO deck_lands(land_Name,land_Set,land_Condition,land_Mana,land_Quantity,land_Deck)
	VALUES('Swamp','Dominaria','None','{B}',3,'Yennett, Cryptic Sovereign');
INSERT INTO deck_lands(land_Name,land_Set,land_Condition,land_Mana,land_Quantity,land_Deck)
	VALUES('Island','Dominaria','None','{U}',5,'Yennett, Cryptic Sovereign');
INSERT INTO deck_lands(land_Name,land_Set,land_Condition,land_Mana,land_Quantity,land_Deck)
	VALUES('Godless Shrine','Ravnica Allegiance','Pay 2 Life','{W/B}',1,'Yennett, Cryptic Sovereign');
INSERT INTO deck_lands(land_Name,land_Set,land_Condition,land_Mana,land_Quantity,land_Deck)
	VALUES('Watery Grave','Guilds of Ravnica','Pay 2 Life','{U/B}',1,'Yennett, Cryptic Sovereign');
INSERT INTO deck_lands(land_Name,land_Set,land_Condition,land_Mana,land_Quantity,land_Deck)
	VALUES('Hallowed Fountain','Ravnica Allegiance','Pay 2 Life','{W/U}',1,'Yennett, Cryptic Sovereign');
INSERT INTO deck_lands(land_Name,land_Set,land_Condition,land_Mana,land_Quantity,land_Deck)
	VALUES('Irrigated Farmland','Amonkhet','Enters Tapped / {2} Cycle','{W/U}',1,'Yennett, Cryptic Sovereign');
INSERT INTO deck_lands(land_Name,land_Set,land_Condition,land_Mana,land_Quantity,land_Deck)
	VALUES('Fetid Pools','Amonkhet','Enters Tapped / {2} Cycle','{U/B}',1,'Yennett, Cryptic Sovereign');
INSERT INTO deck_lands(land_Name,land_Set,land_Condition,land_Mana,land_Quantity,land_Deck)
	VALUES('Isolated Watchtower','Commander 2018','{2} Scry 1','{C}',1,'Yennett, Cryptic Sovereign');
INSERT INTO deck_lands(land_Name,land_Set,land_Condition,land_Mana,land_Quantity,land_Deck)
	VALUES('Forge of Heroes','Commander 2018','Put a +1/+1 or Loyalty Counter on Commander','{C}',1,'Yennett, Cryptic Sovereign');
INSERT INTO deck_lands(land_Name,land_Set,land_Condition,land_Mana,land_Quantity,land_Deck)
	VALUES('Reliquary Tower','Core Set 2019','No Maximum Hand Size','{C}',1,'Yennett, Cryptic Sovereign');
INSERT INTO deck_lands(land_Name,land_Set,land_Condition,land_Mana,land_Quantity,land_Deck)
	VALUES('Scoured Barrens','Commander 2018','Enters Tapped / Gain 1 Life','{W/B}',1,'Yennett, Cryptic Sovereign');
INSERT INTO deck_lands(land_Name,land_Set,land_Condition,land_Mana,land_Quantity,land_Deck)
	VALUES('Tranquil Cove','Commander 2018','Enters Tapped / Gain 1 Life','{W/U}',1,'Yennett, Cryptic Sovereign');
INSERT INTO deck_lands(land_Name,land_Set,land_Condition,land_Mana,land_Quantity,land_Deck)
	VALUES('Dismal Backwater','Commander 2018','Enters Tapped / Gain 1 Life','{U/B}',1,'Yennett, Cryptic Sovereign');
INSERT INTO deck_lands(land_Name,land_Set,land_Condition,land_Mana,land_Quantity,land_Deck)
	VALUES('Sejiri Refuge','Commander 2018','Enters Tapped / Gain 1 Life','{W/U}',1,'Yennett, Cryptic Sovereign');
INSERT INTO deck_lands(land_Name,land_Set,land_Condition,land_Mana,land_Quantity,land_Deck)
	VALUES('Jwar Isle Refuge','Commander 2018','Enters Tapped / Gain 1 Life','{U/B}',1,'Yennett, Cryptic Sovereign');
INSERT INTO deck_lands(land_Name,land_Set,land_Condition,land_Mana,land_Quantity,land_Deck)
	VALUES('Orzhov Guildgate','Commander 2018','Enters Tapped','{W/B}',1,'Yennett, Cryptic Sovereign');
INSERT INTO deck_lands(land_Name,land_Set,land_Condition,land_Mana,land_Quantity,land_Deck)
	VALUES('Azorius Guildgate','Commander 2018','Enters Tapped','{W/U}',1,'Yennett, Cryptic Sovereign');
INSERT INTO deck_lands(land_Name,land_Set,land_Condition,land_Mana,land_Quantity,land_Deck)
	VALUES('Dimir Guildgate','Commander 2018','Enters Tapped','{U/B}',1,'Yennett, Cryptic Sovereign');
INSERT INTO deck_lands(land_Name,land_Set,land_Condition,land_Mana,land_Quantity,land_Deck)
	VALUES('Meandering River','Commander 2018','Enters Tapped','{W/U}',1,'Yennett, Cryptic Sovereign');
INSERT INTO deck_lands(land_Name,land_Set,land_Condition,land_Mana,land_Quantity,land_Deck)
	VALUES('Submerged Boneyard','Commander 2018','Enters Tapped','{U/B}',1,'Yennett, Cryptic Sovereign');

-- ######################################################################################## --
-- Precon Lands
-- **Naya** Lands:


-- Select all Values from Lands Table
SELECT * FROM edh_decks.deck_lands;

-- Total Lands in Each Deck:
SELECT land_Deck,
	SUM(land_Quantity) AS Total
FROM
	edh_decks.deck_lands
GROUP BY land_Deck
ORDER BY SUM(land_Quantity);

/* Below are all Additions/Removals from the above Alpha Listings of the decks. */

-- Edits to Abzan Aristocrats
-- Edits to Jund Sacrifice
-- Edits to Sultai Graveyard
