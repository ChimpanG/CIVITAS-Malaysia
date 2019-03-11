/*
	UI
	Authors: ChimpanG
*/

-----------------------------------------------
-- Types
-----------------------------------------------		

INSERT INTO Types	
		(Type,										Kind			)
VALUES	('TRAIT_CIVILIZATION_MALAYSIA_UI',			'KIND_TRAIT'	),
		('DISTRICT_CVS_MALAYSIA_UI',				'KIND_DISTRICT'	),
		('ABILITY_CVS_MALAYSIA_UI',					'KIND_ABILITY'	),
		('MODTYPE_CVS_MALAYSIA_UI_ATTACH_CITIES',	'KIND_MODIFIER'	),
		('MODTYPE_CVS_MALAYSIA_UI_PLOT_YIELD',		'KIND_MODIFIER'	),
		('MODTYPE_CVS_MALAYSIA_UI_TRADING_POST',	'KIND_MODIFIER'	),
		('MODTYPE_CVS_MALAYSIA_UI_TRADE_YIELD',		'KIND_MODIFIER'	);

-----------------------------------------------
-- Traits
-----------------------------------------------

INSERT INTO Traits
		(TraitType,							Name								)
VALUES	('TRAIT_CIVILIZATION_MALAYSIA_UI',	'LOC_DISTRICT_CVS_MALAYSIA_UI_NAME'	);

-----------------------------------------------
-- CivilizationTraits
-----------------------------------------------
		
INSERT INTO CivilizationTraits
		(TraitType,							CivilizationType			)
VALUES	('TRAIT_CIVILIZATION_MALAYSIA_UI',	'CIVILIZATION_CVS_MALAYSIA'	);

-----------------------------------------------
-- Districts
-----------------------------------------------

INSERT INTO Districts	(
		DistrictType,
		Name,
		Description,
		TraitType,
		PrereqTech,
		Cost,
		RequiresPlacement,
		RequiresPopulation,
		NoAdjacentCity,
		ZOC,
		HitPoints,
		CaptureRemovesBuildings,
		CaptureRemovesCityDefenses,
		PlunderType,
		PlunderAmount,
		CostProgressionModel,
		CostProgressionParam1,
		Aqueduct,
		NoAdjacentCity,
		Coast,
		AdjacentToLand,
		TradeEmbark,
		FreeEmbark,
		Appeal,
		Housing,
		Entertainment,
		OnePerCity,
		Maintenance,
		CitizenSlots,
		TravelTime,
		CityStrengthModifier,
		MilitaryDomain,
		AdvisorType,
		InternalOnly
		)
SELECT	'DISTRICT_CVS_MALAYSIA_UI', -- DistrictType
		'LOC_DISTRICT_CVS_MALAYSIA_UI_NAME', -- Name
		'LOC_DISTRICT_CVS_MALAYSIA_UI_DESCRIPTION', -- Description
		'TRAIT_CIVILIZATION_MALAYSIA_UI', -- TraitType
		PrereqTech,
		Cost,
		RequiresPlacement,
		RequiresPopulation,
		NoAdjacentCity,
		ZOC,
		HitPoints,
		CaptureRemovesBuildings,
		CaptureRemovesCityDefenses,
		PlunderType,
		PlunderAmount,
		CostProgressionModel,
		CostProgressionParam1,
		Aqueduct,
		NoAdjacentCity,
		Coast,
		AdjacentToLand,
		TradeEmbark,
		FreeEmbark,
		Appeal,
		Housing,
		Entertainment,
		OnePerCity,
		Maintenance,
		CitizenSlots,
		TravelTime,
		CityStrengthModifier,
		MilitaryDomain,
		AdvisorType,
		InternalOnly
FROM	Districts
WHERE	DistrictType = 'DISTRICT_HARBOR';

-----------------------------------------------
-- DistrictReplaces
-----------------------------------------------

INSERT INTO DistrictReplaces
		(CivUniqueDistrictType,			ReplacesDistrictType	)
VALUES	('DISTRICT_CVS_MALAYSIA_UI',	'DISTRICT_HARBOR'		);

-----------------------------------------------
-- District_TradeRouteYields
-----------------------------------------------

INSERT INTO District_TradeRouteYields
		(DistrictType,				YieldType,		YieldChangeAsOrigin,	YieldChangeAsDomesticDestination,	YieldChangeAsInternationalDestination	)
SELECT	'DISTRICT_CVS_MALAYSIA_UI',	YieldType,		YieldChangeAsOrigin,	YieldChangeAsDomesticDestination,	YieldChangeAsInternationalDestination	
FROM	District_TradeRouteYields
WHERE	DistrictType = 'DISTRICT_HARBOR';

-----------------------------------------------
-- District_CitizenYieldChanges
-----------------------------------------------

INSERT INTO District_CitizenYieldChanges
		(DistrictType,				YieldType,	YieldChange	)
SELECT	'DISTRICT_CVS_MALAYSIA_UI',	YieldType,	YieldChange
FROM	District_CitizenYieldChanges
WHERE	DistrictType = 'DISTRICT_HARBOR';

-----------------------------------------------
-- District_GreatPersonPoints
-----------------------------------------------

INSERT INTO District_GreatPersonPoints
		(DistrictType,				GreatPersonClassType,	PointsPerTurn	)
SELECT	'DISTRICT_CVS_MALAYSIA_UI',	GreatPersonClassType,	PointsPerTurn
FROM	District_GreatPersonPoints
WHERE	DistrictType IN ('DISTRICT_HARBOR');

-----------------------------------------------
-- District_Adjacencies
-----------------------------------------------

INSERT INTO District_Adjacencies
		(DistrictType,				YieldChangeId	)
SELECT	'DISTRICT_CVS_MALAYSIA_UI',	YieldChangeId
FROM	District_Adjacencies
WHERE	DistrictType = 'DISTRICT_HARBOR';

-----------------------------------------------
-- TraitModifiers
-----------------------------------------------

INSERT INTO TraitModifiers
		(TraitType,							ModifierId									)
VALUES	('TRAIT_CIVILIZATION_MALAYSIA_UI',	'MODIFIER_CVS_MALAYSIA_UI_CULTURE_ATTACH'	),
		('TRAIT_CIVILIZATION_MALAYSIA_UI',	'MODIFIER_CVS_MALAYSIA_UI_TRADING_POST'		);

-----------------------------------------------
-- ImprovementModifiers
-----------------------------------------------

INSERT INTO	ImprovementModifiers (ImprovementType, ModifierId)
SELECT DISTINCT
		ImprovementType,
		'MODIFIER_CVS_MALAYSIA_UA_TRADE_CULTURE'
FROM	Improvement_ValidResources
WHERE	ResourceType IN (SELECT ResourceType FROM Resources WHERE ResourceClassType = 'RESOURCECLASS_LUXURY');

INSERT INTO	ImprovementModifiers (ImprovementType, ModifierId)
SELECT DISTINCT
		ImprovementType,
		'MODIFIER_CVS_MALAYSIA_UA_TRADE_GOLD'
FROM	Improvement_ValidResources
WHERE	ResourceType IN (SELECT ResourceType FROM Resources WHERE ResourceClassType = 'RESOURCECLASS_LUXURY');

-----------------------------------------------
-- DynamicModifiers
-----------------------------------------------

INSERT INTO	DynamicModifiers
		(ModifierType,								CollectionType,					EffectType													)
VALUES	('MODTYPE_CVS_MALAYSIA_UI_ATTACH_CITIES',	'COLLECTION_PLAYER_CITIES',		'EFFECT_ATTACH_MODIFIER'									),
		('MODTYPE_CVS_MALAYSIA_UI_PLOT_YIELD',		'COLLECTION_CITY_PLOT_YIELDS',	'EFFECT_ADJUST_PLOT_YIELD'									),
		('MODTYPE_CVS_MALAYSIA_UI_TRADING_POST',	'COLLECTION_PLAYER_CITIES',		'EFFECT_GRANT_CITY_TRADING_POST'							),
		('MODTYPE_CVS_MALAYSIA_UI_TRADE_YIELD',		'COLLECTION_OWNER',				'EFFECT_ADJUST_CITY_TRADE_ROUTE_YIELD_FOR_INTERNATIONAL'	);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO	Modifiers
		(ModifierId,									ModifierType,								OwnerRequirementSetId,							SubjectRequirementSetId					)
VALUES	('MODIFIER_CVS_MALAYSIA_UI_CULTURE_ATTACH',		'MODTYPE_CVS_MALAYSIA_UI_ATTACH_CITIES',	NULL,											'REQSET_CVS_MALAYSIA_UI_HAS_DERMAGA'	),
		('MODIFIER_CVS_MALAYSIA_UI_COASTAL_CULTURE',	'MODTYPE_CVS_MALAYSIA_UI_PLOT_YIELD',		NULL,											'REQSET_CVS_MALAYSIA_UI_PLOT_IS_COAST'	),
		('MODIFIER_CVS_MALAYSIA_UI_TRADING_POST',		'MODTYPE_CVS_MALAYSIA_UI_TRADING_POST',		NULL,											'REQSET_CVS_MALAYSIA_UI_HAS_DERMAGA'	),
		('MODIFIER_CVS_MALAYSIA_UA_TRADE_CULTURE',		'MODTYPE_CVS_MALAYSIA_UI_TRADE_YIELD',		'REQSET_CVS_MALAYSIA_UI_PLOT_IMPROVED_LUXURY',	'REQSET_CVS_MALAYSIA_UI_HAS_DERMAGA'	),
		('MODIFIER_CVS_MALAYSIA_UA_TRADE_GOLD',			'MODTYPE_CVS_MALAYSIA_UI_TRADE_YIELD',		'REQSET_CVS_MALAYSIA_UI_PLOT_IMPROVED_LUXURY',	'REQSET_CVS_MALAYSIA_UI_HAS_DERMAGA'	);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO	ModifierArguments
		(ModifierId,									Name,			Value										)
VALUES	('MODIFIER_CVS_MALAYSIA_UI_CULTURE_ATTACH',		'ModifierId',	'MODIFIER_CVS_MALAYSIA_UI_COASTAL_CULTURE'	),
		('MODIFIER_CVS_MALAYSIA_UI_COASTAL_CULTURE',	'YieldType',	'YIELD_CULTURE'								),
		('MODIFIER_CVS_MALAYSIA_UI_COASTAL_CULTURE',	'Amount',		1											),
		('MODIFIER_CVS_MALAYSIA_UA_TRADE_CULTURE',		'YieldType',	'YIELD_CULTURE'								),
		('MODIFIER_CVS_MALAYSIA_UA_TRADE_CULTURE',		'Amount',		1											),
		('MODIFIER_CVS_MALAYSIA_UA_TRADE_GOLD',			'YieldType',	'YIELD_GOLD'								),
		('MODIFIER_CVS_MALAYSIA_UA_TRADE_GOLD',			'Amount',		2											);

-----------------------------------------------
-- RequirementSets
-----------------------------------------------

INSERT INTO RequirementSets
        (RequirementSetId,								RequirementSetType			)
VALUES	('REQSET_CVS_MALAYSIA_UI_PLOT_IS_COAST',		'REQUIREMENTSET_TEST_ALL'	),
		('REQSET_CVS_MALAYSIA_UI_PLOT_IMPROVED_LUXURY',	'REQUIREMENTSET_TEST_ALL'	),
		('REQSET_CVS_MALAYSIA_UI_HAS_DERMAGA',			'REQUIREMENTSET_TEST_ALL'	);

-----------------------------------------------
-- RequirementSetRequirements
-----------------------------------------------

INSERT INTO RequirementSetRequirements
        (RequirementSetId,								RequirementId							)
VALUES	('REQSET_CVS_MALAYSIA_UI_PLOT_IS_COAST',		'REQ_CVS_MALAYSIA_UI_PLOT_IS_COAST'		),
		('REQSET_CVS_MALAYSIA_UI_PLOT_IS_COAST',		'REQ_CVS_MALAYSIA_UI_PLOT_IS_NOT_LAKE'	),
		('REQSET_CVS_MALAYSIA_UI_PLOT_IMPROVED_LUXURY',	'REQ_CVS_MALAYSIA_UI_PLOT_HAS_LUXURY'	),
		('REQSET_CVS_MALAYSIA_UI_PLOT_IMPROVED_LUXURY',	'REQ_CVS_MALAYSIA_UI_PLOT_IMPROVED'		),
		('REQSET_CVS_MALAYSIA_UI_HAS_DERMAGA',			'REQ_CVS_MALAYSIA_UI_CITY_HAS_DERMAGA'	);

-----------------------------------------------
-- Requirements
-----------------------------------------------

INSERT INTO Requirements
		(RequirementId,								RequirementType,								Inverse	)
VALUES	('REQ_CVS_MALAYSIA_UI_PLOT_IS_COAST',		'REQUIREMENT_PLOT_IS_COAST',					0		),
		('REQ_CVS_MALAYSIA_UI_PLOT_IS_NOT_LAKE',	'REQUIREMENT_PLOT_IS_LAKE',						1		),
		('REQ_CVS_MALAYSIA_UI_PLOT_HAS_LUXURY',		'REQUIREMENT_PLOT_RESOURCE_CLASS_TYPE_MATCHES',	0		),
		('REQ_CVS_MALAYSIA_UI_PLOT_IMPROVED',		'REQUIREMENT_PLOT_HAS_ANY_IMPROVEMENT',			0		),
		('REQ_CVS_MALAYSIA_UI_CITY_HAS_DERMAGA',	'REQUIREMENT_CITY_HAS_DISTRICT',				0		);

-----------------------------------------------
-- RequirementArguments
-----------------------------------------------

INSERT INTO RequirementArguments
		(RequirementId,								Name,					Value						)
VALUES	('REQ_CVS_MALAYSIA_UI_PLOT_HAS_LUXURY',		'ResourceClassType',	'RESOURCECLASS_LUXURY'		),
		('REQ_CVS_MALAYSIA_UI_CITY_HAS_DERMAGA',	'DistrictType',			'DISTRICT_CVS_MALAYSIA_UI'	);

-----------------------------------------------
-- MomentIllustrations
-----------------------------------------------

INSERT INTO MomentIllustrations
		(MomentIllustrationType,				MomentDataType,			GameDataType,				Texture									)
VALUES	('MOMENT_ILLUSTRATION_UNIQUE_DISTRICT',	'MOMENT_DATA_DISTRICT',	'DISTRICT_CVS_MALAYSIA_UI',	'MOMENT_CIVILIZATION_CVS_MALAYSIA_UI'	);