-- UniqueUnit
-- Author: stanr
-- DateCreated: 8/1/2024 12:57:27 PM
--------------------------------------------------------------

	
INSERT INTO Types
		(Type,									Kind		)
VALUES	('TRAIT_CIVILIZATION_SR_OUTRIDER',	'KIND_TRAIT'	),
		('UNIT_SR_OUTRIDER',				'KIND_UNIT'		),
		('ABILITY_SR_OUTRIDER',				'KIND_ABILITY'	);


INSERT INTO Tags
		(Tag,						Vocabulary		)
VALUES	('CLASS_SR_OUTRIDER',		'ABILITY_CLASS'	);


INSERT INTO TypeTags
		(Type,						Tag						)
VALUES	('UNIT_SR_OUTRIDER',		'CLASS_SR_OUTRIDER'	),
		('ABILITY_SR_OUTRIDER',		'CLASS_SR_OUTRIDER'	);


INSERT INTO TypeTags (Type,		Tag)
SELECT 	'UNIT_SR_OUTRIDER',	Tag
FROM 	TypeTags
WHERE 	Type = 'UNIT_SCOUT';

		
INSERT INTO Traits
		(TraitType,								Name,								Description								)
VALUES	('TRAIT_CIVILIZATION_SR_OUTRIDER',	'LOC_UNIT_SR_OUTRIDER_NAME',		'LOC_UNIT_SR_OUTRIDER_DESCRIPTION'	);

		
INSERT INTO CivilizationTraits
		(CivilizationType,				TraitType							)
VALUES	('CIVILIZATION_SR_MONDSTADT',	'TRAIT_CIVILIZATION_SR_OUTRIDER'	);


INSERT INTO Units (
		UnitType,
		Name,
		Description,
		TraitType,
		BaseMoves,
		Cost,
		PurchaseYield,
		AdvisorType,
		Combat,
		RangedCombat,
		Range,
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
SELECT	'UNIT_SR_OUTRIDER',	-- UnitType
		'LOC_UNIT_SR_OUTRIDER_NAME',	-- Name
		'LOC_UNIT_SR_OUTRIDER_DESCRIPTION', -- Description
		'TRAIT_CIVILIZATION_SR_OUTRIDER', -- TraitType
		BaseMoves,
		Cost,
		PurchaseYield,
		AdvisorType,
		Combat + 8,
		RangedCombat,
		Range,
		BaseSightRange + 1,
		ZoneOfControl,
		Domain,
		FormationClass,
		PromotionClass,
		Maintenance,
		MandatoryObsoleteTech,
		PrereqTech,
		PrereqCivic
FROM	Units
WHERE	UnitType = 'UNIT_SCOUT';

		
INSERT INTO UnitUpgrades (Unit,	UpgradeUnit)
SELECT 	'UNIT_SR_OUTRIDER',	UpgradeUnit
FROM 	UnitUpgrades
WHERE	Unit = 'UNIT_SCOUT';


INSERT INTO UnitAiInfos (UnitType,	AiType)
SELECT 	'UNIT_SR_OUTRIDER',		AiType
FROM 	UnitAiInfos
WHERE 	UnitType = 'UNIT_SCOUT';

		
INSERT INTO UnitReplaces
		(CivUniqueUnitType,		ReplacesUnitType	)
VALUES	('UNIT_SR_OUTRIDER',	'UNIT_SCOUT'		);


INSERT INTO UnitAbilities
		(UnitAbilityType,			Name,							Description					)
VALUES	('ABILITY_SR_OUTRIDER',		'LOC_UNIT_SR_OUTRIDER_NAME',	'LOC_ABILITY_SR_OUTRIDER'	);