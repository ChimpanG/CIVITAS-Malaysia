/*
	UA
	Authors: ChimpanG
*/

-----------------------------------------------
-- Types
-----------------------------------------------

INSERT INTO	Types
		(Type,												Kind			)
VALUES	('TRAIT_CIVILIZATION_CVS_MALAYSIA_UA',				'KIND_TRAIT'	),
		('MODTYPE_CVS_MALAYSIA_UA_ATTACH_PLAYERS',			'KIND_MODIFIER'	),
		('MODTYPE_CVS_MALAYSIA_UA_ADJUST_TRADE_CAPACITY',	'KIND_MODIFIER'	);

-----------------------------------------------
-- Traits
-----------------------------------------------

INSERT INTO	Traits	
		(TraitType,								Name,											Description												)
VALUES	('TRAIT_CIVILIZATION_CVS_MALAYSIA_UA',	'LOC_TRAIT_CIVILIZATION_CVS_MALAYSIA_UA_NAME',	'LOC_TRAIT_CIVILIZATION_CVS_MALAYSIA_UA_DESCRIPTION'	);
		
-----------------------------------------------
-- CivilizationTraits
-----------------------------------------------

INSERT INTO	CivilizationTraits
		(CivilizationType,				TraitType								)
VALUES	('CIVILIZATION_CVS_MALAYSIA',	'TRAIT_CIVILIZATION_CVS_MALAYSIA_UA'	);

-----------------------------------------------
-- TraitModifiers
-- We've got to route this ability via the City-States themselves
-----------------------------------------------

INSERT INTO TraitModifiers
		(TraitType,					ModifierId											)
VALUES	('MINOR_CIV_DEFAULT_TRAIT',	'MODIFIER_CVS_MALAYSIA_UA_TRADE_CAPACITY_ATTACH'	);

-----------------------------------------------
-- DynamicModifiers
-----------------------------------------------

INSERT INTO	DynamicModifiers
		(ModifierType,										CollectionType,				EffectType								)
VALUES	('MODTYPE_CVS_MALAYSIA_UA_ATTACH_PLAYERS',			'COLLECTION_ALL_PLAYERS',	'EFFECT_ATTACH_MODIFIER'				),
		('MODTYPE_CVS_MALAYSIA_UA_ADJUST_TRADE_CAPACITY',	'COLLECTION_OWNER',			'EFFECT_ADJUST_TRADE_ROUTE_CAPACITY'	);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO Modifiers
		(ModifierId,										ModifierType,										SubjectRequirementSetId,				RunOnce,	Permanent	)
VALUES	('MODIFIER_CVS_MALAYSIA_UA_TRADE_CAPACITY_ATTACH',	'MODTYPE_CVS_MALAYSIA_UA_ATTACH_PLAYERS',			'REQSET_CVS_MALAYSIA_UA_IS_SUZERAIN',	0,			0			),
		('MODIFIER_CVS_MALAYSIA_UA_TRADE_CAPACITY',			'MODTYPE_CVS_MALAYSIA_UA_ADJUST_TRADE_CAPACITY',	NULL,									0,			0			);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO ModifierArguments
		(ModifierId,										Name,			Value										)
VALUES	('MODIFIER_CVS_MALAYSIA_UA_TRADE_CAPACITY_ATTACH',	'ModifierId',	'MODIFIER_CVS_MALAYSIA_UA_TRADE_CAPACITY'	),
		('MODIFIER_CVS_MALAYSIA_UA_TRADE_CAPACITY',			'Amount',		1											);

-----------------------------------------------
-- RequirementSets
-----------------------------------------------

INSERT INTO RequirementSets
		(RequirementSetId,						RequirementSetType			)
VALUES	('REQSET_CVS_MALAYSIA_UA_IS_SUZERAIN',	'REQUIREMENTSET_TEST_ALL'	);

-----------------------------------------------
-- RequirementSetRequirements
-----------------------------------------------

INSERT INTO RequirementSetRequirements
		(RequirementSetId,						RequirementId					)
VALUES	('REQSET_CVS_MALAYSIA_UA_IS_SUZERAIN',	'REQ_CVS_PLAYER_IS_SUZERAIN'	),
		('REQSET_CVS_MALAYSIA_UA_IS_SUZERAIN',	'REQ_CVS_PLAYER_IS_MALAYSIA'	);

-----------------------------------------------
-- Requirements
-----------------------------------------------

INSERT INTO Requirements
		(RequirementId,					RequirementType,					Inverse	)
VALUES	('REQ_CVS_PLAYER_IS_SUZERAIN',	'REQUIREMENT_PLAYER_IS_SUZERAIN',	0		);