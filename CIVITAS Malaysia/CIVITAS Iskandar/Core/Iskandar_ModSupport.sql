/*
	Mod Support RwF
	Authors: ChimpanG
*/

-----------------------------------------------
-- 40sw4rm's Old World
-----------------------------------------------

CREATE TABLE IF NOT EXISTS TSL 
    (
    MapType		TEXT	DEFAULT NULL,
    Civ			TEXT	DEFAULT NULL,
    LeaderType	TEXT	DEFAULT NULL,
    X			INTEGER	DEFAULT	NULL,
    Y			INTEGER	DEFAULT NULL
    );

INSERT INTO TSL
		(MapType,		Civ,							LeaderType,				X,	Y	)
VALUES	('40sw4rmOW',	'CIVILIZATION_CVS_MALAYSIA',	'LEADER_CVS_ISKANDAR',	83,	8	);

-----------------------------------------------
-- YNAMP
-----------------------------------------------

CREATE TABLE IF NOT EXISTS StartPosition (MapName TEXT, Civilization TEXT, Leader TEXT, X INT default 0, Y INT default 0);
INSERT INTO StartPosition
		(Civilization,					Leader,					MapName,			X,		Y	)
VALUES	('CIVILIZATION_CVS_MALAYSIA',	'LEADER_CVS_ISKANDAR',	'GiantEarth',		75,		33	),
		('CIVILIZATION_CVS_MALAYSIA',	'LEADER_CVS_ISKANDAR',	'GreatestEarthMap',	83,		33	), 
		('CIVILIZATION_CVS_MALAYSIA',	'LEADER_CVS_ISKANDAR',	'CordiformEarth',	64,		19	);

-----------------------------------------------
-- HISTORICAL RELIGIONS
-----------------------------------------------

CREATE TRIGGER IF NOT EXISTS CVS_ISKANDAR_RELIGION_TRIGGER
AFTER INSERT ON Religions
WHEN NEW.ReligionType = 'RELIGION_SUNNI'
BEGIN
	INSERT INTO FavoredReligions
			(LeaderType,				ReligionType		)
	VALUES	('LEADER_CVS_ISKANDAR',		NEW.ReligionType	);
END;
