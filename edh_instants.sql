/*
This script is intended to be a practice of mySQL calisthenics. For good practice, nothing in this
will be shortcutted and intended souly to provide in and out experience with basic database design,
table creation and updating, and database recovery
Author  : Steven D. Guthrie
Date    : June 24, 2019
Title   : EDH/Commander Instants for My Top Commander Decks
*/

-- Be sure to specify "USE" and then the specified database at the beginning of the script.
/*
NOTE! Use the "USE" funciton carefully, and when you want to use a different database,
be sure to select the appropriate database otherwise ALL commands will use the previously
selected database.
*/
USE edh_decks;

-- "DROP TABLE" is to ensure that when we execute this function, there is not already another
--  table that exists with the same name.
DROP TABLE IF EXISTS deck_instants;
CREATE TABLE deck_instants
	(
    instant_name VARCHAR(30) NOT NULL,
    instant_set VARCHAR(30) NOT NULL,
    instant_function VARCHAR(45) NOT NULL,
    instant_mana VARCHAR(15) NOT NULL,
    instant_deck VARCHAR(60) NOT NULL,
    PRIMARY KEY (instant_name,instant_deck),
    FOREIGN KEY (instant_deck) REFERENCES edh_decks.deck_overview(deck_commander_ID)
    ON DELETE CASCADE
    );

-- Below are the Instants listed for: Golgari Eldrazi
INSERT INTO deck_instants (instant_name,instant_set,instant_function,instant_mana,instant_deck)
	VALUES ('Abrupt Decay','Return to Ravnica','Target Removal','{B}{G}','Meren of Clan Nel Toth');
INSERT INTO deck_instants (instant_name,instant_set,instant_function,instant_mana,instant_deck)
	VALUES ('Assassins Trophy','Guilds of Ravnica','Target Removal','{B}{G}','Meren of Clan Nel Toth');
INSERT INTO deck_instants (instant_name,instant_set,instant_function,instant_mana,instant_deck)
	VALUES ('Entomb','Ultimate Masters','Fill Graveyard','{B}','Meren of Clan Nel Toth');
INSERT INTO deck_instants (instant_name,instant_set,instant_function,instant_mana,instant_deck)
	VALUES ('Grisly Salvage','Return to Ravnica','Fill Graveyard','{B}{G}','Meren of Clan Nel Toth');

-- Below are the Instants listed for: Jund Sacrifice
INSERT INTO deck_instants (instant_name,instant_set,instant_function,instant_mana,instant_deck)
	VALUES ('Abrupt Decay','Return to Ravnica','Target Removal','{B}{G}','Prossh, SKyraider of Kher');
INSERT INTO deck_instants (instant_name,instant_set,instant_function,instant_mana,instant_deck)
	VALUES ('Assassins Trophy','Guilds of Ravnica','Target Removal','{B}{G}','Prossh, Skyraider of Kher');
INSERT INTO deck_instants (instant_name,instant_set,instant_function,instant_mana,instant_deck)
	VALUES ('Chaos Warp','Commander 2017','Potential Target Removal','{2}{R}','Prossh, Skyraider of Kher');
INSERT INTO deck_instants (instant_name,instant_set,instant_function,instant_mana,instant_deck)
	VALUES ('Terminate','Alara Reborn','Target Removal','{B}{R}','Prossh, Skyraider of Kher');
INSERT INTO deck_instants (instant_name,instant_set,instant_function,instant_mana,instant_deck)
	VALUES ('Windgraces Judgment','Commander 2018','Mass Target Removal','{3}{B}{G}','Prossh, Skyraider of Kher');

-- Below are the Instants listed for: Sultai Graveyard
INSERT INTO deck_instants (instant_name,instant_set,instant_function,instant_mana,instant_deck)
	VALUES ('Chord of Calling','Ravnica: City of Guilds','Creature Tutor','{X}{G}{G}{G}','The Mimeoplasm');
INSERT INTO deck_instants (instant_name,instant_set,instant_function,instant_mana,instant_deck)
	VALUES ('Counterspell','Jace v Chandra','Counter Magic','{U}{U}','The Mimeoplasm');
INSERT INTO deck_instants (instant_name,instant_set,instant_function,instant_mana,instant_deck)
	VALUES ('Crop Rotation','Urzas Saga','Mana Ramp','{G}','The Mimeoplasm');
INSERT INTO deck_instants (instant_name,instant_set,instant_function,instant_mana,instant_deck)
	VALUES ('Disallow','Kaladesh','Counter Magic','{1}{U}{U}','The Mimeoplasm');
INSERT INTO deck_instants (instant_name,instant_set,instant_function,instant_mana,instant_deck)
	VALUES ('Flash','Mirage','Creature Summon','{1}{U}','The Mimeoplasm');
INSERT INTO deck_instants (instant_name,instant_set,instant_function,instant_mana,instant_deck)
	VALUES ('Frantic Search','Urzas Legacy','Card Draw / Graveyard Fill','{2}{U}','The Mimeoplasm');
INSERT INTO deck_instants (instant_name,instant_set,instant_function,instant_mana,instant_deck)
	VALUES ('Ghostly Flicker','Avacyn Restored','Blink','{2}{U}','The Mimeoplasm');
INSERT INTO deck_instants (instant_name,instant_set,instant_function,instant_mana,instant_deck)
	VALUES ('Krosan Grip','Time Spiral','Target Removal','{2}{G}','The Mimeoplasm');
INSERT INTO deck_instants (instant_name,instant_set,instant_function,instant_mana,instant_deck)
	VALUES ('Undying Evil','Dark Ascension','Creature Protection','{B}','The Mimeoplasm');
INSERT INTO deck_instants (instant_name,instant_set,instant_function,instant_mana,instant_deck)
	VALUES ('Vampiric Tutor','Eternal Masters','Tutor','{B}','The Mimeoplasm');
INSERT INTO deck_instants (instant_name,instant_set,instant_function,instant_mana,instant_deck)
	VALUES ('Worldly Tutor','Mirage','Tutor','{G}','The Mimeoplasm');

-- Below are the Instants listed for: Abzan Aristocrats
INSERT INTO deck_instants (instant_name,instant_set,instant_function,instant_mana,instant_deck)
	VALUES ('Anguished Unmaking','Shadows Over Innistrad','Target Removal','{1}{W}{B}','Karador, Ghost Chieftain');
INSERT INTO deck_instants (instant_name,instant_set,instant_function,instant_mana,instant_deck)
	VALUES ('Assassins Trophy','Guilds of Ravnica','Target Removal','{B}{G}','Karador, Ghost Chieftain');
INSERT INTO deck_instants (instant_name,instant_set,instant_function,instant_mana,instant_deck)
	VALUES ('Entomb','Odyssey','Graveyard Fill','{B}','Karador, Ghost Chieftain');
INSERT INTO deck_instants (instant_name,instant_set,instant_function,instant_mana,instant_deck)
	VALUES ('Path to Exile','Conflux','Target Removal','{W}','Karador, Ghost Chieftain');

/* Below are all Additions/Removals from the above Alpha Listings of the decks. */
