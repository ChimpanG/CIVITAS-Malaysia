/*
	UU
	Authors: ChimpanG
*/

-----------------------------------------------
-- Types
-----------------------------------------------	
	
INSERT INTO Types
		(Type,										Kind			)
VALUES	('TRAIT_CIVILIZATION_CVS_MALAYSIA_UU',		'KIND_TRAIT'	),
		('UNIT_CVS_MALAYSIA_UU',					'KIND_UNIT'		),
		('ABILITY_CVS_MALAYSIA_UU',					'KIND_ABILITY'	),
		('MODTYPE_CVS_MALAYSIA_UU_KILL_HEAL',		'KIND_MODIFIER'	),
		('MODTYPE_CVS_MALAYSIA_UU_KILL_GPP',		'KIND_MODIFIER'	);

-----------------------------------------------
-- Tags
-----------------------------------------------	
	
INSERT INTO Tags
		(Tag,						Vocabulary		)
VALUES	('CLASS_CVS_MALAYSIA_UU',	'ABILITY_CLASS'	);

-----------------------------------------------
-- TypeTags
-----------------------------------------------		

INSERT INTO TypeTags
		(Type,						Tag						)
VALUES	('UNIT_CVS_MALAYSIA_UU',	'CLASS_CVS_MALAYSIA_UU'	),
		('ABILITY_CVS_MALAYSIA_UU',	'CLASS_CVS_MALAYSIA_UU'	);

INSERT INTO TypeTags (Type,		Tag)
SELECT 	'UNIT_CVS_MALAYSIA_UU',	Tag
FROM 	TypeTags
WHERE 	Type = 'UNIT_CARAVEL';

-----------------------------------------------
-- Traits
-----------------------------------------------
		
INSERT INTO Traits
		(TraitType,								Name							)
VALUES	('TRAIT_CIVILIZATION_CVS_MALAYSIA_UU',	'LOC_UNIT_CVS_MALAYSIA_UU_NAME'	);

-----------------------------------------------
-- CivilizationTraits
-----------------------------------------------
		
INSERT INTO CivilizationTraits
		(CivilizationType,				TraitType								)
VALUES	('CIVILIZATION_CVS_MALAYSIA',	'TRAIT_CIVILIZATION_CVS_MALAYSIA_UU'	);

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
SELECT	'UNIT_CVS_MALAYSIA_UU',	-- UnitType
		'LOC_UNIT_CVS_MALAYSIA_UU_NAME',	-- Name
		'LOC_UNIT_CVS_MALAYSIA_UU_DESCRIPTION', -- Description
		'TRAIT_CIVILIZATION_CVS_MALAYSIA_UU', -- TraitType
		BaseMoves,
		Cost,
		PurchaseYield,
		AdvisorType,
		Combat + 7,
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
WHERE	UnitType = 'UNIT_CARAVEL';

-----------------------------------------------
-- UnitUpgrades
-----------------------------------------------
		
INSERT INTO UnitUpgrades (Unit,	UpgradeUnit)
SELECT 	'UNIT_CVS_MALAYSIA_UU',	UpgradeUnit
FROM 	UnitUpgrades
WHERE	Unit = 'UNIT_CARAVEL';

-----------------------------------------------
-- UnitAiInfos
-----------------------------------------------
		
INSERT INTO UnitAiInfos (UnitType,	AiType)
SELECT 	'UNIT_CVS_MALAYSIA_UU',		AiType
FROM 	UnitAiInfos
WHERE 	UnitType = 'UNIT_CARAVEL';
		
-----------------------------------------------
-- UnitReplaces
-----------------------------------------------
		
INSERT INTO UnitReplaces
		(CivUniqueUnitType,			ReplacesUnitType	)
VALUES	('UNIT_CVS_MALAYSIA_UU',	'UNIT_CARAVEL'		);

-----------------------------------------------
-- UnitAbilities
-----------------------------------------------

INSERT INTO UnitAbilities
		(UnitAbilityType,			Name,								Description									)
VALUES	('ABILITY_CVS_MALAYSIA_UU',	'LOC_ABILITY_CVS_MALAYSIA_UU_NAME',	'LOC_ABILITY_CVS_MALAYSIA_UU_DESCRIPTION'	);

-----------------------------------------------
-- UnitAbilityModifiers
-----------------------------------------------
		
INSERT INTO UnitAbilityModifiers
		(UnitAbilityType,			ModifierId								)
VALUES	('ABILITY_CVS_MALAYSIA_UU',	'MODIFIER_CVS_MALAYSIA_UU_KILL_HEAL'	),
		('ABILITY_CVS_MALAYSIA_UU',	'MODIFIER_CVS_MALAYSIA_UU_KILL_GPP'		);

-----------------------------------------------
-- DynamicModifiers
-----------------------------------------------

INSERT INTO	DynamicModifiers
		(ModifierType,							CollectionType,		EffectType										)
VALUES	('MODTYPE_CVS_MALAYSIA_UU_KILL_HEAL',	'COLLECTION_OWNER',	'EFFECT_ADJUST_UNIT_POST_COMBAT_HEAL'			),
		('MODTYPE_CVS_MALAYSIA_UU_KILL_GPP',	'COLLECTION_OWNER',	'EFFECT_ADJUST_GREAT_PEOPLE_POINTS_PER_KILL'	);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO	Modifiers
		(ModifierId,							ModifierType,							SubjectRequirementSetId,	Permanent,	RunOnce	)
VALUES	('MODIFIER_CVS_MALAYSIA_UU_KILL_HEAL',	'MODTYPE_CVS_MALAYSIA_UU_KILL_HEAL',	NULL,						0,			0		),
		('MODIFIER_CVS_MALAYSIA_UU_KILL_GPP',	'MODTYPE_CVS_MALAYSIA_UU_KILL_GPP',		NULL,						0,			0		);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO	ModifierArguments
		(ModifierId,							Name,					Value							)
VALUES	('MODIFIER_CVS_MALAYSIA_UU_KILL_HEAL',	'Amount',				30								),
		('MODIFIER_CVS_MALAYSIA_UU_KILL_GPP',	'GreatPersonClassType',	'GREAT_PERSON_CLASS_MERCHANT'	),
		('MODIFIER_CVS_MALAYSIA_UU_KILL_GPP',	'Amount',				5								);

-----------------------------------------------
-- MomentIllustrations
-----------------------------------------------

INSERT INTO MomentIllustrations
		(MomentIllustrationType,			MomentDataType,		GameDataType,			Texture									)
VALUES	('MOMENT_ILLUSTRATION_UNIQUE_UNIT', 'MOMENT_DATA_UNIT',	'UNIT_CVS_MALAYSIA_UU',	'MOMENT_CIVILIZATION_CVS_MALAYSIA_UU'	);