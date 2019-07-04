/*
	UU
	Authors: ChimpanG
*/

-----------------------------------------------
-- Types
-----------------------------------------------	
	
INSERT INTO Types
		(Type,										Kind			)
VALUES	('TRAIT_LEADER_CVS_TUN_PERAK_UU',			'KIND_TRAIT'	),
		('UNIT_CVS_TUN_PERAK_UU',					'KIND_UNIT'		),
		('ABILITY_CVS_TUN_PERAK_UU',				'KIND_ABILITY'	),
		('MODTYPE_CVS_TUN_PERAK_UU_IGNORE_ZOC',		'KIND_MODIFIER'	);

-----------------------------------------------
-- Tags
-----------------------------------------------	
	
INSERT INTO Tags
		(Tag,						Vocabulary		)
VALUES	('CLASS_CVS_TUN_PERAK_UU',	'ABILITY_CLASS'	);

-----------------------------------------------
-- TypeTags
-----------------------------------------------		

INSERT INTO TypeTags
		(Type,							Tag							)
VALUES	('UNIT_CVS_TUN_PERAK_UU',		'CLASS_CVS_TUN_PERAK_UU'	),
		('ABILITY_CVS_TUN_PERAK_UU',	'CLASS_CVS_TUN_PERAK_UU'	);

INSERT INTO TypeTags (Type,	Tag)
SELECT 	'UNIT_CVS_TUN_PERAK_UU',
		Tag
FROM 	TypeTags
WHERE 	Type = 'UNIT_SWORDSMAN';

-----------------------------------------------
-- Traits
-----------------------------------------------
		
INSERT INTO Traits
		(TraitType,							Name								)
VALUES	('TRAIT_LEADER_CVS_TUN_PERAK_UU',	'LOC_UNIT_CVS_TUN_PERAK_UU_NAME'	);

-----------------------------------------------
-- LeaderTraits
-----------------------------------------------
		
INSERT INTO LeaderTraits
		(LeaderType,				TraitType						)
VALUES	('LEADER_CVS_TUN_PERAK',	'TRAIT_LEADER_CVS_TUN_PERAK_UU'	);

-----------------------------------------------
-- Units
-----------------------------------------------	
	
INSERT INTO Units	(
		UnitType,
		Name,
		Description,
		TraitType,
		BaseMoves,
		Cost,
		PurchaseYield,
		AdvisorType,
		Combat,
		BaseSightRange,
		ZoneOfControl,
		Domain,
		FormationClass,
		PromotionClass,
		Maintenance,
		MandatoryObsoleteTech,
		PrereqTech,
		PrereqCivic
		)
SELECT	'UNIT_CVS_TUN_PERAK_UU',	-- UnitType
		'LOC_UNIT_CVS_TUN_PERAK_UU_NAME',	-- Name
		'LOC_UNIT_CVS_TUN_PERAK_UU_DESCRIPTION', -- Description
		'TRAIT_LEADER_CVS_TUN_PERAK_UU', -- TraitType
		BaseMoves,
		Cost + 20, -- Cost
		PurchaseYield,
		AdvisorType,
		Combat + 4, -- Combat
		BaseSightRange,
		ZoneOfControl,
		Domain,
		FormationClass,
		PromotionClass,
		Maintenance,
		MandatoryObsoleteTech,
		PrereqTech,
		PrereqCivic
FROM	Units
WHERE	UnitType = 'UNIT_SWORDSMAN';

-----------------------------------------------
-- UnitUpgrades
-----------------------------------------------
		
INSERT INTO UnitUpgrades (Unit,	UpgradeUnit)
SELECT 	'UNIT_CVS_TUN_PERAK_UU',	UpgradeUnit
FROM 	UnitUpgrades
WHERE	Unit = 'UNIT_SWORDSMAN';

-----------------------------------------------
-- UnitAiInfos
-----------------------------------------------
		
INSERT INTO UnitAiInfos (UnitType, AiType)
SELECT 	'UNIT_CVS_TUN_PERAK_UU',
		AiType
FROM 	UnitAiInfos
WHERE 	UnitType = 'UNIT_SWORDSMAN';
		
-----------------------------------------------
-- UnitReplaces
-----------------------------------------------
		
INSERT INTO UnitReplaces
		(CivUniqueUnitType,			ReplacesUnitType	)
VALUES	('UNIT_CVS_TUN_PERAK_UU',	'UNIT_SWORDSMAN'	);

-----------------------------------------------
-- UnitAbilities
-----------------------------------------------

INSERT INTO UnitAbilities
		(UnitAbilityType,				Name,									Description									)
VALUES	('ABILITY_CVS_TUN_PERAK_UU',	'LOC_ABILITY_CVS_TUN_PERAK_UU_NAME',	'LOC_ABILITY_CVS_TUN_PERAK_UU_DESCRIPTION'	);

-----------------------------------------------
-- UnitAbilityModifiers
-----------------------------------------------
		
INSERT INTO UnitAbilityModifiers
		(UnitAbilityType,				ModifierId								)
VALUES	('ABILITY_CVS_TUN_PERAK_UU',	'MODIFIER_CVS_TUN_PERAK_UU_IGNORE_ZOC'	);

-----------------------------------------------
-- DynamicModifiers
-----------------------------------------------

INSERT INTO	DynamicModifiers
		(ModifierType,							CollectionType,			EffectType								)
VALUES	('MODTYPE_CVS_TUN_PERAK_UU_IGNORE_ZOC',	'COLLECTION_OWNER',		'EFFECT_ADJUST_UNIT_IGNORE_ZOC'			);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO	Modifiers
		(ModifierId,								ModifierType,							SubjectRequirementSetId,	Permanent,	RunOnce	)
VALUES	('MODIFIER_CVS_TUN_PERAK_UU_IGNORE_ZOC',	'MODTYPE_CVS_TUN_PERAK_UU_IGNORE_ZOC',	NULL,						0,			0		);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO	ModifierArguments		
		(ModifierId,								Name,		Value	)
VALUES	('MODIFIER_CVS_TUN_PERAK_UU_IGNORE_ZOC',	'Ignore',	1		);

-----------------------------------------------
-- MomentIllustrations
-----------------------------------------------

INSERT INTO MomentIllustrations
		(MomentIllustrationType,			MomentDataType,			GameDataType,				Texture								)
VALUES	('MOMENT_ILLUSTRATION_UNIQUE_UNIT',	'MOMENT_DATA_UNIT',		'UNIT_CVS_TUN_PERAK_UU',	'MOMENT_LEADER_CVS_TUN_PERAK_UU'	);