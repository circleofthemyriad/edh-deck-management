/*
This script is intended to be a practice of mySQL calisthenics. For good practice, nothing in this
will be shortcutted and intended souly to provide in and out experience with basic database design,
table creation and updating, and database recovery
Author  : Steven D. Guthrie
Date    : June 9, 2019
Title   : EDH/Commander Planeswalkers for My Top Commander Decks
*/

-- Be sure to specify "USE" and then the specified database at the beginning of the script.
USE edh_decks;

-- Create Table: deck_planeswalkers
DROP TABLE IF EXISTS deck_planeswalkers;
CREATE TABLE deck_planeswalkers
	(
	planeswalker_name VARCHAR(30) NOT NULL,
    planeswalker_set VARCHAR(20) NOT NULL,
    planeswalker_function VARCHAR(45) NOT NULL,
    planeswalker_mana VARCHAR(15) NOT NULL,
    planeswalker_deck VARCHAR(60) NOT NULL,
    PRIMARY KEY (planeswalker_name,planeswalker_deck),
    FOREIGN KEY (planeswalker_deck) REFERENCES edh_decks.deck_overview(deck_commander_ID)
    ON DELETE CASCADE
	);

/*
	NOTE: Planeswalkers are permanent types that I constantly fluctuate on their usefulness
    or need within a deck, therefore this list and table are all planeswalkers that I would
    consider to be top picks for a deck, but some may not be included in final lists.
*/
-- Below are the planeswalkers for: Golgari Eldrazi
INSERT INTO deck_planeswalkers(planeswalker_name,planeswalker_set,planeswalker_function,planeswalker_mana,planeswalker_deck)
	VALUES ('Liliana, Dreadhorde General','War of the Spark','Card Draw / Removal','{4}{B}{B}','Meren of Clan Nel Toth');
INSERT INTO deck_planeswalkers(planeswalker_name,planeswalker_set,planeswalker_function,planeswalker_mana,planeswalker_deck)
	VALUES ('Ugin, the Ineffable','War of the Spark','Card Draw / Tokens','{6}','Meren of Clan Nel Toth');
INSERT INTO deck_planeswalkers(planeswalker_name,planeswalker_set,planeswalker_function,planeswalker_mana,planeswalker_deck)
	VALUES ('Vraska, Golgari Queen','Guilds of Ravnica','Card Draw / Removal','{2}{B}{G}','Meren of Clan Nel Toth');

-- Below are the planeswalkers for: Jund Sacrifice
INSERT INTO deck_planeswalkers(planeswalker_name,planeswalker_set,planeswalker_function,planeswalker_mana,planeswalker_deck)
	VALUES ('Liliana, Dreadhorde General','War of the Spark','Card Draw / Removal','{4}{B}{B}','Prossh, Skyraider of Kher');
INSERT INTO deck_planeswalkers(planeswalker_name,planeswalker_set,planeswalker_function,planeswalker_mana,planeswalker_deck)
	VALUES ('Domri, Anarch of Bolas','War of the Spark','Creature Protection / Removal','{1}{R}{G}','Prossh, Skyraider of Kher');
INSERT INTO deck_planeswalkers(planeswalker_name,planeswalker_set,planeswalker_function,planeswalker_mana,planeswalker_deck)
	VALUES ('Nissa, Vital Force','Kaladesh','Card Draw / Token','{3}{G}{G}','Prossh, Skyraider of Kher');
INSERT INTO deck_planeswalkers(planeswalker_name,planeswalker_set,planeswalker_function,planeswalker_mana,planeswalker_deck)
	VALUES ('Liliana, Deaths Majesty','Amonkhet','Reanimate / Removal','{3}{B}{B}','Prossh, Skyraider of Kher');

-- Below are the planeswalkers for: Abzan Aristocrats
INSERT INTO deck_planeswalkers(planeswalker_name,planeswalker_set,planeswalker_function,planeswalker_mana,planeswalker_deck)
	VALUES ('Sorin, Vengeful Bloodlord','War of the Spark','Reanimate / Life Gain','{2}{W}{B}','Karador, Ghost Chieftain');

-- Below are the planeswalkers for: Sultai Graveyard
INSERT INTO deck_planeswalkers(planeswalker_name,planeswalker_set,planeswalker_function,planeswalker_mana,planeswalker_deck)
	VALUES ('Tamiyo, Collector of Tales','War of the Spark','Mill / Card Draw','{2}{G}{U}','The Mimeoplasm');
INSERT INTO deck_planeswalkers(planeswalker_name,planeswalker_set,planeswalker_function,planeswalker_mana,planeswalker_deck)
	VALUES ('Kiora, Master of the Depths','Battle for Zendikar','Mill / Card Draw','{2}{G}{U}','The Mimeoplasm');
