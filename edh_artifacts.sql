/*
This script is intended to be a practice of mySQL calisthenics. For good practice, nothing in this
will be shortcutted and intended souly to provide in and out experience with basic database design,
table creation and updating, and database recovery
Author  : Steven D. Guthrie
Date    : May 31, 2019
Title   : EDH/Commander Artifacts for My Top Commander Decks
*/

-- Be sure to specify "USE" and then the specified database at the beginning of the script.
USE edh_decks;

-- "DROP TABLE" is to ensure that when we execute this function, there is not already another
--  table that exists with the same name.
DROP TABLE IF EXISTS deck_artifacts;
CREATE TABLE deck_artifacts
	(
	artifact_name VARCHAR(30),
    artifact_set VARCHAR(30),
    artifact_function VARCHAR(60),
    artifact_mana VARCHAR(15),
    artifact_deck VARCHAR(60),
    PRIMARY KEY (artifact_name,artifact_deck),
    FOREIGN KEY (artifact_deck) REFERENCES edh_decks.deck_overview(deck_commander_ID)
    ON DELETE CASCADE
	);

-- Artifacts for Abzan Aristocrats Deck:
INSERT INTO deck_artifacts
	VALUES('Sol Ring','Commander Anthology Volume II','Mana Ramp','{C}','Karador, Ghost Chieftain');
INSERT INTO deck_artifacts
	VALUES('Altar of Dementia','Modern Horizons','Self Mill','{2}','Karador, Ghost Chieftain');
INSERT INTO deck_artifacts
	VALUES('Ashnods Altar','Eternal Masters','Sacrifice Outlet + Mana Ramp','{3}','Karador, Ghost Chieftain');
INSERT INTO deck_artifacts
	VALUES('Birthing Pod','New Phyrexia','Sacrifice Outlet + Creature Tutor','{3}{G}','Karador, Ghost Chieftain');
INSERT INTO deck_artifacts
	VALUES('Golgari Signet','Ravnica: City of Guilds','Mana Ramp','{2}','Karador, Ghost Chieftain');
INSERT INTO deck_artifacts
	VALUES('Panharmonicon','Kaladesh','Additional Utility','{4}','Karador, Ghost Chieftain');
INSERT INTO deck_artifacts
	VALUES('Phyrexian Altar','Ultimate Masters','Sacrifice Outlet + Mana Ramp','{3}','Karador, Ghost Chieftain');
INSERT INTO deck_artifacts
	VALUES('Skullclamp','Darksteel','Sacrifice Outlet + Card Draw','{1}','Karador, Ghost Chieftain');

-- Artifacts for Jund Sacrifice Deck:
INSERT INTO deck_artifacts
	VALUES('Sol Ring','Commander Anthology Volume II','Mana Ramp','{C}','Prossh, Skyraider of Kher');
INSERT INTO deck_artifacts
	VALUES('Ashnods Altar','Eternal Masters','Sacrifice Outlet + Mana Ramp','{3}','Prossh, Skyraider of Kher');
INSERT INTO deck_artifacts
	VALUES('Skullclamp','Darksteel','Sacrifice Outlet + Card Draw','{1}','Prossh, Skyraider of Kher');
INSERT INTO deck_artifacts
	VALUES('Rakdos Signet','Dissension','Mana Ramp','{2}','Prossh, Skyraider of Kher');
INSERT INTO deck_artifacts
	VALUES('Eldrazi Monument','Zendikar','Sacrifice Outlet + Utility','{5}','Prossh, Skyraider of Kher');

-- Artifacts for Sultai Graveyard Deck:
INSERT INTO deck_artifacts
	VALUES('Sol Ring','Commander Anthology Volume II','Mana Ramp','{C}','The Mimeoplasm');
INSERT INTO deck_artifacts
	VALUES('Birthing Pod','New Phyrexia','Sacrifice Outlet + Creature Tutor','{3}{G}','The Mimeoplasm');
INSERT INTO deck_artifacts
	VALUES('Lightning Greaves','Mirrodin','Protection + Haste','{2}','The Mimeoplasm');
INSERT INTO deck_artifacts
	VALUES('Swiftfoot Boots','Magic 2012','Protection + Haste','{2}','The Mimeoplasm');

-- #################################################################################################### --
SELECT * FROM edh_decks.deck_artifacts;

-- Total Artifacts in Each Deck:
SELECT artifact_deck,
	COUNT(artifact_deck) AS Total
FROM
	edh_decks.deck_artifacts
GROUP BY artifact_deck;
