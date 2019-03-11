/*
	Config
	Authors: ChimpanG
*/

-----------------------------------------------
-- Players
-----------------------------------------------

INSERT INTO Players (Domain, CivilizationType, CivilizationName, CivilizationIcon, CivilizationAbilityName, CivilizationAbilityDescription, CivilizationAbilityIcon, LeaderType, LeaderName, LeaderIcon, LeaderAbilityName, LeaderAbilityDescription, LeaderAbilityIcon)
VALUES	(
		-- Civilization
		'Players:Expansion2_Players', -- Domain
		'CIVILIZATION_CVS_MALAYSIA', -- CivilizationType
		'LOC_CIVILIZATION_CVS_MALAYSIA_NAME', -- CivilizationName
		'ICON_CIVILIZATION_CVS_MALAYSIA', -- CivilizationIcon
		'LOC_TRAIT_CIVILIZATION_CVS_MALAYSIA_UA_NAME', -- CivilizationAbilityName
		'LOC_TRAIT_CIVILIZATION_CVS_MALAYSIA_UA_DESCRIPTION', -- CivilizationAbilityDescription
		'ICON_CIVILIZATION_CVS_MALAYSIA', -- CivilizationAbilityIcon
		
		-- Leader
		'LEADER_CVS_ISKANDAR', -- LeaderType
		'LOC_LEADER_CVS_ISKANDAR_NAME', -- LeaderName
		'ICON_LEADER_CVS_ISKANDAR', -- LeaderIcon
		'LOC_TRAIT_LEADER_CVS_ISKANDAR_UA_NAME', -- LeaderAbilityName
		'LOC_TRAIT_LEADER_CVS_ISKANDAR_UA_DESCRIPTION', -- LeaderAbilityDescription
		'ICON_LEADER_CVS_ISKANDAR' -- LeaderAbilityIcon
		);

-----------------------------------------------
-- PlayerItems
-----------------------------------------------

INSERT INTO PlayerItems
		(Domain, 						CivilizationType, 				LeaderType, 			Type, 						Icon, 								Name, 									Description, 								SortIndex	)
VALUES	('Players:Expansion2_Players',	'CIVILIZATION_CVS_MALAYSIA',	'LEADER_CVS_ISKANDAR',	'UNIT_CVS_MALAYSIA_UU',		'ICON_UNIT_CVS_MALAYSIA_UU',		'LOC_UNIT_CVS_MALAYSIA_UU_NAME',		'LOC_UNIT_CVS_MALAYSIA_UU_DESCRIPTION',		10			),
		('Players:Expansion2_Players',	'CIVILIZATION_CVS_MALAYSIA',	'LEADER_CVS_ISKANDAR',	'DISTRICT_CVS_MALAYSIA_UI',	'ICON_DISTRICT_CVS_MALAYSIA_UI',	'LOC_DISTRICT_CVS_MALAYSIA_UI_NAME',	'LOC_DISTRICT_CVS_MALAYSIA_UI_DESCRIPTION',	20			);
