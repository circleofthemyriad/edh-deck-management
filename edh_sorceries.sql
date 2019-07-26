/*
This script is intended to be a practice of mySQL calisthenics. For good practice, nothing in this
will be shortcutted and intended souly to provide in and out experience with basic database design,
table creation and updating, and database recovery
Author  : Steven D. Guthrie
Date    : June 9, 2019
Title   : EDH/Commander Sorceries for My Top Commander Decks
*/

-- Be sure to specify "USE" and then the specified database at the beginning of the script.
USE edh_decks;

-- Create Table: deck_sorceries
DROP TABLE IF EXISTS deck_sorceries;
CREATE TABLE deck_sorceries
	(
	sorcery_name VARCHAR(30) NOT NULL,
    sorcery_set VARCHAR(30) NOT NULL,
    sorcery_function VARCHAR(45) NOT NULL,
    sorcery_mana VARCHAR(15) NOT NULL,
    sorcery_deck VARCHAR(60) NOT NULL,
    PRIMARY KEY (sorcery_name,sorcery_deck),
    FOREIGN KEY (sorcery_deck) REFERENCES edh_decks.deck_overview(deck_commander_ID)
    ON DELETE CASCADE
	);

-- Below are the Sorceries listed for: Golgari Eldrazi
INSERT INTO deck_sorceries (sorcery_name,sorcery_set,sorcery_function,sorcery_mana,sorcery_deck)
	VALUES ('Buried Alive','Ultimate Masters','Fill Graveyard','{2}{B}','Meren of Clan Nel Toth');
INSERT INTO deck_sorceries (sorcery_name,sorcery_set,sorcery_function,sorcery_mana,sorcery_deck)
	VALUES ('Casualties of War','War of the Spark','Mass Selected Removal','{2}{B}{B}{G}{G}','Meren of Clan Nel Toth');
INSERT INTO deck_sorceries (sorcery_name,sorcery_set,sorcery_function,sorcery_mana,sorcery_deck)
	VALUES ('Demonic Tutor','Ultimate Masters','Card Selection','{1}{B}','Meren of Clan Nel Toth');
INSERT INTO deck_sorceries (sorcery_name,sorcery_set,sorcery_function,sorcery_mana,sorcery_deck)
	VALUES ('Diabolic Intent','Battlebond','Sacrifice / Tutor','{1}{B}','Meren of Clan Nel Toth');
INSERT INTO deck_sorceries (sorcery_name,sorcery_set,sorcery_function,sorcery_mana,sorcery_deck)
	VALUES ('Eldritch Evolution','Eldritch Evolution','Sacrifice / Tutor','{1}{G}{G}','Meren of Clan Nel Toth');
INSERT INTO deck_sorceries (sorcery_name,sorcery_set,sorcery_function,sorcery_mana,sorcery_deck)
	VALUES ('Finale of Devastation','War of the Spark','Tutor','{X}{G}{G}','Meren of Clan Nel Toth');
INSERT INTO deck_sorceries (sorcery_name,sorcery_set,sorcery_function,sorcery_mana,sorcery_deck)
	VALUES ('Finale of Eternity','War of the Spark','Fill Graveyard','{X}{B}{B}','Meren of Clan Nel Toth');
INSERT INTO deck_sorceries (sorcery_name,sorcery_set,sorcery_function,sorcery_mana,sorcery_deck)
	VALUES ('Jarads Orders','Return to Ravnica','Tutor','{2}{B}{G}','Meren of Clan Nel Toth');
INSERT INTO deck_sorceries (sorcery_name,sorcery_set,sorcery_function,sorcery_mana,sorcery_deck)
	VALUES ('Living Death','Tempest','Mass Removal / Reanimation','{3}{B}{B}','Meren of Clan Nel Toth');
INSERT INTO deck_sorceries (sorcery_name,sorcery_set,sorcery_function,sorcery_mana,sorcery_deck)
	VALUES ('Primal Growth','Planeshift','Sacrifice / Mana Ramp','{2}{G}','Meren of Clan Nel Toth');
INSERT INTO deck_sorceries (sorcery_name,sorcery_set,sorcery_function,sorcery_mana,sorcery_deck)
	VALUES ('Reanimate','Ultimate Masters','Reanimation','{B}','Meren of Clan Nel Toth');
INSERT INTO deck_sorceries (sorcery_name,sorcery_set,sorcery_function,sorcery_mana,sorcery_deck)
	VALUES ('Victimize','Eternal Masters','Reanimation','{2}{B}','Meren of Clan Nel Toth');

-- Below are the Sorceries listed for: Jund Sacrifice
INSERT INTO deck_sorceries (sorcery_name,sorcery_set,sorcery_function,sorcery_mana,sorcery_deck)
	VALUES ('Explosive Vegetation','Conspiracy','Mana Ramp','{3}{G}','Prossh, Skyraider of Kher');
INSERT INTO deck_sorceries (sorcery_name,sorcery_set,sorcery_function,sorcery_mana,sorcery_deck)
	VALUES ('Killing Wave','Avacyn Restored','Mass Creature Removal','{X}{B}','Prossh, Skyraider of Kher');
INSERT INTO deck_sorceries (sorcery_name,sorcery_set,sorcery_function,sorcery_mana,sorcery_deck)
	VALUES ('Kodamas Reach','Champions of Kamigawa','Mana Ramp','{2}{G}','Prossh, Skyraider of Kher');
INSERT INTO deck_sorceries (sorcery_name,sorcery_set,sorcery_function,sorcery_mana,sorcery_deck)
	VALUES ('Maelstrom Pulse','Alara Reborn','Mass Removal','{1}{B}{G}','Prossh, Skyraider of Kher');
INSERT INTO deck_sorceries (sorcery_name,sorcery_set,sorcery_function,sorcery_mana,sorcery_deck)
	VALUES ('Mass Mutiny','Explorers of Ixalan','Creature Stealing','{3}{R}{R}','Prossh, Skyraider of Kher');
INSERT INTO deck_sorceries (sorcery_name,sorcery_set,sorcery_function,sorcery_mana,sorcery_deck)
	VALUES ('Reprocess','Urzas Saga','Card Draw and Sacrifice','{2}{B}{B}','Prossh, Skyraider of Kher');
INSERT INTO deck_sorceries (sorcery_name,sorcery_set,sorcery_function,sorcery_mana,sorcery_deck)
	VALUES ('Tempt with Vengeance','Commander 2013','Sacrifice Fodder','{X}{R}','Prossh, Skyraider of Kher');
INSERT INTO deck_sorceries (sorcery_name,sorcery_set,sorcery_function,sorcery_mana,sorcery_deck)
	VALUES ('Torment of Hailfire','Hour of Devastation','Mana Ramp','{3}{G}','Prossh, Skyraider of Kher');
INSERT INTO deck_sorceries (sorcery_name,sorcery_set,sorcery_function,sorcery_mana,sorcery_deck)
	VALUES ('Toxic Deluge','Eternal Masters','Mass Creature Removal','{2}{B}','Prossh, Skyraider of Kher');
INSERT INTO deck_sorceries (sorcery_name,sorcery_set,sorcery_function,sorcery_mana,sorcery_deck)
	VALUES ('Treasured Find','Return to Ravnica','Recursion','{B}{G}','Prossh, Skyraider of Kher');

-- Below are the Sorceries listed for: Sultai Graveyard
INSERT INTO deck_sorceries (sorcery_name,sorcery_set,sorcery_function,sorcery_mana,sorcery_deck)
	VALUES ('Buried Alive','Ultimate Masters','Fill Graveyard','{2}{B}','The Mimeoplasm');
INSERT INTO deck_sorceries (sorcery_name,sorcery_set,sorcery_function,sorcery_mana,sorcery_deck)
	VALUES ('Cultivate','Magic 2011','Mana Ramp','{2}{G}','The Mimeoplasm');
INSERT INTO deck_sorceries (sorcery_name,sorcery_set,sorcery_function,sorcery_mana,sorcery_deck)
	VALUES ('Demonic Tutor','Ultimate Masters','Card Selection','{1}{B}','The Mimeoplasm');
INSERT INTO deck_sorceries (sorcery_name,sorcery_set,sorcery_function,sorcery_mana,sorcery_deck)
	VALUES ('Eldritch Evolution','Eldritch Evolution','Sacrifice / Tutor','{1}{G}{G}','The Mimeoplasm');
INSERT INTO deck_sorceries (sorcery_name,sorcery_set,sorcery_function,sorcery_mana,sorcery_deck)
	VALUES ('Lifes Finale','New Phyrexia','Mass Removal','{4}{B}{B}','The Mimeoplasm');
INSERT INTO deck_sorceries (sorcery_name,sorcery_set,sorcery_function,sorcery_mana,sorcery_deck)
	VALUES ('Living Death','Tempest','Mass Removal / Recursion','{3}{B}{B}','The Mimeoplasm');
INSERT INTO deck_sorceries (sorcery_name,sorcery_set,sorcery_function,sorcery_mana,sorcery_deck)
	VALUES ('Reanimate','Ultimate Masters','Recursion','{B}','The Mimeoplasm');
INSERT INTO deck_sorceries (sorcery_name,sorcery_set,sorcery_function,sorcery_mana,sorcery_deck)
	VALUES ('Skyshroud Claim','Nemesis','Mana Ramp','{3}{G}','The Mimeoplasm');
INSERT INTO deck_sorceries (sorcery_name,sorcery_set,sorcery_function,sorcery_mana,sorcery_deck)
	VALUES ('Tooth and Nail','Mirrodin','Tutor / Creature Summon','{5}{G}{G}','The Mimeoplasm');
INSERT INTO deck_sorceries (sorcery_name,sorcery_set,sorcery_function,sorcery_mana,sorcery_deck)
	VALUES ('Victimize','Urzas Saga','Sacrifice / Recursion','{2}{B}','The Mimeoplasm');
INSERT INTO deck_sorceries (sorcery_name,sorcery_set,sorcery_function,sorcery_mana,sorcery_deck)
	VALUES ('Windfall','Urzas Saga','Discard / Card Draw','{2}{U}','The Mimeoplasm');

-- Below are the Sorceries listed for: Abzan Aristocrats
INSERT INTO deck_sorceries (sorcery_name,sorcery_set,sorcery_function,sorcery_mana,sorcery_deck)
	VALUES ('Buried Alive','Ultimate Masters','Fill Graveyard','{2}{B}','Karador, Ghost Chieftain');
INSERT INTO deck_sorceries (sorcery_name,sorcery_set,sorcery_function,sorcery_mana,sorcery_deck)
	VALUES ('Eldritch Evolution','Eldritch Evolution','Sacrifice / Tutor','{1}{G}{G}','Karador, Ghost Chieftain');
INSERT INTO deck_sorceries (sorcery_name,sorcery_set,sorcery_function,sorcery_mana,sorcery_deck)
	VALUES ('Living Death','Tempest','Mass Removal / Recursion','{3}{B}{B}','Karador, Ghost Chieftain');
INSERT INTO deck_sorceries (sorcery_name,sorcery_set,sorcery_function,sorcery_mana,sorcery_deck)
	VALUES ('Reanimate','Ultimate Masters','Recursion','{B}','Karador, Ghost Chieftain');
INSERT INTO deck_sorceries (sorcery_name,sorcery_set,sorcery_function,sorcery_mana,sorcery_deck)
	VALUES ('Unburial Rites','Innistrad','Recursion','{4}{B}','Karador, Ghost Chieftain');
INSERT INTO deck_sorceries (sorcery_name,sorcery_set,sorcery_function,sorcery_mana,sorcery_deck)
	VALUES ('Victimize','Urzas Saga','Sacrifice / Recursion','{2}{B}','Karador, Ghost Chieftain');
INSERT INTO deck_sorceries (sorcery_name,sorcery_set,sorcery_function,sorcery_mana,sorcery_deck)
	VALUES ('Wrath of God','Tenth Edition','Mass Creature Removal','{2}{W}{W}','Karador, Ghost Chieftain');

/* Below are all Additions/Removals from the above Alpha Listings of the decks. */
