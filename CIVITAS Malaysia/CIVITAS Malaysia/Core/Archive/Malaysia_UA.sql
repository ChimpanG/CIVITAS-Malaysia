/*
	UA
	Authors: ChimpanG
*/

-----------------------------------------------
-- Types
-----------------------------------------------

INSERT INTO	Types
		(Type,										Kind			)
VALUES	('TRAIT_CIVILIZATION_CVS_MALAYSIA_UA',		'KIND_TRAIT'	),
		('MODTYPE_CVS_MALAYSIA_UA_ATTACH_PLAYERS',	'KIND_MODIFIER'	),
		('MODTYPE_CVS_MALAYSIA_UA_ADJUST_TRADE',	'KIND_MODIFIER'	);

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
		(TraitType,					ModifierId									)
VALUES	('MINOR_CIV_DEFAULT_TRAIT',	'MODIFIER_CVS_MALAYSIA_UA_TIER_1_ATTACH'	),
		('MINOR_CIV_DEFAULT_TRAIT',	'MODIFIER_CVS_MALAYSIA_UA_TIER_2_ATTACH'	),
		('MINOR_CIV_DEFAULT_TRAIT',	'MODIFIER_CVS_MALAYSIA_UA_TIER_3_ATTACH'	);

-----------------------------------------------
-- DynamicModifiers
-----------------------------------------------

INSERT INTO	DynamicModifiers
		(ModifierType,								CollectionType,				EffectType											)
VALUES	('MODTYPE_CVS_MALAYSIA_UA_ATTACH_PLAYERS',	'COLLECTION_ALL_PLAYERS',	'EFFECT_ATTACH_MODIFIER'							),
		('MODTYPE_CVS_MALAYSIA_UA_ADJUST_TRADE',	'COLLECTION_OWNER',			'EFFECT_ADJUST_TRADE_ROUTE_YIELD_FOR_INTERNATIONAL'	);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO Modifiers
		(ModifierId,								ModifierType,								SubjectRequirementSetId,		RunOnce,	Permanent	)
VALUES	('MODIFIER_CVS_MALAYSIA_UA_TIER_1_ATTACH',	'MODTYPE_CVS_MALAYSIA_UA_ATTACH_PLAYERS',	'REQSET_CVS_MALAYSIA_TIER_1',	0,			0			),
		('MODIFIER_CVS_MALAYSIA_UA_TIER_1',			'MODTYPE_CVS_MALAYSIA_UA_ADJUST_TRADE',		NULL,							0,			0			),
		('MODIFIER_CVS_MALAYSIA_UA_TIER_2_ATTACH',	'MODTYPE_CVS_MALAYSIA_UA_ATTACH_PLAYERS',	'REQSET_CVS_MALAYSIA_TIER_2',	0,			0			),
		('MODIFIER_CVS_MALAYSIA_UA_TIER_2',			'MODTYPE_CVS_MALAYSIA_UA_ADJUST_TRADE',		NULL,							0,			0			),
		('MODIFIER_CVS_MALAYSIA_UA_TIER_3_ATTACH',	'MODTYPE_CVS_MALAYSIA_UA_ATTACH_PLAYERS',	'REQSET_CVS_MALAYSIA_TIER_3',	0,			0			),
		('MODIFIER_CVS_MALAYSIA_UA_TIER_3',			'MODTYPE_CVS_MALAYSIA_UA_ADJUST_TRADE',		NULL,							0,			0			);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO ModifierArguments
		(ModifierId,								Name,			Value								)
VALUES	('MODIFIER_CVS_MALAYSIA_UA_TIER_1_ATTACH',	'ModifierId',	'MODIFIER_CVS_MALAYSIA_UA_TIER_1'	),
		('MODIFIER_CVS_MALAYSIA_UA_TIER_1',			'YieldType',	'YIELD_GOLD'						),
		('MODIFIER_CVS_MALAYSIA_UA_TIER_1',			'Amount',		1									),
		('MODIFIER_CVS_MALAYSIA_UA_TIER_2_ATTACH',	'ModifierId',	'MODIFIER_CVS_MALAYSIA_UA_TIER_2'	),
		('MODIFIER_CVS_MALAYSIA_UA_TIER_2',			'YieldType',	'YIELD_GOLD'						),
		('MODIFIER_CVS_MALAYSIA_UA_TIER_2',			'Amount',		1									),
		('MODIFIER_CVS_MALAYSIA_UA_TIER_3_ATTACH',	'ModifierId',	'MODIFIER_CVS_MALAYSIA_UA_TIER_3'	),
		('MODIFIER_CVS_MALAYSIA_UA_TIER_3',			'YieldType',	'YIELD_GOLD'						),
		('MODIFIER_CVS_MALAYSIA_UA_TIER_3',			'Amount',		1									);

-----------------------------------------------
-- RequirementSets
-----------------------------------------------

INSERT INTO RequirementSets
		(RequirementSetId,				RequirementSetType			)
VALUES	('REQSET_CVS_MALAYSIA_TIER_1',	'REQUIREMENTSET_TEST_ALL'	),
		('REQSET_CVS_MALAYSIA_TIER_2',	'REQUIREMENTSET_TEST_ALL'	),
		('REQSET_CVS_MALAYSIA_TIER_3',	'REQUIREMENTSET_TEST_ALL'	);

-----------------------------------------------
-- RequirementSetRequirements
-----------------------------------------------

INSERT INTO RequirementSetRequirements
		(RequirementSetId,				RequirementId						)
VALUES	('REQSET_CVS_MALAYSIA_TIER_1',	'REQ_CVS_PLAYER_IS_MALAYSIA'		),
		('REQSET_CVS_MALAYSIA_TIER_1',	'REQ_CVS_MALAYSIA_CS_FIRST_TIER'	),
		('REQSET_CVS_MALAYSIA_TIER_2',	'REQ_CVS_PLAYER_IS_MALAYSIA'		),
		('REQSET_CVS_MALAYSIA_TIER_2',	'REQ_CVS_MALAYSIA_CS_SECOND_TIER'	),
		('REQSET_CVS_MALAYSIA_TIER_3',	'REQ_CVS_PLAYER_IS_MALAYSIA'		),
		('REQSET_CVS_MALAYSIA_TIER_3',	'REQ_CVS_MALAYSIA_CS_THIRD_TIER'	);

-----------------------------------------------
-- Requirements
-----------------------------------------------

INSERT INTO Requirements
		(RequirementId,						RequirementType,									Inverse	)
VALUES	('REQ_CVS_MALAYSIA_CS_FIRST_TIER',	'REQUIREMENT_PLAYER_HAS_GIVEN_INFLUENCE_TOKENS',	0		),
		('REQ_CVS_MALAYSIA_CS_SECOND_TIER',	'REQUIREMENT_PLAYER_HAS_GIVEN_INFLUENCE_TOKENS',	0		),
		('REQ_CVS_MALAYSIA_CS_THIRD_TIER',	'REQUIREMENT_PLAYER_HAS_GIVEN_INFLUENCE_TOKENS',	0		);

-----------------------------------------------
-- RequirementArguments
-----------------------------------------------

INSERT INTO RequirementArguments
		(RequirementId,						Name,				Value	)
VALUES	('REQ_CVS_MALAYSIA_CS_FIRST_TIER',	'MinimumTokens',	1		),
		('REQ_CVS_MALAYSIA_CS_SECOND_TIER',	'MinimumTokens',	3		),
		('REQ_CVS_MALAYSIA_CS_THIRD_TIER',	'MinimumTokens',	6		);