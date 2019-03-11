/*
	UA
	Authors: ChimpanG
*/

-----------------------------------------------
-- Types
-----------------------------------------------

INSERT INTO	Types
		(Type,											Kind				)
VALUES	('TRAIT_LEADER_CVS_TUN_PERAK_UA',				'KIND_TRAIT'		),
		('MODTYPE_CVS_TUN_PERAK_UA_ATTACH_PLAYERS',		'KIND_MODIFIER'		),
		('MODTYPE_CVS_TUN_PERAK_UA_TRADE_CAPACITY',		'KIND_MODIFIER'		),
		('MODTYPE_CVS_TUN_PERAK_UA_PLAYER_STRENGTH',	'KIND_MODIFIER'		),
		('MODTYPE_CVS_TUN_PERAK_UA_UNIT_STRENGTH',		'KIND_MODIFIER'		);

-----------------------------------------------
-- Traits
-----------------------------------------------

INSERT INTO	Traits
		(TraitType,							Name,										Description										)
VALUES	('TRAIT_LEADER_CVS_TUN_PERAK_UA',	'LOC_TRAIT_LEADER_CVS_TUN_PERAK_UA_NAME',	'LOC_TRAIT_LEADER_CVS_TUN_PERAK_UA_DESCRIPTION'	);
		
-----------------------------------------------
-- LeaderTraits
-----------------------------------------------

INSERT INTO	LeaderTraits
		(LeaderType,				TraitType						)
VALUES	('LEADER_CVS_TUN_PERAK',	'TRAIT_LEADER_CVS_TUN_PERAK_UA'	);

-----------------------------------------------
-- TraitModifiers
-----------------------------------------------

INSERT INTO	TraitModifiers
		(TraitType,							ModifierId									)
VALUES	('TRAIT_LEADER_CVS_TUN_PERAK_UA',	'MODIFIER_CVS_TUN_PERAK_UA_LEVIED_STRENGTH'	);

-----------------------------------------------
-- BuildingModifiers
-----------------------------------------------

INSERT INTO	BuildingModifiers
		(BuildingType,									ModifierId									)
VALUES	('BUILDING_CVS_TUN_PERAK_UA_DUMMY_FRIENDLY',	'MODIFIER_CVS_TUN_PERAK_UA_UNIT_PRODUCTION'	),
		('BUILDING_CVS_TUN_PERAK_UA_DUMMY_FRIENDLY',	'MODIFIER_CVS_TUN_PERAK_UA_CS_STRENGTH'		);

INSERT INTO BuildingModifiers (BuildingType, ModifierId)
SELECT	'BUILDING_CVS_TUN_PERAK_UA_DUMMY_ENEMY',
		'MODIFIER_CVS_TUN_PERAK_UA_DISABLE_'||UnitType
FROM	Units WHERE TraitType IS NULL;

-----------------------------------------------
-- DynamicModifiers
-----------------------------------------------

INSERT INTO	DynamicModifiers
		(ModifierType,									CollectionType,				EffectType										)
VALUES	('MODTYPE_CVS_TUN_PERAK_UA_UNIT_PRODUCTION',	'COLLECTION_OWNER',			'EFFECT_ADJUST_ALL_UNIT_PRODUCTION_MODIFIER'	),
		('MODTYPE_CVS_TUN_PERAK_UA_UNIT_DISABLE',		'COLLECTION_OWNER',			'EFFECT_ADJUST_PLAYER_UNIT_BUILD_DISABLED'		),
		('MODTYPE_CVS_TUN_PERAK_UA_ATTACH_UNITS',		'COLLECTION_PLAYER_UNITS',	'EFFECT_ATTACH_MODIFIER'						),
		('MODTYPE_CVS_TUN_PERAK_UA_PLAYER_STRENGTH',	'COLLECTION_PLAYER_COMBAT',	'EFFECT_ADJUST_PLAYER_STRENGTH_MODIFIER'		),
		('MODTYPE_CVS_TUN_PERAK_UA_UNIT_STRENGTH',		'COLLECTION_UNIT_COMBAT',	'EFFECT_ADJUST_PLAYER_STRENGTH_MODIFIER'		);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO	Modifiers
		(ModifierId,									ModifierType,								OwnerRequirementSetId,				SubjectRequirementSetId				)
VALUES	('MODIFIER_CVS_TUN_PERAK_UA_UNIT_PRODUCTION',	'MODTYPE_CVS_TUN_PERAK_UA_UNIT_PRODUCTION',	'REQSET_CVS_TUN_PERAK_UA_AT_WAR',	NULL								),
		('MODIFIER_CVS_TUN_PERAK_UA_CS_STRENGTH',		'MODTYPE_CVS_TUN_PERAK_UA_PLAYER_STRENGTH',	NULL,								NULL								),
		('MODIFIER_CVS_TUN_PERAK_UA_LEVIED_ATTACH',		'MODTYPE_CVS_TUN_PERAK_UA_ATTACH_UNITS',	NULL,								'REQSET_CVS_TUN_PERAK_UA_IS_LEVIED'	),
		('MODIFIER_CVS_TUN_PERAK_UA_LEVIED_STRENGTH',	'MODTYPE_CVS_TUN_PERAK_UA_UNIT_STRENGTH',	NULL,								NULL								);

INSERT INTO	Modifiers (ModifierId, ModifierType, OwnerRequirementSetId)
SELECT	'MODIFIER_CVS_TUN_PERAK_UA_DISABLE_'||UnitType,
		'MODTYPE_CVS_TUN_PERAK_UA_UNIT_DISABLE',
		'REQSET_CVS_TUN_PERAK_UA_AT_WAR'
FROM	Units WHERE TraitType IS NULL;

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO	ModifierArguments
		(ModifierId,									Name,			Value										)
VALUES	('MODIFIER_CVS_TUN_PERAK_UA_UNIT_PRODUCTION',	'Amount',		100											),
		('MODIFIER_CVS_TUN_PERAK_UA_CS_STRENGTH',		'Amount',		5											),
		('MODIFIER_CVS_TUN_PERAK_UA_LEVIED_ATTACH',		'ModifierId',	'MODIFIER_CVS_TUN_PERAK_UA_LEVIED_STRENGTH'	),
		('MODIFIER_CVS_TUN_PERAK_UA_LEVIED_STRENGTH',	'Amount',		5											);

INSERT INTO	ModifierArguments (ModifierId, Name, Value)
SELECT	'MODIFIER_CVS_TUN_PERAK_UA_DISABLE_'||UnitType,
		'UnitType',
		UnitType
FROM	Units WHERE TraitType IS NULL;

-----------------------------------------------
-- ModifierStrings
-----------------------------------------------

INSERT INTO ModifierStrings
        (ModifierId,									Context,	Text											)
VALUES  ('MODIFIER_CVS_TUN_PERAK_UA_CS_STRENGTH',		'Preview',	'LOC_MODIFIER_CVS_TUN_PERAK_UA_CS_STRENGTH'		),
		('MODIFIER_CVS_TUN_PERAK_UA_LEVIED_STRENGTH',	'Preview',	'LOC_MODIFIER_CVS_TUN_PERAK_UA_LEVIED_STRENGTH'	);

-----------------------------------------------
-- RequirementSets
-----------------------------------------------

INSERT INTO RequirementSets
		(RequirementSetId,						RequirementSetType			)
VALUES	('REQSET_CVS_TUN_PERAK_UA_AT_WAR',		'REQUIREMENTSET_TEST_ALL'	),
		('REQSET_CVS_TUN_PERAK_UA_IS_LEVIED',	'REQUIREMENTSET_TEST_ALL'	);

-----------------------------------------------
-- RequirementSetRequirements
-----------------------------------------------

INSERT INTO RequirementSetRequirements
		(RequirementSetId,						RequirementId						)
VALUES	('REQSET_CVS_TUN_PERAK_UA_AT_WAR',		'REQ_CVS_TUN_PERAK_UA_AT_WAR'		),
		('REQSET_CVS_TUN_PERAK_UA_IS_LEVIED',	'REQ_CVS_TUN_PERAK_UA_IS_LEVIED'	);

-----------------------------------------------
-- Requirements
-----------------------------------------------

INSERT INTO Requirements
		(RequirementId,						RequirementType,				Inverse	)
VALUES	('REQ_CVS_TUN_PERAK_UA_AT_WAR',		'REQUIREMENT_PLAYER_IS_AT_WAR',	0		),
		('REQ_CVS_TUN_PERAK_UA_IS_LEVIED',	'REQUIREMENT_UNIT_IS_LEVIED',	0		);


