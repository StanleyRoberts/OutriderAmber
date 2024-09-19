-- Base
-- Author: stanr
-- DateCreated: 7/31/2024 8:59:00 PM
--------------------------------------------------------------


INSERT INTO	Types (Type, Kind) VALUES ('CIVILIZATION_SR_MONDSTADT', 'KIND_CIVILIZATION');


INSERT INTO	Civilizations (
	CivilizationType,
	Name,
	Description,
	Adjective,
	StartingCivilizationLevelType,
	RandomCityNameDepth,
	Ethnicity
) VALUES (
	'CIVILIZATION_SR_MONDSTADT', --CivilizationType
	'LOC_CIVILIZATION_SR_MONDSTADT_NAME', -- Name
	'LOC_CIVILIZATION_SR_MONDSTADT_DESCRIPTION', -- Description
	'LOC_CIVILIZATION_SR_MONDSTADT_ADJECTIVE', -- Adjective
	'CIVILIZATION_LEVEL_FULL_CIV', -- StartingCivilizationLevelType
	5, -- RandomCityNameDepth
	'ETHNICITY_EURO' -- Ethnicity
);


REPLACE INTO NamedMountains
		(NamedMountainType,							Name										)
VALUES	('NAMED_MOUNTAIN_DRAGONSPINE',				'LOC_NAMED_MOUNTAIN_DRAGONSPINE'			),
		('NAMED_MOUNTAIN_BRIGHTCROWN_MOUNTAIN',		'LOC_NAMED_MOUNTAIN_BRIGHTCROWN_MOUNTAIN'	),
		('NAMED_MOUNTAIN_STORMBEARER_MOUNTAIN',		'LOC_NAMED_MOUNTAIN_STORMBEARER_MOUNTAIN'	);

INSERT INTO NamedMountainCivilizations
		(CivilizationType,				NamedMountainType						)
VALUES	('CIVILIZATION_SR_MONDSTADT',	'NAMED_MOUNTAIN_DRAGONSPINE'			),
		('CIVILIZATION_SR_MONDSTADT',	'NAMED_MOUNTAIN_BRIGHTCROWN_MOUNTAIN'	),
		('CIVILIZATION_SR_MONDSTADT',	'NAMED_MOUNTAIN_STORMBEARER_MOUNTAIN'	);


REPLACE INTO NamedLakes
		(NamedLakeType,						Name								)
VALUES	('NAMED_LAKE_CIDER_LAKE',			'LOC_NAMED_LAKE_CIDER_LAKE'			),
		('NAMED_LAKE_STARFELL_LAKE',		'LOC_NAMED_LAKE_STARFELL_LAKE'		);

INSERT INTO NamedLakeCivilizations
		(CivilizationType,			NamedLakeType					)
VALUES	('CIVILIZATION_SR_MONDSTADT',	'NAMED_LAKE_CIDER_LAKE'		),
		('CIVILIZATION_SR_MONDSTADT',	'NAMED_LAKE_STARFELL_LAKE'	);


REPLACE INTO NamedSeas
		(NamedSeaType,				Name							)
VALUES	('NAMED_SEA_MUSK_REEF',		'LOC_NAMED_SEA_MUSK_REEF'		),
		('NAMED_SEA_FALCON_COAST',	'LOC_NAMED_SEA_FALCON_COAST'	);

INSERT INTO NamedSeaCivilizations
		(CivilizationType,			NamedSeaType					)
VALUES	('CIVILIZATION_SR_MONDSTADT',	'NAMED_SEA_MUSK_REEF'		),
		('CIVILIZATION_SR_MONDSTADT',	'NAMED_SEA_FALCON_COAST'	);

INSERT INTO	CityNames
		(CivilizationType,				CityName								)
VALUES	('CIVILIZATION_SR_MONDSTADT',	'LOC_CITY_NAME_MONDSTADT_CITY'				), -- TODO?
		('CIVILIZATION_SR_MONDSTADT',	'LOC_CITY_NAME_DAWN_WINERY'				),
		('CIVILIZATION_SR_MONDSTADT',	'LOC_CITY_NAME_SPRINGVALE'				),
		('CIVILIZATION_SR_MONDSTADT',	'LOC_CITY_NAME_WOLVENDOM'				),
		('CIVILIZATION_SR_MONDSTADT',	'LOC_CITY_NAME_THOUSAND_WINDS_TEMPLE'	),
		('CIVILIZATION_SR_MONDSTADT',	'LOC_CITY_NAME_GALESONG_HILL'			),
		('CIVILIZATION_SR_MONDSTADT',	'LOC_CITY_NAME_STARFELL_VALLEY'			),
		('CIVILIZATION_SR_MONDSTADT',	'LOC_CITY_NAME_CAPE_OATH'				),
		('CIVILIZATION_SR_MONDSTADT',	'LOC_CITY_NAME_DADAUPA_GORGE'			),
		('CIVILIZATION_SR_MONDSTADT',	'LOC_CITY_NAME_BRIGHTCROWN_CANYON'		),
		('CIVILIZATION_SR_MONDSTADT',	'LOC_CITY_NAME_STORMTERRORS_LAIR'		),
		('CIVILIZATION_SR_MONDSTADT',	'LOC_CITY_NAME_WYRMREST_VALLEY'			),
		('CIVILIZATION_SR_MONDSTADT',	'LOC_CITY_NAME_STARGLOW_CAVERN'			),
		('CIVILIZATION_SR_MONDSTADT',	'LOC_CITY_NAME_ENTOMBED_CITY'			),
		('CIVILIZATION_SR_MONDSTADT',	'LOC_CITY_NAME_WHISPERING_WOODS'		),
		('CIVILIZATION_SR_MONDSTADT',	'LOC_CITY_NAME_WINDWAIL_HIGHLAND'		);


INSERT INTO	CivilizationCitizenNames
		(CivilizationType,			CitizenName,					Female	)
VALUES	('CIVILIZATION_SR_MONDSTADT',	'LOC_CITIZEN_SR_ALBEDO',	0 		),
		('CIVILIZATION_SR_MONDSTADT',	'LOC_CITIZEN_SR_BENNETT',	0 		),
		('CIVILIZATION_SR_MONDSTADT',	'LOC_CITIZEN_SR_DILUC',		0 		),
		('CIVILIZATION_SR_MONDSTADT',	'LOC_CITIZEN_SR_KAEYA',		0 		),
		('CIVILIZATION_SR_MONDSTADT',	'LOC_CITIZEN_SR_MIKA',		0 		),
		('CIVILIZATION_SR_MONDSTADT',	'LOC_CITIZEN_SR_RAZOR',		0 		),
		('CIVILIZATION_SR_MONDSTADT',	'LOC_CITIZEN_SR_VENTI',		0 		),
		('CIVILIZATION_SR_MONDSTADT',	'LOC_CITIZEN_SR_AMBER',		1 		),
		('CIVILIZATION_SR_MONDSTADT',	'LOC_CITIZEN_SR_BARBARA',	1 		),
		('CIVILIZATION_SR_MONDSTADT',	'LOC_CITIZEN_SR_DIONA',		1 		),
		('CIVILIZATION_SR_MONDSTADT',	'LOC_CITIZEN_SR_EULA',		1 		),
		('CIVILIZATION_SR_MONDSTADT',	'LOC_CITIZEN_SR_FISCHL',	1 		),
		('CIVILIZATION_SR_MONDSTADT',	'LOC_CITIZEN_SR_JEAN',		1 		),
		('CIVILIZATION_SR_MONDSTADT',	'LOC_CITIZEN_SR_KLEE',		1 		),
		('CIVILIZATION_SR_MONDSTADT',	'LOC_CITIZEN_SR_LISA',		1 		),
		('CIVILIZATION_SR_MONDSTADT',	'LOC_CITIZEN_SR_MONA',		1 		),
		('CIVILIZATION_SR_MONDSTADT',	'LOC_CITIZEN_SR_NOELLE',	1 		),
		('CIVILIZATION_SR_MONDSTADT',	'LOC_CITIZEN_SR_ROSARIA',	1 		),
		('CIVILIZATION_SR_MONDSTADT',	'LOC_CITIZEN_SR_SUCROSE',	1 		);



INSERT INTO	CivilizationInfo
		(CivilizationType,				Header,						Caption,								SortIndex	)
VALUES	('CIVILIZATION_SR_MONDSTADT',	'LOC_CIVINFO_LOCATION',		'LOC_CIVINFO_SR_MONDSTADT_LOCATION',	10			),
		('CIVILIZATION_SR_MONDSTADT',	'LOC_CIVINFO_SIZE',			'LOC_CIVINFO_SR_MONDSTADT_SIZE',		20			),
		('CIVILIZATION_SR_MONDSTADT',	'LOC_CIVINFO_POPULATION',	'LOC_CIVINFO_SR_MONDSTADT_POPULATION',	30			),
		('CIVILIZATION_SR_MONDSTADT',	'LOC_CIVINFO_CAPITAL',		'LOC_CIVINFO_SR_MONDSTADT_CAPITAL',		40			);
		

INSERT INTO	StartBiasTerrains
		(CivilizationType,				TerrainType,				Tier	)
VALUES	('CIVILIZATION_SR_MONDSTADT',	'TERRAIN_GRASS_HILLS',		2		),
		('CIVILIZATION_SR_MONDSTADT',	'TERRAIN_PLAINS_HILLS',		3		),
		('CIVILIZATION_SR_MONDSTADT',	'TERRAIN_GRASS',			3		),
		('CIVILIZATION_SR_MONDSTADT',	'TERRAIN_PLAINS',			4		);

INSERT INTO	StartBiasResources
		(CivilizationType,				ResourceType,			Tier	)
VALUES	('CIVILIZATION_SR_MONDSTADT',	'RESOURCE_WINE',		1		),
		('CIVILIZATION_SR_MONDSTADT',	'RESOURCE_CITRUS',		2		),
		('CIVILIZATION_SR_MONDSTADT',	'RESOURCE_SUGAR',		2		),
		('CIVILIZATION_SR_MONDSTADT',	'RESOURCE_OLIVES',		3		),
		('CIVILIZATION_SR_MONDSTADT',	'RESOURCE_DYES',		3		);
