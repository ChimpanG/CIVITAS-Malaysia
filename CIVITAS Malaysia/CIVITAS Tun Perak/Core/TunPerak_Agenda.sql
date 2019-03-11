/*
	Agenda
	Authors: ChimpanG
*/

-----------------------------------------------
-- Types
-----------------------------------------------

INSERT INTO Types
		(Type,							Kind			)
VALUES  ('TRAIT_AGENDA_CVS_TUN_PERAK',	'KIND_TRAIT'	);

-----------------------------------------------
-- Agendas
-----------------------------------------------

INSERT INTO Agendas
		(AgendaType,				Name,								Description								)
VALUES 	('AGENDA_CVS_TUN_PERAK',	'LOC_AGENDA_CVS_TUN_PERAK_NAME',	'LOC_AGENDA_CVS_TUN_PERAK_DESCRIPTION'	);

-----------------------------------------------
-- Traits
-----------------------------------------------

INSERT INTO Traits				
		(TraitType,						Name,								Description								)
VALUES	('TRAIT_AGENDA_CVS_TUN_PERAK',	'LOC_AGENDA_CVS_TUN_PERAK_NAME',	'LOC_AGENDA_CVS_TUN_PERAK_DESCRIPTION'	);

-----------------------------------------------
-- AgendaTraits
-----------------------------------------------

INSERT INTO AgendaTraits
		(AgendaType,				TraitType						)
VALUES 	('AGENDA_CVS_TUN_PERAK',	'TRAIT_AGENDA_CVS_TUN_PERAK'	);

-----------------------------------------------
-- HistoricalAgendas
-----------------------------------------------

INSERT INTO HistoricalAgendas
		(LeaderType,				AgendaType				)
VALUES 	('LEADER_CVS_TUN_PERAK',	'AGENDA_CVS_TUN_PERAK'	);

-----------------------------------------------
-- ExclusiveAgendas
-----------------------------------------------

INSERT INTO ExclusiveAgendas
		(AgendaOne,					AgendaTwo				)
VALUES	('AGENDA_CVS_TUN_PERAK',	'AGENDA_MONEY_GRUBBER'	);

-----------------------------------------------
-- TraitModifiers
-----------------------------------------------

INSERT INTO TraitModifiers
		(TraitType,						ModifierId								)
VALUES	('TRAIT_AGENDA_CVS_TUN_PERAK',	'AGENDA_MODIFIER_CVS_TUN_PERAK_UNHAPPY'	),
		('TRAIT_AGENDA_CVS_TUN_PERAK',	'AGENDA_MODIFIER_CVS_TUN_PERAK_HAPPY'	),
		('TRAIT_AGENDA_CVS_TUN_PERAK',	'AGENDA_MODIFIER_CVS_TUN_PERAK_NO_DOW'	);
		
-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO Modifiers	
		(ModifierId,								ModifierType,									SubjectRequirementSetId			)
VALUES	('AGENDA_MODIFIER_CVS_TUN_PERAK_UNHAPPY',	'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER',	'REQSET_CVS_TUN_PERAK_UNHAPPY'	),
		('AGENDA_MODIFIER_CVS_TUN_PERAK_HAPPY',		'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER',	'REQSET_CVS_TUN_PERAK_HAPPY'	),
		('AGENDA_MODIFIER_CVS_TUN_PERAK_NO_DOW',	'MODIFIER_ADJUST_DIPLOMATIC_ACTION_PREFERENCE',	'REQSET_CVS_TUN_PERAK_NO_DOW'	);

-----------------------------------------------	
-- ModifierStrings
-----------------------------------------------	

INSERT INTO ModifierStrings
		(ModifierId,								Context,	Text								)
VALUES	('AGENDA_MODIFIER_CVS_TUN_PERAK_UNHAPPY',	'Sample',	'LOC_TOOLTIP_SAMPLE_DIPLOMACY_ALL'	),
		('AGENDA_MODIFIER_CVS_TUN_PERAK_HAPPY',		'Sample',	'LOC_TOOLTIP_SAMPLE_DIPLOMACY_ALL'	);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO ModifierArguments
		(ModifierId,								Name,							Value												)
VALUES	('AGENDA_MODIFIER_CVS_TUN_PERAK_UNHAPPY',	'Accumulates',					1													),
		('AGENDA_MODIFIER_CVS_TUN_PERAK_UNHAPPY',	'InitialValue',					-7													),
		('AGENDA_MODIFIER_CVS_TUN_PERAK_UNHAPPY',	'ReductionTurns',				10													),
		('AGENDA_MODIFIER_CVS_TUN_PERAK_UNHAPPY',	'ReductionValue',				1													),
		('AGENDA_MODIFIER_CVS_TUN_PERAK_UNHAPPY',	'StatementKey',					'LOC_DIPLO_WARNING_LEADER_CVS_TUN_PERAK_REASON_ANY'	),
		('AGENDA_MODIFIER_CVS_TUN_PERAK_UNHAPPY',	'SimpleModifierDescription',	'LOC_DIPLO_MODIFIER_CVS_TUN_PERAK_UNHAPPY'			),
	
		('AGENDA_MODIFIER_CVS_TUN_PERAK_HAPPY',		'InitialValue',					7													),
		('AGENDA_MODIFIER_CVS_TUN_PERAK_HAPPY',		'IncrementTurns',				10													),
		('AGENDA_MODIFIER_CVS_TUN_PERAK_HAPPY',		'IncrementValue',				1													),
		('AGENDA_MODIFIER_CVS_TUN_PERAK_HAPPY',		'MaxValue',						12													),
		('AGENDA_MODIFIER_CVS_TUN_PERAK_HAPPY',		'StatementKey',					'LOC_DIPLO_KUDO_LEADER_CVS_TUN_PERAK_REASON_ANY'	),
		('AGENDA_MODIFIER_CVS_TUN_PERAK_HAPPY',		'SimpleModifierDescription',	'LOC_DIPLO_MODIFIER_CVS_TUN_PERAK_HAPPY'			),

		('AGENDA_MODIFIER_CVS_TUN_PERAK_NO_DOW',		'Action',					'DIPLOACTION_DECLARE_SURPRISE_WAR,
																					DIPLOACTION_DECLARE_FORMAL_WAR,
																					DIPLOACTION_DECLARE_HOLY_WAR,
																					DIPLOACTION_DECLARE_LIBERATION_WAR,
																					DIPLOACTION_DECLARE_RECONQUEST_WAR,
																					DIPLOACTION_DECLARE_COLONIAL_WAR,
																					DIPLOACTION_DECLARE_TERRITORIAL_WAR'				),
		('AGENDA_MODIFIER_CVS_TUN_PERAK_NO_DOW',		'Favored',					0													);

-----------------------------------------------
-- RequirementSetRequirements
-----------------------------------------------

INSERT INTO RequirementSetRequirements
		(RequirementSetId,					RequirementId							)
VALUES	('REQSET_CVS_TUN_PERAK_UNHAPPY',	'REQUIRES_MAJOR_CIV_OPPONENT'			),
		('REQSET_CVS_TUN_PERAK_UNHAPPY',	'REQUIRES_MET_10_TURNS_AGO'				),
		('REQSET_CVS_TUN_PERAK_UNHAPPY',	'REQUIRES_CONQUERING_ALLYING_MINORS'	),
		('REQSET_CVS_TUN_PERAK_HAPPY',		'REQUIRES_MAJOR_CIV_OPPONENT'			),
		('REQSET_CVS_TUN_PERAK_HAPPY',		'REQUIRES_MET_10_TURNS_AGO'				),
		('REQSET_CVS_TUN_PERAK_HAPPY',		'REQUIRES_HAS_HIGH_INCOME'				),
		('REQSET_CVS_TUN_PERAK_NO_DOW',		'REQUIRES_MAJOR_CIV_OPPONENT'			),
		('REQSET_CVS_TUN_PERAK_NO_DOW',		'REQUIRES_PLAYERS_HAVE_MET'				),
		('REQSET_CVS_TUN_PERAK_NO_DOW',		'REQUIRES_SAME_GOVERNMENT'				),
		('REQSET_CVS_TUN_PERAK_NO_DOW',		'REQ_CVS_TUN_PERAK_NOT_CONQUERING_CS'	);

-----------------------------------------------
-- RequirementSets
-----------------------------------------------

INSERT INTO RequirementSets
		(RequirementSetId,					RequirementSetType			)
VALUES	('REQSET_CVS_TUN_PERAK_UNHAPPY',	'REQUIREMENTSET_TEST_ALL'	),
		('REQSET_CVS_TUN_PERAK_HAPPY',		'REQUIREMENTSET_TEST_ALL'	),
		('REQSET_CVS_TUN_PERAK_NO_DOW',		'REQUIREMENTSET_TEST_ALL'	);

-----------------------------------------------
-- Requirements
-----------------------------------------------

INSERT INTO Requirements
		(RequirementId,								RequirementType,									Inverse	)
VALUES	('REQ_CVS_TUN_PERAK_NOT_CONQUERING_CS',		'REQUIREMENT_PLAYER_CONQUERING_ALLYING_MINORS',		1		);
