/*
	Leader
	Authors: ChimpanG
*/

-----------------------------------------------
-- Types
-----------------------------------------------

INSERT INTO	Types
		(Type,						Kind			)
VALUES	('LEADER_CVS_TUN_PERAK',	'KIND_LEADER'	);
		
-----------------------------------------------
-- CivilizationLeaders
-----------------------------------------------

INSERT INTO	CivilizationLeaders
		(CivilizationType,				LeaderType,				CapitalName				)
VALUES	('CIVILIZATION_CVS_MALAYSIA',	'LEADER_CVS_TUN_PERAK',	'LOC_CITY_NAME_MALACCA'	);

-----------------------------------------------
-- Leaders
-----------------------------------------------

INSERT INTO	Leaders
		(LeaderType,				Name,								InheritFrom,		SceneLayers		)
VALUES	('LEADER_CVS_TUN_PERAK',	'LOC_LEADER_CVS_TUN_PERAK_NAME',	'LEADER_DEFAULT', 	4				);
		
-----------------------------------------------
-- LeaderQuotes
-----------------------------------------------

INSERT INTO	LeaderQuotes
		(LeaderType,				Quote											)
VALUES	('LEADER_CVS_TUN_PERAK',	'LOC_PEDIA_LEADERS_PAGE_CVS_TUN_PERAK_QUOTE'	);

-----------------------------------------------
-- LoadingInfo
-----------------------------------------------

INSERT INTO	LoadingInfo
		(LeaderType,				ForegroundImage,				BackgroundImage,					PlayDawnOfManAudio	)
VALUES	('LEADER_CVS_TUN_PERAK',	'LEADER_CVS_TUN_PERAK_NEUTRAL',	'LEADER_CVS_TUN_PERAK_BACKGROUND',	0					);

-----------------------------------------------
-- FavoredReligions
-----------------------------------------------

INSERT INTO FavoredReligions
		(LeaderType,				ReligionType		)
VALUES	('LEADER_CVS_TUN_PERAK',	'RELIGION_ISLAM'	);

-----------------------------------------------
-- RequirementSets
-----------------------------------------------

INSERT INTO RequirementSets
        (RequirementSetId,					RequirementSetType			)
VALUES	('REQSET_CVS_PLAYER_IS_TUN_PERAK',	'REQUIREMENTSET_TEST_ALL'	);

-----------------------------------------------
-- RequirementSetRequirements
-----------------------------------------------

INSERT INTO RequirementSetRequirements
        (RequirementSetId,					RequirementId					)
VALUES	('REQSET_CVS_LEADER_IS_MALAYSIA',	'REQ_CVS_LEADER_IS_TUN_PERAK'	),
		('REQSET_CVS_PLAYER_IS_TUN_PERAK',	'REQ_CVS_LEADER_IS_TUN_PERAK'	);

-----------------------------------------------
-- Requirements
-----------------------------------------------

INSERT INTO Requirements
		(RequirementId,					RequirementType								)
VALUES	('REQ_CVS_LEADER_IS_TUN_PERAK',	'REQUIREMENT_PLAYER_LEADER_TYPE_MATCHES'	);

-----------------------------------------------
-- RequirementArguments
-----------------------------------------------

INSERT INTO RequirementArguments
		(RequirementId,					Name,			Value					)
VALUES	('REQ_CVS_LEADER_IS_TUN_PERAK',	'LeaderType',	'LEADER_CVS_TUN_PERAK'	);
