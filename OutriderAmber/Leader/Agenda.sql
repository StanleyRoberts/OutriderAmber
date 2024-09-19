-- Agenda
-- Author: stanr
-- DateCreated: 8/1/2024 6:51:11 PM
--------------------------------------------------------------


INSERT INTO Types
			(Type,						Kind			)
VALUES		('TRAIT_AGENDA_SR_AMBER',	'KIND_TRAIT'	);


INSERT INTO Agendas
			(AgendaType,			Name,							Description								)
VALUES 		('AGENDA_SR_AMBER',		'LOC_AGENDA_SR_AMBER_NAME',		'LOC_AGENDA_SR_AMBER_DESCRIPTION'		);


INSERT INTO Traits				
			(TraitType,						Name,							Description								)
VALUES		('TRAIT_AGENDA_SR_AMBER',		'LOC_AGENDA_SR_AMBER_NAME',		'LOC_AGENDA_SR_AMBER_DESCRIPTION'		);


INSERT INTO AgendaTraits
			(AgendaType,			TraitType					)
VALUES 		('AGENDA_SR_AMBER',		'TRAIT_AGENDA_SR_AMBER'	);


INSERT INTO HistoricalAgendas
			(LeaderType,			AgendaType			)
VALUES 		('LEADER_SR_AMBER',		'AGENDA_SR_AMBER'	);



INSERT INTO ExclusiveAgendas
			(AgendaOne,				AgendaTwo				)
VALUES 		('AGENDA_SR_AMBER',		'AGENDA_INDUSTRIALIST'	),
	 		('AGENDA_SR_AMBER',		'AGENDA_MONEY_GRUBBER'	),
	 		('AGENDA_SR_AMBER',		'AGENDA_DARWINIST'		);


INSERT INTO TraitModifiers
			(TraitType,						ModifierId								)
VALUES		('TRAIT_AGENDA_SR_AMBER',		'AGENDA_MODIFIER_SR_AMBER_UNHAPPY'	),
			('TRAIT_AGENDA_SR_AMBER',		'AGENDA_MODIFIER_SR_AMBER_HAPPY'		);
		

INSERT INTO Modifiers	
			(ModifierId,								ModifierType,									SubjectRequirementSetId			)
VALUES		('AGENDA_MODIFIER_SR_AMBER_UNHAPPY',		'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER',	'REQSET_SR_AMBER_UNHAPPY'		),
			('AGENDA_MODIFIER_SR_AMBER_HAPPY',			'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER',	'REQSET_SR_AMBER_HAPPY'		);


INSERT INTO ModifierStrings
			(ModifierId,								Context,	Text								)
VALUES		('AGENDA_MODIFIER_SR_AMBER_UNHAPPY',		'Sample',	'LOC_TOOLTIP_SAMPLE_DIPLOMACY_ALL'	),
			('AGENDA_MODIFIER_SR_AMBER_HAPPY',			'Sample',	'LOC_TOOLTIP_SAMPLE_DIPLOMACY_ALL'	);


INSERT INTO ModifierArguments
			(ModifierId,							Name,							Value												)
VALUES		('AGENDA_MODIFIER_SR_AMBER_UNHAPPY',	'InitialValue',					-5													),
			('AGENDA_MODIFIER_SR_AMBER_UNHAPPY',	'IncrementValue',				-1													),
			('AGENDA_MODIFIER_SR_AMBER_UNHAPPY',	'IncrementTurns',				-10													),
			('AGENDA_MODIFIER_SR_AMBER_UNHAPPY',	'MaxValue',						-25													),
			('AGENDA_MODIFIER_SR_AMBER_UNHAPPY',	'StatementKey',					'LOC_DIPLO_WARNING_LEADER_SR_AMBER_REASON_ANY'	),
			('AGENDA_MODIFIER_SR_AMBER_UNHAPPY',	'SimpleModifierDescription',	'LOC_DIPLO_MODIFIER_SR_AMBER_UNHAPPY'				),
	
			('AGENDA_MODIFIER_SR_AMBER_HAPPY',	'InitialValue',					5													),
			('AGENDA_MODIFIER_SR_AMBER_HAPPY',	'IncrementValue',				1													),
			('AGENDA_MODIFIER_SR_AMBER_HAPPY',	'IncrementTurns',				10													),
			('AGENDA_MODIFIER_SR_AMBER_HAPPY',	'MaxValue',						12													),
			('AGENDA_MODIFIER_SR_AMBER_HAPPY',	'StatementKey',					'LOC_DIPLO_KUDO_LEADER_SR_AMBER_REASON_ANY'		),
			('AGENDA_MODIFIER_SR_AMBER_HAPPY',	'SimpleModifierDescription',	'LOC_DIPLO_MODIFIER_SR_AMBER_HAPPY'				);
			

INSERT INTO RequirementSets
			(RequirementSetId,				RequirementSetType			)
VALUES		('REQSET_SR_AMBER_UNHAPPY',		'REQUIREMENTSET_TEST_ALL'	),
			('REQSET_SR_AMBER_HAPPY',		'REQUIREMENTSET_TEST_ALL'	);


INSERT INTO RequirementSetRequirements
			(RequirementSetId,				RequirementId						)
VALUES		('REQSET_SR_AMBER_UNHAPPY',		'REQUIRES_AT_WAR_AND_HAS_MET'		),
			('REQSET_SR_AMBER_UNHAPPY',		'REQUIRES_MAJOR_CIV_OPPONENT'		),
			('REQSET_SR_AMBER_HAPPY',		'REQUIRES_HAS_HIGH_EXPLORATION'		),
			('REQSET_SR_AMBER_HAPPY',		'REQUIRES_MAJOR_CIV_OPPONENT'		);
