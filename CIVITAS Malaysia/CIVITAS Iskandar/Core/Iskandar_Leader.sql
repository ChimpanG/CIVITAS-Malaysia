/*
	Leader
	Authors: ChimpanG
*/

-----------------------------------------------
-- Types
-----------------------------------------------

INSERT INTO	Types
		(Type,					Kind			)
VALUES	('LEADER_CVS_ISKANDAR',	'KIND_LEADER'	);
		
-----------------------------------------------
-- CivilizationLeaders
-----------------------------------------------

INSERT INTO	CivilizationLeaders
		(CivilizationType,				LeaderType,				CapitalName				)
VALUES	('CIVILIZATION_CVS_MALAYSIA',	'LEADER_CVS_ISKANDAR',	'LOC_CITY_NAME_MALACCA'	);

-----------------------------------------------
-- Leaders
-----------------------------------------------

INSERT INTO	Leaders
		(LeaderType,			Name,							InheritFrom,		SceneLayers		)
VALUES	('LEADER_CVS_ISKANDAR',	'LOC_LEADER_CVS_ISKANDAR_NAME',	'LEADER_DEFAULT', 	4				);
		
-----------------------------------------------
-- LeaderQuotes
-----------------------------------------------

INSERT INTO	LeaderQuotes
		(LeaderType,			Quote										)
VALUES	('LEADER_CVS_ISKANDAR',	'LOC_PEDIA_LEADERS_PAGE_CVS_ISKANDAR_QUOTE'	);

-----------------------------------------------
-- LoadingInfo
-----------------------------------------------

INSERT INTO	LoadingInfo
		(LeaderType,			ForegroundImage,				BackgroundImage,					PlayDawnOfManAudio	)
VALUES	('LEADER_CVS_ISKANDAR',	'LEADER_CVS_ISKANDAR_NEUTRAL',	'LEADER_CVS_ISKANDAR_BACKGROUND',	0					);

-----------------------------------------------
-- FavoredReligions
-----------------------------------------------

INSERT INTO FavoredReligions
		(LeaderType,			ReligionType		)
VALUES	('LEADER_CVS_ISKANDAR',	'RELIGION_ISLAM'	);

-----------------------------------------------
-- RequirementSets
-----------------------------------------------

INSERT INTO RequirementSets
        (RequirementSetId,					RequirementSetType			)
VALUES	('REQSET_CVS_PLAYER_IS_ISKANDAR',	'REQUIREMENTSET_TEST_ALL'	);

-----------------------------------------------
-- RequirementSetRequirements
-----------------------------------------------

INSERT INTO RequirementSetRequirements
        (RequirementSetId,					RequirementId					)
VALUES	('REQSET_CVS_LEADER_IS_MALAYSIA',	'REQ_CVS_LEADER_IS_ISKANDAR'	),
		('REQSET_CVS_PLAYER_IS_ISKANDAR',	'REQ_CVS_LEADER_IS_ISKANDAR'	);

-----------------------------------------------
-- Requirements
-----------------------------------------------

INSERT INTO Requirements
		(RequirementId,					RequirementType								)
VALUES	('REQ_CVS_LEADER_IS_ISKANDAR',	'REQUIREMENT_PLAYER_LEADER_TYPE_MATCHES'	);

-----------------------------------------------
-- RequirementArguments
-----------------------------------------------

INSERT INTO RequirementArguments
		(RequirementId,					Name,			Value					)
VALUES	('REQ_CVS_LEADER_IS_ISKANDAR',	'LeaderType',	'LEADER_CVS_ISKANDAR'	);
