-- UniqueBuilding
-- Author: stanr
-- DateCreated: 8/1/2024 1:10:26 PM
--------------------------------------------------------------

	
INSERT INTO Types
		(Type,								Kind			)
VALUES	('BUILDING_SR_FAVONIUS_CATHEDRAL',	'KIND_BUILDING'	),
		('TRAIT_BUILDING_SR_FAVONIUS_CATHEDRAL', 'KIND_TRAIT');


INSERT INTO	Traits	
		(TraitType,									Name,										Description											)
VALUES	('TRAIT_BUILDING_SR_FAVONIUS_CATHEDRAL',	'LOC_BUILDING_SR_FAVONIUS_CATHEDRAL_NAME',	'LOC_BUILDING_SR_FAVONIUS_CATHEDRAL_DESCRIPTION'	);
		

INSERT INTO	CivilizationTraits
		(CivilizationType,					TraitType								)
VALUES	('CIVILIZATION_SR_MONDSTADT',		'TRAIT_BUILDING_SR_FAVONIUS_CATHEDRAL'	);


INSERT INTO Buildings (
		BuildingType,
		Name,
		Description,
		TraitType,
		PrereqCivic,
		PrereqDistrict,
		PurchaseYield,
		Cost,
		CitizenSlots,
		Housing,
		Maintenance
		)
SELECT	'BUILDING_SR_FAVONIUS_CATHEDRAL',
		'LOC_BUILDING_SR_FAVONIUS_CATHEDRAL_NAME',
		'LOC_BUILDING_SR_FAVONIUS_CATHEDRAL_DESCRIPTION',
		'TRAIT_CIVILIZATION_SR_OUTRIDER',
		PrereqCivic,
		PrereqDistrict,
		PurchaseYield,
		Cost,
		CitizenSlots,
		Housing,
		Maintenance
FROM	Buildings
WHERE	BuildingType = 'BUILDING_TEMPLE';

INSERT INTO BuildingPrereqs (Building, PrereqBuilding)
SELECT 'BUILDING_SR_FAVONIUS_CATHEDRAL', PrereqBuilding
FROM BuildingPrereqs WHERE Building = 'BUILDING_TEMPLE';


INSERT INTO BuildingReplaces
		(CivUniqueBuildingType,				ReplacesBuildingType	)
VALUES	('BUILDING_SR_FAVONIUS_CATHEDRAL',	'BUILDING_TEMPLE'		);

	
INSERT INTO Building_GreatPersonPoints
		(BuildingType,						GreatPersonClassType,			PointsPerTurn	)
VALUES	('BUILDING_SR_FAVONIUS_CATHEDRAL', 'GREAT_PERSON_CLASS_PROPHET',	1				);

INSERT INTO Building_GreatWorks
		(BuildingType,							GreatWorkSlotType,			NumSlots	)
VALUES	('BUILDING_SR_FAVONIUS_CATHEDRAL',		'GREATWORKSLOT_RELIC',		1			);

INSERT INTO Building_YieldChanges
		(BuildingType,							YieldType,		YieldChange	)
VALUES	('BUILDING_SR_FAVONIUS_CATHEDRAL',		'YIELD_FAITH',	4			);

INSERT INTO Unit_BuildingPrereqs
		(Unit,				PrereqBuilding,							NumSupported	)
VALUES	('UNIT_APOSTLE',		'BUILDING_SR_FAVONIUS_CATHEDRAL',	-1				),
		('UNIT_INQUISITOR',		'BUILDING_SR_FAVONIUS_CATHEDRAL',	-1				),
		('UNIT_WARRIOR_MONK',	'BUILDING_SR_FAVONIUS_CATHEDRAL',	-1				),
		('UNIT_GURU',			'BUILDING_SR_FAVONIUS_CATHEDRAL',	-1				);


INSERT INTO Modifiers
		(ModifierID,											ModifierType,										RunOnce,	Permanent	)
VALUES	('MODIFIER_SR_FAVONIUS_CATHEDRAL_GREAT_PERSON_BONUS',	'MODIFIER_CITY_INCREASE_GREAT_PERSON_POINT_BONUS',	0,			0			),
		('MODIFIER_SR_FAVONIUS_CATHEDRAL_GRANT_RELIC',			'MODIFIER_PLAYER_GRANT_RELIC',						1,			1			);

INSERT INTO ModifierArguments
		(ModifierID,											Name,						Value							)
VALUES	('MODIFIER_SR_FAVONIUS_CATHEDRAL_GREAT_PERSON_BONUS',	'Amount',					50								),
		('MODIFIER_SR_FAVONIUS_CATHEDRAL_GRANT_RELIC',			'Amount',					1								),
		('MODIFIER_SR_FAVONIUS_CATHEDRAL_GRANT_RELIC',			'RelicSource',				'RELIC_SOURCE_RELIGIOUS_UNIT'	);

INSERT INTO BuildingModifiers
		(BuildingType,							ModifierID											)
VALUES	('BUILDING_SR_FAVONIUS_CATHEDRAL',		'MODIFIER_SR_FAVONIUS_CATHEDRAL_GREAT_PERSON_BONUS'	),
		('BUILDING_SR_FAVONIUS_CATHEDRAL',		'MODIFIER_SR_FAVONIUS_CATHEDRAL_GRANT_RELIC'		);