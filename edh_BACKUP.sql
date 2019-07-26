/*
This script is intended to be a practice of mySQL calisthenics. For good practice, nothing in this
will be shortcutted and intended souly to provide in and out experience with basic database design,
table creation and updating, and database recovery
Author  : Steven D. Guthrie
Date    : May 15, 2019
Title   : EDH/Commander Deck Organization
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
DROP TABLE IF EXISTS deck_overview;
CREATE TABLE deck_overview
	(
    deck_name VARCHAR(30) UNIQUE,
    deck_commander_ID VARCHAR(60) NOT NULL,
    deck_color_ID VARCHAR(10) NOT NULL,
    deck_sleeves VARCHAR(30) NOT NULL,
    inner_sleeves VARCHAR(40) NOT NULL,
    deck_case VARCHAR(40) NOT NULL,
    PRIMARY KEY (deck_commander_ID)
  );

DROP TABLE IF EXISTS deck_creatures;
CREATE TABLE deck_creatures
	(
    crtr_name VARCHAR(30) NOT NULL,
    crtr_cmc TINYINT NOT NULL,
    crtr_mana VARCHAR(20) NOT NULL,
    crtr_colors VARCHAR(20) NOT NULL,
    crtr_impact VARCHAR(4) NOT NULL,     -- LOW/MED/HIGH
    deck_commander_ID VARCHAR(60) NOT NULL,
    PRIMARY KEY (deck_commander_ID,crtr_name),
    FOREIGN KEY (deck_commander_ID) REFERENCES edh_decks.deck_overview(deck_commander_ID)
    ON DELETE CASCADE
	);

-- Below are the Two Control decks that I hope to invest in
INSERT INTO deck_overview (deck_name,deck_commander_ID,deck_color_ID,deck_sleeves,inner_sleeves,deck_case)
	VALUES('Esper Control','Sharuum the Hegemon','W/U/B','Dragon Shield Matte Jet',
    'Dragon Shield Perfect Fit Sealable Smoke','Ultimate Guard Boulder Frosted');
INSERT INTO deck_overview (deck_name,deck_commander_ID,deck_color_ID,deck_sleeves,inner_sleeves,deck_case)
	VALUES('Grixis Control','Nekusar, the Mindrazer','U/B/R','Dragon Shield Matte Jet',
    'Dragon Shield Perfect Fit Sealable Smoke','Ultimate Guard Boulder Frosted');
-- Below are the Four Graveyard Midrange deck that I hope to build and Temur Midrange
INSERT INTO deck_overview (deck_name,deck_commander_ID,deck_color_ID,deck_sleeves,inner_sleeves,deck_case)
	VALUES('Abzan Aristocrats','Karador, Ghost Chieftain','W/B/G','Dragon Shield Matte Slate',
    'Dragon Shield Perfect Fit Sealable Clear','Ultimate Guard Boulder Poppy Topaz');
INSERT INTO deck_overview (deck_name,deck_commander_ID,deck_color_ID,deck_sleeves,inner_sleeves,deck_case)
	VALUES('Jund Sacrifice','Prossh, Skyraider of Kher','B/R/G','Dragon Shield Matte Slate',
    'Dragon Shield Perfect Fit Sealable Clear','Ultimate Guard Boulder Rhodonite');
INSERT INTO deck_overview (deck_name,deck_commander_ID,deck_color_ID,deck_sleeves,inner_sleeves,deck_case)
	VALUES('Sultai Graveyard','The Mimeoplasm','U/B/G','Dragon Shield Matte Slate',
    'Dragon Shield Perfect Fit Sealable Clear','Ultimate Guard Boulder Malachite');
INSERT INTO deck_overview (deck_name,deck_commander_ID,deck_color_ID,deck_sleeves,inner_sleeves,deck_case)
	VALUES('Golgari Eldrazi','Meren of Clan Nel Toth','B/G','Dragon Shield Matte Magenta',
    'Dragon Shield Perfect Fit Sealable Clear','Ultimate Guard Boulder Onyx');
INSERT INTO deck_overview (deck_name,deck_commander_ID,deck_color_ID,deck_sleeves,inner_sleeves,deck_case)
	VALUES('Temur Clones','Riku of Two Reflections','U/R/G','Dragon Shield Matte Night Blue',
    'Dragon Shield Perfect Fit Sealable Clear','Ultimate Guard Boulder Amethyst');


-- Below are the Precon Upgrades that I will build in the future
INSERT INTO deck_overview (deck_name,deck_commander_ID,deck_color_ID,deck_sleeves,inner_sleeves,deck_case)
	VALUES('Esper Miracles','Yennett, Cryptic Sovereign','W/U/B','KMC Hyper Matte Blue',
    'KMC Perfect Inner Clear','Ultimate Guard Deck Case Purple');
/*
INSERT INTO deck_overview(deck_name,deck_commander_ID,deck_color_ID,deck_sleeves,inner_sleeves,deck_case)
	VALUES('','','','KMC Hyper Matte Red','KMC Perfect Fit Clear','Ultimate Guard Deck Case Red/Burgundy');
*/

-- ##################################################################################################### --
SELECT * FROM edh_decks.deck_overview;

-- Select only the B/G "The Rock" style decks from the database:
DROP VIEW IF EXISTS edh_rock_decks;
CREATE VIEW edh_rock_decks AS
SELECT deck_name, deck_commander_ID, deck_color_ID, deck_sleeves, deck_case
FROM deck_overview WHERE deck_color_ID LIKE '%B%G';

SELECT * FROM edh_rock_decks;
-- END OF VIEW QUERY

-- Select only the U/B "Control" style decks from the database:
DROP VIEW IF EXISTS edh_control_decks;
CREATE VIEW edh_control_decks AS
SELECT deck_name, deck_commander_ID, deck_color_ID, deck_sleeves, deck_case
FROM deck_overview WHERE deck_color_ID NOT LIKE '%G';

SELECT * FROM edh_control_decks;
-- END OF VIEW QUERY
-- ##################################################################################################### --

-- Now we will include creatures from the Sultai Graveyard deck:
/*
	This "Sulltai Graveyard" deck is an EDH deck that looks to draw and mill a majority of not only
	out deck's cards, but also our opponents. So that when The The Mimeoplasm comes into play, they have
    a lot of targets for their ability.
*/
-- Creatures are listed in alphabetical order.
INSERT INTO deck_creatures (crtr_name,crtr_cmc,crtr_mana,crtr_colors,crtr_impact,deck_commander_ID)
	VALUES('Avatar of Woe',8,'{6}{B}{B}','B','MED','The Mimeoplasm');
INSERT INTO deck_creatures (crtr_name,crtr_cmc,crtr_mana,crtr_colors,crtr_impact,deck_commander_ID)
	VALUES('Bane of Progress',6,'{4}{G}{G}','G','HIGH','The Mimeoplasm');
INSERT INTO deck_creatures (crtr_name,crtr_cmc,crtr_mana,crtr_colors,crtr_impact,deck_commander_ID)
	VALUES('Body Double',5,'{4}{U}','U','LOW','The Mimeoplasm');
INSERT INTO deck_creatures (crtr_name,crtr_cmc,crtr_mana,crtr_colors,crtr_impact,deck_commander_ID)
	VALUES('Brawn',4,'{3}{G}','G','LOW','The Mimeoplasm');
INSERT INTO deck_creatures (crtr_name,crtr_cmc,crtr_mana,crtr_colors,crtr_impact,deck_commander_ID)
	VALUES('Consecrated Sphinx',6,'{4}{U}{U}','U','HIGH','The Mimeoplasm');
INSERT INTO deck_creatures (crtr_name,crtr_cmc,crtr_mana,crtr_colors,crtr_impact,deck_commander_ID)
	VALUES('Consuming Aberration',5,'{3}{U}{B}','U/B','HIGH','The Mimeoplasm');
INSERT INTO deck_creatures (crtr_name,crtr_cmc,crtr_mana,crtr_colors,crtr_impact,deck_commander_ID)
	VALUES('Deadeye Navigator',6,'{4}{U}{U}','U','HIGH','The Mimeoplasm');
INSERT INTO deck_creatures (crtr_name,crtr_cmc,crtr_mana,crtr_colors,crtr_impact,deck_commander_ID)
	VALUES('Deathrite Shaman',1,'{B/G}','B/G','MED','The Mimeoplasm');
INSERT INTO deck_creatures (crtr_name,crtr_cmc,crtr_mana,crtr_colors,crtr_impact,deck_commander_ID)
	VALUES('Decimator of Provinces',10,'{10}','G','MED','The Mimeoplasm');
INSERT INTO deck_creatures (crtr_name,crtr_cmc,crtr_mana,crtr_colors,crtr_impact,deck_commander_ID)
	VALUES('Diluvian Primordial',7,'{5}{U}{U}','U','HIGH','The Mimeoplasm');
INSERT INTO deck_creatures (crtr_name,crtr_cmc,crtr_mana,crtr_colors,crtr_impact,deck_commander_ID)
	VALUES('Elvish Piper',4,'{4}{G}','G','MED','The Mimeoplasm');
INSERT INTO deck_creatures (crtr_name,crtr_cmc,crtr_mana,crtr_colors,crtr_impact,deck_commander_ID)
	VALUES('Eternal Witness',3,'{1}{G}{G}','G','LOW','The Mimeoplasm');
INSERT INTO deck_creatures (crtr_name,crtr_cmc,crtr_mana,crtr_colors,crtr_impact,deck_commander_ID)
	VALUES('Fauna Shaman',2,'{1}{G}','G','MED','The Mimeoplasm');
INSERT INTO deck_creatures (crtr_name,crtr_cmc,crtr_mana,crtr_colors,crtr_impact,deck_commander_ID)
	VALUES('Glen Elendra Archmage',4,'{3}{U}','U','HIGH','The Mimeoplasm');
INSERT INTO deck_creatures (crtr_name,crtr_cmc,crtr_mana,crtr_colors,crtr_impact,deck_commander_ID)
	VALUES('Jin-Gitaxias, Core Augur',10,'{8}{U}{U}','U','HIGH','The Mimeoplasm');
INSERT INTO deck_creatures (crtr_name,crtr_cmc,crtr_mana,crtr_colors,crtr_impact,deck_commander_ID)
	VALUES('Kederekt Leviathan',8,'{6}{U}{U}','U','MED','The Mimeoplasm');
INSERT INTO deck_creatures (crtr_name,crtr_cmc,crtr_mana,crtr_colors,crtr_impact,deck_commander_ID)
	VALUES('Lord of Extinction',5,'{3}{B}{G}','B/G','HIGH','The Mimeoplasm');
INSERT INTO deck_creatures (crtr_name,crtr_cmc,crtr_mana,crtr_colors,crtr_impact,deck_commander_ID)
	VALUES('Massacre Wurm',6,'{3}{B}{B}{B}','B','HIGH','The Mimeoplasm');
INSERT INTO deck_creatures (crtr_name,crtr_cmc,crtr_mana,crtr_colors,crtr_impact,deck_commander_ID)
	VALUES('Mikaeus, the Unhallowed',6,'{3}{B}{B}{B}','B','HIGH','The Mimeoplasm');
INSERT INTO deck_creatures (crtr_name,crtr_cmc,crtr_mana,crtr_colors,crtr_impact,deck_commander_ID)
	VALUES('Necrotic Ooze',4,'{2}{B}{B}','B','MED','The Mimeoplasm');
INSERT INTO deck_creatures (crtr_name,crtr_cmc,crtr_mana,crtr_colors,crtr_impact,deck_commander_ID)
	VALUES('Nyx Weaver',3,'{1}{B}{G}','B/G','LOW','The Mimeoplasm');
INSERT INTO deck_creatures (crtr_name,crtr_cmc,crtr_mana,crtr_colors,crtr_impact,deck_commander_ID)
	VALUES('Phyrexian Metamorph',4,'{3}{U}','U','MED','The Mimeoplasm');
INSERT INTO deck_creatures (crtr_name,crtr_cmc,crtr_mana,crtr_colors,crtr_impact,deck_commander_ID)
	VALUES('Sakashima the Impostor',4,'{2}{U}{U}','U','MED','The Mimeoplasm');
INSERT INTO deck_creatures (crtr_name,crtr_cmc,crtr_mana,crtr_colors,crtr_impact,deck_commander_ID)
	VALUES('Sepulchral Primordial',7,'{5}{B}{B}','B','HIGH','The Mimeoplasm');
INSERT INTO deck_creatures (crtr_name,crtr_cmc,crtr_mana,crtr_colors,crtr_impact,deck_commander_ID)
	VALUES('Sheoldred, Whispering One',7,'{5}{B}{B}','B','HIGH','The Mimeoplasm');
INSERT INTO deck_creatures (crtr_name,crtr_cmc,crtr_mana,crtr_colors,crtr_impact,deck_commander_ID)
	VALUES('Sidisi, Undead Vizier',5,'{3}{B}{B}','B','LOW','The Mimeoplasm');
INSERT INTO deck_creatures (crtr_name,crtr_cmc,crtr_mana,crtr_colors,crtr_impact,deck_commander_ID)
	VALUES('Solem Simulacrum',4,'{4}','C','LOW','The Mimeoplasm');
INSERT INTO deck_creatures (crtr_name,crtr_cmc,crtr_mana,crtr_colors,crtr_impact,deck_commander_ID)
	VALUES('Teferi, Mage of Zhalfir',5,'{2}{U}{U}{U}','U','HIGH','The Mimeoplasm');
INSERT INTO deck_creatures (crtr_name,crtr_cmc,crtr_mana,crtr_colors,crtr_impact,deck_commander_ID)
	VALUES('The Mimeoplasm',5,'{2}{U}{B}{G}','U/B/G','HIGH','The Mimeoplasm');
INSERT INTO deck_creatures (crtr_name,crtr_cmc,crtr_mana,crtr_colors,crtr_impact,deck_commander_ID)
	VALUES('Underrealm Lich',5,'{3}{B}{G}','B/G','HIGH','The Mimeoplasm');
INSERT INTO deck_creatures (crtr_name,crtr_cmc,crtr_mana,crtr_colors,crtr_impact,deck_commander_ID)
	VALUES('Vulturous Zombie',5,'{3}{B}{G}','B/G','HIGH','The Mimeoplasm');
INSERT INTO deck_creatures (crtr_name,crtr_cmc,crtr_mana,crtr_colors,crtr_impact,deck_commander_ID)
	VALUES('Wonder',4,'{3}{U}','U','LOW','The Mimeoplasm');
INSERT INTO deck_creatures (crtr_name,crtr_cmc,crtr_mana,crtr_colors,crtr_impact,deck_commander_ID)
	VALUES('Woodfall Primus',8,'{5}{G}{G}{G}','G','MED','The Mimeoplasm');

/* ------------------------------------------------------------------------------------ */
-- Now we will include creatures from the Jund Sacrifice deck:
/*
	This "Jund Sacrifice" deck is a deck that is aimed to put a multitude of creatures onto
  the battlefield that we then aim to sacrifice for more resources either in the way of mana
  or more cards, and ultimately out attrition our opponents.
*/
-- Creatures are listed in alphabetical order.
INSERT INTO deck_creatures (crtr_name,crtr_cmc,crtr_mana,crtr_colors,crtr_impact,deck_commander_ID)
	VALUES('Anowan the Ruin Sage',5,'{3}{B}{B}','B','HIGH','Prossh, Skyraider of Kher');
INSERT INTO deck_creatures (crtr_name,crtr_cmc,crtr_mana,crtr_colors,crtr_impact,deck_commander_ID)
	VALUES('Avenger of Zendikar',7,'{5}{G}{G}','G','HIGH','Prossh, Skyraider of Kher');
INSERT INTO deck_creatures (crtr_name,crtr_cmc,crtr_mana,crtr_colors,crtr_impact,deck_commander_ID)
	VALUES('Blood Artist',2,'{1}{B}','B','MED','Prossh, Skyraider of Kher');
INSERT INTO deck_creatures (crtr_name,crtr_cmc,crtr_mana,crtr_colors,crtr_impact,deck_commander_ID)
	VALUES('Bloodghast',2,'{B}{B}','B','MED','Prossh, Skyraider of Kher');
INSERT INTO deck_creatures (crtr_name,crtr_cmc,crtr_mana,crtr_colors,crtr_impact,deck_commander_ID)
	VALUES('Charnelhoard Wurm',7,'{4}{B}{R}{G}','B/R/G','MED','Prossh, Skyraider of Kher');
INSERT INTO deck_creatures (crtr_name,crtr_cmc,crtr_mana,crtr_colors,crtr_impact,deck_commander_ID)
	VALUES('Creakwood Liege',4,'{1}{B/G}{B/G}{B/G}','B/G','MED','Prossh, Skyraider of Kher');
INSERT INTO deck_creatures (crtr_name,crtr_cmc,crtr_mana,crtr_colors,crtr_impact,deck_commander_ID)
	VALUES('Deathbringer Thoctar',6,'{4}{B}{R}','B/R','MED','Prossh, Skyraider of Kher');
INSERT INTO deck_creatures (crtr_name,crtr_cmc,crtr_mana,crtr_colors,crtr_impact,deck_commander_ID)
	VALUES('Dragon Broodmother',6,'{2}{R}{R}{R}{G}','R/G','HIGH','Prossh, Skyraider of Kher');
INSERT INTO deck_creatures (crtr_name,crtr_cmc,crtr_mana,crtr_colors,crtr_impact,deck_commander_ID)
	VALUES('Dragonlair Spider',6,'{2}{R}{R}{G}{G}','R/G','HIGH','Prossh, Skyraider of Kher');
INSERT INTO deck_creatures (crtr_name,crtr_cmc,crtr_mana,crtr_colors,crtr_impact,deck_commander_ID)
	VALUES('Emrakul, the Promised End',13,'{13}','C','HIGH','Prossh, Skyraider of Kher');
INSERT INTO deck_creatures (crtr_name,crtr_cmc,crtr_mana,crtr_colors,crtr_impact,deck_commander_ID)
	VALUES('Eternal Witness',3,'{1}{G}{G}','G','LOW','Prossh, Skyraider of Kher');
INSERT INTO deck_creatures (crtr_name,crtr_cmc,crtr_mana,crtr_colors,crtr_impact,deck_commander_ID)
	VALUES('Grave Titan',6,'{4}{B}{B}','B','HIGH','Prossh, Skyraider of Kher');
INSERT INTO deck_creatures (crtr_name,crtr_cmc,crtr_mana,crtr_colors,crtr_impact,deck_commander_ID)
	VALUES('Hells Caretaker',4,'{3}{B}','B','MED','Prossh, Skyraider of Kher');
INSERT INTO deck_creatures (crtr_name,crtr_cmc,crtr_mana,crtr_colors,crtr_impact,deck_commander_ID)
	VALUES('Korozda Guildmage',2,'{B}{G}','B/G','MED','Prossh, Skyraider of Kher');
INSERT INTO deck_creatures (crtr_name,crtr_cmc,crtr_mana,crtr_colors,crtr_impact,deck_commander_ID)
	VALUES('Lim-Dul the Necromancer',7,'{5}{B}{B}','B','HIGH','Prossh, Skyraider of Kher');
INSERT INTO deck_creatures (crtr_name,crtr_cmc,crtr_mana,crtr_colors,crtr_impact,deck_commander_ID)
	VALUES('Mycoloth',5,'{3}{G}{G}','G','HIGH','Prossh, Skyraider of Kher');
INSERT INTO deck_creatures (crtr_name,crtr_cmc,crtr_mana,crtr_colors,crtr_impact,deck_commander_ID)
	VALUES('Ophiomancer',3,'{2}{B}','B','MED','Prossh, Skyraider of Kher');
INSERT INTO deck_creatures (crtr_name,crtr_cmc,crtr_mana,crtr_colors,crtr_impact,deck_commander_ID)
	VALUES('Pitiless Plunderer',4,'{3}{B}','B','MED','Prossh, Skyraider of Kher');
INSERT INTO deck_creatures (crtr_name,crtr_cmc,crtr_mana,crtr_colors,crtr_impact,deck_commander_ID)
	VALUES('Plaguecrafter',3,'{2}{B}','B','MED','Prossh, Skyraider of Kher');
INSERT INTO deck_creatures (crtr_name,crtr_cmc,crtr_mana,crtr_colors,crtr_impact,deck_commander_ID)
	VALUES('Prossh, Skyraider of Kher',6,'{3}{B}{R}{G}','B/R/G','HIGH','Prossh, Skyraider of Kher');
INSERT INTO deck_creatures (crtr_name,crtr_cmc,crtr_mana,crtr_colors,crtr_impact,deck_commander_ID)
	VALUES('Reaper of the Wilds',4,'{2}{B}{G}','B/G','HIGH','Prossh, Skyraider of Kher');
INSERT INTO deck_creatures (crtr_name,crtr_cmc,crtr_mana,crtr_colors,crtr_impact,deck_commander_ID)
	VALUES('Sakura-Tribe Elder',2,'{1}{G}','G','LOW','Prossh, Skyraider of Kher');
INSERT INTO deck_creatures (crtr_name,crtr_cmc,crtr_mana,crtr_colors,crtr_impact,deck_commander_ID)
	VALUES('Sekkuar, Deathkeeper',5,'{2}{B}{R}{G}','B/R/G','MED','Prossh, Skyraider of Kher');
INSERT INTO deck_creatures (crtr_name,crtr_cmc,crtr_mana,crtr_colors,crtr_impact,deck_commander_ID)
	VALUES('Solemn Simulacrum',4,'{4}','C','LOW','Prossh, Skyraider of Kher');
INSERT INTO deck_creatures (crtr_name,crtr_cmc,crtr_mana,crtr_colors,crtr_impact,deck_commander_ID)
	VALUES('Tendershoot Dryad',5,'{4}{G}','G','HIGH','Prossh, Skyraider of Kher');
INSERT INTO deck_creatures (crtr_name,crtr_cmc,crtr_mana,crtr_colors,crtr_impact,deck_commander_ID)
	VALUES('Verdant Force',8,'{5}{G}{G}{G}','G','HIGH','Prossh, Skyraider of Kher');
INSERT INTO deck_creatures (crtr_name,crtr_cmc,crtr_mana,crtr_colors,crtr_impact,deck_commander_ID)
	VALUES('Wood Elves',3,'{2}{G}','G','LOW','Prossh, Skyraider of Kher');

/* ------------------------------------------------------------------------------------ */
-- Now we will include creatures from the Abzan Aristocrats deck:
/*
	This "Abzan Aristocrats" deck is an EDH deck that looks to sacrifice a lot of our own creatures,
    to get a lot of value in the way of card draw, mana ramp and having opponents sacrifice their
    creatures as well. It differs from the Jund Sacrifice deck in that a lot of the damage dealt by this
    deck comes from sacrifice outlets and passive abilities of creatures like Crual Celebrant.
*/
-- Creatures are listed in alphabetical order.
INSERT INTO deck_creatures (crtr_name,crtr_cmc,crtr_mana,crtr_colors,crtr_impact,deck_commander_ID)
	VALUES('Caustic Caterpillar',1,'{G}','G','LOW','Karador, Ghost Chieftain');
INSERT INTO deck_creatures (crtr_name,crtr_cmc,crtr_mana,crtr_colors,crtr_impact,deck_commander_ID)
	VALUES('Cruel Celebrant',2,'{W}{B}','W/B','MED','Karador, Ghost Chieftain');
INSERT INTO deck_creatures (crtr_name,crtr_cmc,crtr_mana,crtr_colors,crtr_impact,deck_commander_ID)
	VALUES('Entomber Exarch',4,'{2}{B}{B}','B','MED','Karador, Ghost Chieftain');
INSERT INTO deck_creatures (crtr_name,crtr_cmc,crtr_mana,crtr_colors,crtr_impact,deck_commander_ID)
	VALUES('Eternal Witness',3,'{1}{G}{G}','G','LOW','Karador, Ghost Chieftain');
INSERT INTO deck_creatures (crtr_name,crtr_cmc,crtr_mana,crtr_colors,crtr_impact,deck_commander_ID)
	VALUES('Fauna Shaman',2,'{1}{G}','G','MED','Karador, Ghost Chieftain');
INSERT INTO deck_creatures (crtr_name,crtr_cmc,crtr_mana,crtr_colors,crtr_impact,deck_commander_ID)
	VALUES('Fiend Hunter',3,'{1}{W}{W}','W','MED','Karador, Ghost Chieftain');
INSERT INTO deck_creatures (crtr_name,crtr_cmc,crtr_mana,crtr_colors,crtr_impact,deck_commander_ID)
	VALUES('Grave Titan',6,'{4}{B}{B}','B','HIGH','Karador, Ghost Chieftain');
INSERT INTO deck_creatures (crtr_name,crtr_cmc,crtr_mana,crtr_colors,crtr_impact,deck_commander_ID)
	VALUES('Harvester of Souls',6,'{4}{B}{B}','B','HIGH','Karador, Ghost Chieftain');
INSERT INTO deck_creatures (crtr_name,crtr_cmc,crtr_mana,crtr_colors,crtr_impact,deck_commander_ID)
	VALUES('Karador, Ghost Chieftain',8,'{5}{W}{B}{G}','W/B/G','HIGH','Karador, Ghost Chieftain');
INSERT INTO deck_creatures (crtr_name,crtr_cmc,crtr_mana,crtr_colors,crtr_impact,deck_commander_ID)
	VALUES('Knight of Autumn',3,'{1}{W}{G}','W/G','LOW','Karador, Ghost Chieftain');
INSERT INTO deck_creatures (crtr_name,crtr_cmc,crtr_mana,crtr_colors,crtr_impact,deck_commander_ID)
	VALUES('Kokusho, the Evening Star',6,'{4}{B}{B}','B','MED','Karador, Ghost Chieftain');
INSERT INTO deck_creatures (crtr_name,crtr_cmc,crtr_mana,crtr_colors,crtr_impact,deck_commander_ID)
	VALUES('Liliana, Heretical Healer',3,'{1}{B}{B}','B','HIGH','Karador, Ghost Chieftain');
INSERT INTO deck_creatures (crtr_name,crtr_cmc,crtr_mana,crtr_colors,crtr_impact,deck_commander_ID)
	VALUES('Massacre Wurm',6,'{3}{B}{B}{B}','B','HIGH','Karador, Ghost Chieftain');
INSERT INTO deck_creatures (crtr_name,crtr_cmc,crtr_mana,crtr_colors,crtr_impact,deck_commander_ID)
	VALUES('Mikaeus, the Unhallowed',3,'{3}{B}{B}{B}','B','HIGH','Karador, Ghost Chieftain');
INSERT INTO deck_creatures (crtr_name,crtr_cmc,crtr_mana,crtr_colors,crtr_impact,deck_commander_ID)
	VALUES('Mindslicer',4,'{2}{B}{B}','B','MED','Karador, Ghost Chieftain');
INSERT INTO deck_creatures (crtr_name,crtr_cmc,crtr_mana,crtr_colors,crtr_impact,deck_commander_ID)
	VALUES('Pitiless Plunderer',4,'{3}{B}','B','MED','Karador, Ghost Chieftain');
INSERT INTO deck_creatures (crtr_name,crtr_cmc,crtr_mana,crtr_colors,crtr_impact,deck_commander_ID)
	VALUES('Plaguecrafter',3,'{2}{B}','B','LOW','Karador, Ghost Chieftain');
INSERT INTO deck_creatures (crtr_name,crtr_cmc,crtr_mana,crtr_colors,crtr_impact,deck_commander_ID)
	VALUES('Priest of Forgotten Gods',2,'{1}{B}','B','MED','Karador, Ghost Chieftain');
INSERT INTO deck_creatures (crtr_name,crtr_cmc,crtr_mana,crtr_colors,crtr_impact,deck_commander_ID)
	VALUES('Puppeteer Clique',5,'{3}{B}{B}','B','HIGH','Karador, Ghost Chieftain');
INSERT INTO deck_creatures (crtr_name,crtr_cmc,crtr_mana,crtr_colors,crtr_impact,deck_commander_ID)
	VALUES('Qasali Pridemage',2,'{W}{G}','W/G','MED','Karador, Ghost Chieftain');
INSERT INTO deck_creatures (crtr_name,crtr_cmc,crtr_mana,crtr_colors,crtr_impact,deck_commander_ID)
	VALUES('Ramunap Excavator',3,'{2}{G}','G','MED','Karador, Ghost Chieftain');
INSERT INTO deck_creatures (crtr_name,crtr_cmc,crtr_mana,crtr_colors,crtr_impact,deck_commander_ID)
	VALUES('Ravenous Chupacabra',4,'{2}{B}{B}','B','LOW','Karador, Ghost Chieftain');
INSERT INTO deck_creatures (crtr_name,crtr_cmc,crtr_mana,crtr_colors,crtr_impact,deck_commander_ID)
	VALUES('Razaketh, the Foulblooded',8,'{5}{B}{B}{B}','B','HIGH','Karador, Ghost Chieftain');
INSERT INTO deck_creatures (crtr_name,crtr_cmc,crtr_mana,crtr_colors,crtr_impact,deck_commander_ID)
	VALUES('Reclamation Sage',3,'{2}{G}','G','LOW','Karador, Ghost Chieftain');
INSERT INTO deck_creatures (crtr_name,crtr_cmc,crtr_mana,crtr_colors,crtr_impact,deck_commander_ID)
	VALUES('Renegade Rallier',3,'{1}{W}{G}','W/G','MED','Karador, Ghost Chieftain');
INSERT INTO deck_creatures (crtr_name,crtr_cmc,crtr_mana,crtr_colors,crtr_impact,deck_commander_ID)
	VALUES('Reveillark',5,'{4}{W}','W','MEDs','Karador, Ghost Chieftain');
INSERT INTO deck_creatures (crtr_name,crtr_cmc,crtr_mana,crtr_colors,crtr_impact,deck_commander_ID)
	VALUES('Sakura-Tribe Elder',2,'{1}{G}','G','LOW','Karador, Ghost Chieftain');
INSERT INTO deck_creatures (crtr_name,crtr_cmc,crtr_mana,crtr_colors,crtr_impact,deck_commander_ID)
	VALUES('Shriekmaw',5,'{4}{B}','B','MED','Karador, Ghost Chieftain');
INSERT INTO deck_creatures (crtr_name,crtr_cmc,crtr_mana,crtr_colors,crtr_impact,deck_commander_ID)
	VALUES('Spore Frog',1,'{G}','G','MED','Karador, Ghost Chieftain');
INSERT INTO deck_creatures (crtr_name,crtr_cmc,crtr_mana,crtr_colors,crtr_impact,deck_commander_ID)
	VALUES('Stinkweed Imp',3,'{2}{B}','B','MED','Karador, Ghost Chieftain');
INSERT INTO deck_creatures (crtr_name,crtr_cmc,crtr_mana,crtr_colors,crtr_impact,deck_commander_ID)
	VALUES('Sun Titan',6,'{4}{W}{W}','W','HIGH','Karador, Ghost Chieftain');
INSERT INTO deck_creatures (crtr_name,crtr_cmc,crtr_mana,crtr_colors,crtr_impact,deck_commander_ID)
	VALUES('Teysa Karlov',4,'{2}{W}{B}','W/B','HIGH','Karador, Ghost Chieftain');
INSERT INTO deck_creatures (crtr_name,crtr_cmc,crtr_mana,crtr_colors,crtr_impact,deck_commander_ID)
	VALUES('Underrealm Lich',5,'{3}{B}{G}','B/G','HIGH','Karador, Ghost Chieftain');
INSERT INTO deck_creatures (crtr_name,crtr_cmc,crtr_mana,crtr_colors,crtr_impact,deck_commander_ID)
	VALUES('Viscera Seer',1,'{B}','B','MED','Karador, Ghost Chieftain');
INSERT INTO deck_creatures (crtr_name,crtr_cmc,crtr_mana,crtr_colors,crtr_impact,deck_commander_ID)
	VALUES('Yavimaya Elder',3,'{1}{G}{G}','G','LOW','Karador, Ghost Chieftain');
INSERT INTO deck_creatures (crtr_name,crtr_cmc,crtr_mana,crtr_colors,crtr_impact,deck_commander_ID)
	VALUES('Yosei, the Morning Star',6,'{4}{W}{W}','W','HIGH','Karador, Ghost Chieftain');
INSERT INTO deck_creatures (crtr_name,crtr_cmc,crtr_mana,crtr_colors,crtr_impact,deck_commander_ID)
	VALUES('Zulaport Cutthroat',2,'{1}{B}','B','MED','Karador, Ghost Chieftain');

-- Total Cretures in Each Deck:
SELECT deck_commander_ID,
	COUNT(deck_commander_ID) AS Total
FROM
	edh_decks.deck_creatures
GROUP BY deck_commander_ID;

/* ------------------------------------------------------------------------------------ */
-- Below are all Insert/Deletes to the deck_creatures table:
