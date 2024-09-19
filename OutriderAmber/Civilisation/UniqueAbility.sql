-- UniqueAbility
-- Author: stanr
-- DateCreated: 7/31/2024 10:22:34 PM
--------------------------------------------------------------


INSERT INTO	Types
		(Type,												Kind			)
VALUES	('TRAIT_CIVILIZATION_SR_WIND_GLIDERS_AND_WINE',		'KIND_TRAIT'	),
		('ABILITY_SR_WIND_GLIDER',							'KIND_ABILITY'	);


INSERT INTO	Traits	
		(TraitType,											Name,														Description														)
VALUES	('TRAIT_CIVILIZATION_SR_WIND_GLIDERS_AND_WINE',		'LOC_TRAIT_CIVILIZATION_SR_WIND_GLIDERS_AND_WINE_NAME',		'LOC_TRAIT_CIVILIZATION_SR_WIND_GLIDERS_AND_WINE_DESCRIPTION'	);
		

INSERT INTO	CivilizationTraits
		(CivilizationType,					TraitType										)
VALUES	('CIVILIZATION_SR_MONDSTADT',		'TRAIT_CIVILIZATION_SR_WIND_GLIDERS_AND_WINE'	);


INSERT INTO	TraitModifiers	
		(TraitType,											ModifierId												)
VALUES	('TRAIT_CIVILIZATION_SR_WIND_GLIDERS_AND_WINE',		'MODIFIER_SR_WIND_GLIDERS_AND_WINE_HILL_ABILITY'		),
		('TRAIT_CIVILIZATION_SR_WIND_GLIDERS_AND_WINE',		'MODIFIER_SR_WIND_GLIDERS_AND_WINE_PLANTATION_CULTURE'	);

INSERT INTO UnitAbilities
		(UnitAbilityType,				Name,								Description,								Inactive	)
VALUES	('ABILITY_SR_WIND_GLIDER',		'LOC_ABILITY_SR_WIND_GLIDER_NAME',	'LOC_ABILITY_SR_WIND_GLIDER_DESCRIPTION',	1			);

INSERT INTO UnitAbilityModifiers
		(UnitAbilityType,				ModifierId												)
VALUES	('ABILITY_SR_WIND_GLIDER',		'MODIFIER_SR_WIND_GLIDERS_AND_WINE_HILL_GLIDING'	);

INSERT INTO TypeTags
		(Type,							Tag						)
VALUES	('ABILITY_SR_WIND_GLIDER',		'CLASS_MELEE'			),
		('ABILITY_SR_WIND_GLIDER',		'CLASS_RANGED'			),
		('ABILITY_SR_WIND_GLIDER',		'CLASS_SIEGE'			),
		('ABILITY_SR_WIND_GLIDER',		'CLASS_HEAVY_CAVALRY'	),
		('ABILITY_SR_WIND_GLIDER',		'CLASS_LIGHT_CAVALRY'	),
		('ABILITY_SR_WIND_GLIDER',		'CLASS_RANGED_CAVALRY'	),
		('ABILITY_SR_WIND_GLIDER',		'CLASS_ANTI_CAVALRY'	),
		('ABILITY_SR_WIND_GLIDER',		'CLASS_SUPPORT'			);


INSERT INTO RequirementSets
		(RequirementSetId,							RequirementSetType			)
VALUES	('REQUIRES_CIVILIZATION_IS_MONDSTADT',		'REQUIREMENTSET_TEST_ALL'	);

INSERT INTO RequirementSetRequirements
		(RequirementSetId,							RequirementId				)
VALUES	('REQUIRES_CIVILIZATION_IS_MONDSTADT',		'MONDSTADT_REQUIREMENTS'	);

INSERT INTO Requirements
		(RequirementId,					RequirementType						)
VALUES	('MONDSTADT_REQUIREMENTS',		'REQUIREMENT_PLAYER_TYPE_MATCHES'	);


INSERT INTO RequirementArguments
		(RequirementId,				Name,					Type,					Value							)
VALUES	('MONDSTADT_REQUIREMENTS',	'CivilizationType',		'ARGTYPE_IDENTITY',		'CIVILIZATION_SR_MONDSTADT'		);


INSERT INTO	Modifiers
		(ModifierId,												ModifierType,											RunOnce,	Permanent,	SubjectRequirementSetId					)
VALUES	('MODIFIER_SR_WIND_GLIDERS_AND_WINE_HILL_ABILITY',			'MODIFIER_PLAYER_UNITS_GRANT_ABILITY',					0,			1,			NULL									),
		('MODIFIER_SR_WIND_GLIDERS_AND_WINE_HILL_GLIDING',			'MODIFIER_PLAYER_UNIT_ADJUST_IGNORE_TERRAIN_COST',		0,			1,			NULL									),
		('MODIFIER_SR_WIND_GLIDERS_AND_WINE_PLANTATION_AMENITES',	'MODIFIER_SINGLE_CITY_ADJUST_IMPROVEMENT_AMENITY',		0,			0,			'REQUIRES_CIVILIZATION_IS_MONDSTADT'	),
		('MODIFIER_SR_WIND_GLIDERS_AND_WINE_PLANTATION_CULTURE',	'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',					0,			1,			'PLOT_HAS_PLANTATION_REQUIREMENTS'		);

INSERT INTO ImprovementModifiers
		(ImprovementType,		ModifierId)
VALUES	('IMPROVEMENT_PLANTATION',	'MODIFIER_SR_WIND_GLIDERS_AND_WINE_PLANTATION_AMENITES');

INSERT INTO	ModifierArguments
		(ModifierId,												Name,				Value						)
VALUES	('MODIFIER_SR_WIND_GLIDERS_AND_WINE_HILL_ABILITY',			'AbilityType',		'ABILITY_SR_WIND_GLIDER'	),
		('MODIFIER_SR_WIND_GLIDERS_AND_WINE_HILL_GLIDING',			'Type',				'HILLS'						),
		('MODIFIER_SR_WIND_GLIDERS_AND_WINE_HILL_GLIDING',			'Ignore',			1							),
		('MODIFIER_SR_WIND_GLIDERS_AND_WINE_PLANTATION_CULTURE',	'YieldType',		'YIELD_CULTURE'				),
		('MODIFIER_SR_WIND_GLIDERS_AND_WINE_PLANTATION_CULTURE',	'Amount',			2							),
		('MODIFIER_SR_WIND_GLIDERS_AND_WINE_PLANTATION_AMENITES',	'Amount',			1							);