/*
	UA
	Authors: ChimpanG
*/

-----------------------------------------------
-- Temporary Views
-----------------------------------------------

CREATE VIEW IF NOT EXISTS vTunPerakUA AS
SELECT DISTINCT
        a.PolicyType
FROM    Policies AS a
WHERE   a.PolicyType IN
(
'POLICY_GOV_AUTOCRACY',
'POLICY_GOV_OLIGARCHY',
'POLICY_GOV_CLASSICAL_REPUBLIC',
'POLICY_GOV_MONARCHY',
'POLICY_GOV_THEOCRACY',
'POLICY_GOV_MERCHANT_REPUBLIC',
'POLICY_GOV_FASCISM',
'POLICY_GOV_COMMUNISM',
'POLICY_GOV_DEMOCRACY'
);

-----------------------------------------------
-- Types
-----------------------------------------------

INSERT INTO	Types
		(Type,										Kind			)
VALUES	('TRAIT_LEADER_CVS_TUN_PERAK_UA',			'KIND_TRAIT'	),
		('MODTYPE_CVS_TUN_PERAK_UA_GOV_SLOT',		'KIND_MODIFIER'	),
		('MODTYPE_CVS_TUN_PERAK_UA_ADJUST_FAVOR',	'KIND_MODIFIER'	);

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
		(TraitType,							ModifierId								)
VALUES	('TRAIT_LEADER_CVS_TUN_PERAK_UA',	'MODIFIER_CVS_TUN_PERAK_UA_GOV_SLOT'	);

-----------------------------------------------
-- PolicyModifiers
-----------------------------------------------

INSERT INTO	PolicyModifiers (PolicyType, ModifierId)
SELECT	PolicyType,
		'MODIFIER_CVS_TUN_PERAK_UA_POLICY_FAVOR'
FROM	vTunPerakUA;

-----------------------------------------------
-- DynamicModifiers
-----------------------------------------------

INSERT INTO	DynamicModifiers
		(ModifierType,								CollectionType,		EffectType										)
VALUES	('MODTYPE_CVS_TUN_PERAK_UA_GOV_SLOT',		'COLLECTION_OWNER',	'EFFECT_REPLACE_PLAYER_GOVERNMENT_SLOT_TYPE'	),
		('MODTYPE_CVS_TUN_PERAK_UA_ADJUST_FAVOR',	'COLLECTION_OWNER',	'EFFECT_ADJUST_PLAYER_EXTRA_FAVOR_PER_TURN'		);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO	Modifiers
		(ModifierId,									ModifierType,								OwnerRequirementSetId,	SubjectRequirementSetId				)
VALUES	('MODIFIER_CVS_TUN_PERAK_UA_GOV_SLOT',			'MODTYPE_CVS_TUN_PERAK_UA_GOV_SLOT',		NULL,					NULL								),
		('MODIFIER_CVS_TUN_PERAK_UA_POLICY_FAVOR',		'MODTYPE_CVS_TUN_PERAK_UA_ADJUST_FAVOR',	NULL,					'REQSET_CVS_PLAYER_IS_TUN_PERAK'	);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO	ModifierArguments
		(ModifierId,									Name,							Value			)
VALUES	('MODIFIER_CVS_TUN_PERAK_UA_GOV_SLOT',			'ReplacedGovernmentSlotType',	'SLOT_ECONOMIC'	),
		('MODIFIER_CVS_TUN_PERAK_UA_GOV_SLOT',			'AddedGovernmentSlotType',		'SLOT_WILDCARD'	),
		('MODIFIER_CVS_TUN_PERAK_UA_POLICY_FAVOR',		'Amount',						1				);

-----------------------------------------------
-- Drop Views
-----------------------------------------------

DROP VIEW vTunPerakUA;