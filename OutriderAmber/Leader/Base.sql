-- Base
-- Author: stanr
-- DateCreated: 8/1/2024 6:07:37 PM
--------------------------------------------------------------


INSERT INTO	Types
			(Type,					Kind			)
VALUES		('LEADER_SR_AMBER',		'KIND_LEADER'	);
		

INSERT INTO	Leaders
			(LeaderType,			Name,							InheritFrom,		SceneLayers		)
VALUES		('LEADER_SR_AMBER',		'LOC_LEADER_SR_AMBER_NAME',		'LEADER_DEFAULT', 	4				);


INSERT INTO	CivilizationLeaders
			(CivilizationType,				LeaderType,				CapitalName						)
VALUES		('CIVILIZATION_SR_MONDSTADT',	'LEADER_SR_AMBER',		'LOC_CITY_NAME_MONDSTADT_CITY'	);
		

INSERT INTO	LeaderQuotes
			(LeaderType,			Quote									)
VALUES		('LEADER_SR_AMBER',		'LOC_PEDIA_LEADERS_PAGE_SR_AMBER_QUOTE'	);


INSERT INTO	CityNames
			(CivilizationType,					LeaderType,			SortIndex,	CityName								)
VALUES		('CIVILIZATION_SR_MONDSTADT',		'LEADER_SR_AMBER',	-1,			'LOC_CITY_NAME_MONDSTADT_CITY'			),
			('CIVILIZATION_SR_MONDSTADT',		'LEADER_SR_AMBER',	-1,			'LOC_CITY_NAME_DAWN_WINERY'				),
			('CIVILIZATION_SR_MONDSTADT',		'LEADER_SR_AMBER',	-1,			'LOC_CITY_NAME_SPRINGVALE'				),
			('CIVILIZATION_SR_MONDSTADT',		'LEADER_SR_AMBER',	-1,			'LOC_CITY_NAME_WOLVENDOM'				),
			('CIVILIZATION_SR_MONDSTADT',		'LEADER_SR_AMBER',	-1,			'LOC_CITY_NAME_THOUSAND_WINDS_TEMPLE'	),
			('CIVILIZATION_SR_MONDSTADT',		'LEADER_SR_AMBER',	-1,			'LOC_CITY_NAME_GALESONG_HILL'			),
			('CIVILIZATION_SR_MONDSTADT',		'LEADER_SR_AMBER',	-1,			'LOC_CITY_NAME_STARFELL_VALLEY'			),
			('CIVILIZATION_SR_MONDSTADT',		'LEADER_SR_AMBER',	-1,			'LOC_CITY_NAME_CAPE_OATH'				),
			('CIVILIZATION_SR_MONDSTADT',		'LEADER_SR_AMBER',	-1,			'LOC_CITY_NAME_DADAUPA_GORGE'			),
			('CIVILIZATION_SR_MONDSTADT',		'LEADER_SR_AMBER',	-1,			'LOC_CITY_NAME_BRIGHTCROWN_CANYON'		),
			('CIVILIZATION_SR_MONDSTADT',		'LEADER_SR_AMBER',	-1,			'LOC_CITY_NAME_STORMTERRORS_LAIR'		),
			('CIVILIZATION_SR_MONDSTADT',		'LEADER_SR_AMBER',	-1,			'LOC_CITY_NAME_WYRMREST_VALLEY'			),
			('CIVILIZATION_SR_MONDSTADT',		'LEADER_SR_AMBER',	-1,			'LOC_CITY_NAME_STARGLOW_CAVERN'			),
			('CIVILIZATION_SR_MONDSTADT',		'LEADER_SR_AMBER',	-1,			'LOC_CITY_NAME_ENTOMBED_CITY'			),
			('CIVILIZATION_SR_MONDSTADT',		'LEADER_SR_AMBER',	-1,			'LOC_CITY_NAME_WHISPERING_WOODS'		),
			('CIVILIZATION_SR_MONDSTADT',		'LEADER_SR_AMBER',	-1,			'LOC_CITY_NAME_WINDWAIL_HIGHLAND'		);
