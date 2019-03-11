/*
	Agenda
	Authors: ChimpanG
*/

-----------------------------------------------
-- Types
-----------------------------------------------

INSERT INTO Types
		(Type,							Kind			)
VALUES  ('TRAIT_AGENDA_CVS_ISKANDAR',	'KIND_TRAIT'	);

-----------------------------------------------
-- Agendas
-----------------------------------------------

INSERT INTO Agendas
		(AgendaType,			Name,							Description								)
VALUES 	('AGENDA_CVS_ISKANDAR',	'LOC_AGENDA_CVS_ISKANDAR_NAME',	'LOC_AGENDA_CVS_ISKANDAR_DESCRIPTION'	);

-----------------------------------------------
-- Traits
-----------------------------------------------

INSERT INTO Traits				
		(TraitType,						Name,							Description								)
VALUES	('TRAIT_AGENDA_CVS_ISKANDAR',	'LOC_AGENDA_CVS_ISKANDAR_NAME',	'LOC_AGENDA_CVS_ISKANDAR_DESCRIPTION'	);

-----------------------------------------------
-- AgendaTraits
-----------------------------------------------

INSERT INTO AgendaTraits
		(AgendaType,			TraitType					)
VALUES 	('AGENDA_CVS_ISKANDAR',	'TRAIT_AGENDA_CVS_ISKANDAR'	);

-----------------------------------------------
-- HistoricalAgendas
-----------------------------------------------

INSERT INTO HistoricalAgendas
		(LeaderType,			AgendaType				)
VALUES 	('LEADER_CVS_ISKANDAR',	'AGENDA_CVS_ISKANDAR'	);

-----------------------------------------------
-- ExclusiveAgendas
-----------------------------------------------

INSERT INTO ExclusiveAgendas
		(AgendaOne,				AgendaTwo				)
VALUES 	('AGENDA_CVS_ISKANDAR',	'AGENDA_MONEY_GRUBBER'	);

-----------------------------------------------
-- TraitModifiers
-----------------------------------------------

INSERT INTO TraitModifiers
		(TraitType,						ModifierId								)
VALUES	('TRAIT_AGENDA_CVS_ISKANDAR',	'AGENDA_MODIFIER_CVS_ISKANDAR_UNHAPPY'	),
		('TRAIT_AGENDA_CVS_ISKANDAR',	'AGENDA_MODIFIER_CVS_ISKANDAR_HAPPY'	);
		
-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO Modifiers	
		(ModifierId,								ModifierType,									SubjectRequirementSetId			)
VALUES	('AGENDA_MODIFIER_CVS_ISKANDAR_UNHAPPY',	'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER',	'REQSET_CVS_ISKANDAR_UNHAPPY'	),
		('AGENDA_MODIFIER_CVS_ISKANDAR_HAPPY',		'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER',	'REQSET_CVS_ISKANDAR_HAPPY'		);

-----------------------------------------------	
-- ModifierStrings
-----------------------------------------------	
INSERT INTO ModifierStrings
		(ModifierId,								Context,	Text								)
VALUES	('AGENDA_MODIFIER_CVS_ISKANDAR_UNHAPPY',	'Sample',	'LOC_TOOLTIP_SAMPLE_DIPLOMACY_ALL'	),
		('AGENDA_MODIFIER_CVS_ISKANDAR_HAPPY',		'Sample',	'LOC_TOOLTIP_SAMPLE_DIPLOMACY_ALL'	);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO ModifierArguments
		(ModifierId,								Name,							Value												)
VALUES	('AGENDA_MODIFIER_CVS_ISKANDAR_UNHAPPY',	'InitialValue',					-1													),
		('AGENDA_MODIFIER_CVS_ISKANDAR_UNHAPPY',	'ReductionTurns',				5													),
		('AGENDA_MODIFIER_CVS_ISKANDAR_UNHAPPY',	'ReductionValue',				-1													),
		('AGENDA_MODIFIER_CVS_ISKANDAR_UNHAPPY',	'StatementKey',					'LOC_DIPLO_WARNING_LEADER_CVS_ISKANDAR_REASON_ANY'	),
		('AGENDA_MODIFIER_CVS_ISKANDAR_UNHAPPY',	'SimpleModifierDescription',	'LOC_DIPLO_MODIFIER_CVS_ISKANDAR_UNHAPPY'			),
	
		('AGENDA_MODIFIER_CVS_ISKANDAR_HAPPY',		'InitialValue',					7													),
		('AGENDA_MODIFIER_CVS_ISKANDAR_HAPPY',		'IncrementTurns',				10													),
		('AGENDA_MODIFIER_CVS_ISKANDAR_HAPPY',		'IncrementValue',				1													),
		('AGENDA_MODIFIER_CVS_ISKANDAR_HAPPY',		'MaxValue',						12													),
		('AGENDA_MODIFIER_CVS_ISKANDAR_HAPPY',		'StatementKey',					'LOC_DIPLO_KUDO_LEADER_CVS_ISKANDAR_REASON_ANY'		),
		('AGENDA_MODIFIER_CVS_ISKANDAR_HAPPY',		'SimpleModifierDescription',	'LOC_DIPLO_MODIFIER_CVS_ISKANDAR_HAPPY'				);

-----------------------------------------------
-- RequirementSets
-----------------------------------------------

INSERT INTO RequirementSets
		(RequirementSetId,				RequirementSetType			)
VALUES	('REQSET_CVS_ISKANDAR_UNHAPPY',	'REQUIREMENTSET_TEST_ALL'	),
		('REQSET_CVS_ISKANDAR_HAPPY',	'REQUIREMENTSET_TEST_ALL'	);

-----------------------------------------------
-- RequirementSetRequirements
-----------------------------------------------

INSERT INTO RequirementSetRequirements
		(RequirementSetId,				RequirementId					)
VALUES	('REQSET_CVS_ISKANDAR_UNHAPPY',	'REQUIRES_MAJOR_CIV_OPPONENT'	),
		('REQSET_CVS_ISKANDAR_UNHAPPY',	'REQUIRES_MET_10_TURNS_AGO'		),
		('REQSET_CVS_ISKANDAR_UNHAPPY',	'REQUIRES_HAS_LOW_INCOME'		),
		('REQSET_CVS_ISKANDAR_HAPPY',	'REQUIRES_MAJOR_CIV_OPPONENT'	),
		('REQSET_CVS_ISKANDAR_HAPPY',	'REQUIRES_MET_10_TURNS_AGO'		),
		('REQSET_CVS_ISKANDAR_HAPPY',	'REQUIRES_LEADS_GREAT_PEOPLE'	),
		('REQSET_CVS_ISKANDAR_HAPPY',	'REQUIRES_HAS_HIGH_POPULATION'	);
