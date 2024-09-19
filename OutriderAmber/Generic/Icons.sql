-- Icons
-- Author: stanr
-- DateCreated: 8/2/2024 12:56:47 PM
--------------------------------------------------------------


INSERT INTO IconTextureAtlases	
		(Name,									IconSize,	IconsPerRow,	IconsPerColumn,		Filename					)
VALUES	('ICON_ATLAS_SR_MONDSTADT',					22,	 		1,				1,					'MondstadtAtlas22.dds'			),
		('ICON_ATLAS_SR_MONDSTADT',					30,	 		1,				1,					'MondstadtAtlas30.dds'			),
		('ICON_ATLAS_SR_MONDSTADT',					36,	 		1,				1,					'MondstadtAtlas36.dds'			),
		('ICON_ATLAS_SR_MONDSTADT',					44,	 		1,				1,					'MondstadtAtlas44.dds'			),
		('ICON_ATLAS_SR_MONDSTADT',					48,	 		1,				1,					'MondstadtAtlas48.dds'			),
		('ICON_ATLAS_SR_MONDSTADT',					50,	 		1,				1,					'MondstadtAtlas50.dds'			),
		('ICON_ATLAS_SR_MONDSTADT',					64,	 		1,				1,					'MondstadtAtlas64.dds'			),
		('ICON_ATLAS_SR_MONDSTADT',					80,	 		1,				1,					'MondstadtAtlas80.dds'			),
		('ICON_ATLAS_SR_MONDSTADT',					200, 		1,				1,					'MondstadtAtlas200.dds'			),
		('ICON_ATLAS_SR_MONDSTADT',					256, 		1,				1,					'MondstadtAtlas256.dds'			),

		('ICON_ATLAS_SR_AMBER',				32,	 		1,				1,					'AmberAtlas32.dds'			),
		('ICON_ATLAS_SR_AMBER',				45,	 		1,				1,					'AmberAtlas45.dds'			),
		('ICON_ATLAS_SR_AMBER',				48,	 		1,				1,					'AmberAtlas48.dds'			),
		('ICON_ATLAS_SR_AMBER',				50,	 		1,				1,					'AmberAtlas50.dds'			),
		('ICON_ATLAS_SR_AMBER',				55,	 		1,				1,					'AmberAtlas55.dds'			),
		('ICON_ATLAS_SR_AMBER',				64,			1,				1,					'AmberAtlas64.dds'			),
		('ICON_ATLAS_SR_AMBER',				80,	 		1,				1,					'AmberAtlas80.dds'			),
		('ICON_ATLAS_SR_AMBER',				256,	 	1,				1,					'AmberAtlas256.dds'			),
		
		('ICON_ATLAS_SR_OUTRIDER',			22,			2,				1,					'OutriderAtlas22.dds'		),
		('ICON_ATLAS_SR_OUTRIDER',			32,			2,				1,					'OutriderAtlas32.dds'		),
		('ICON_ATLAS_SR_OUTRIDER',			38,			2,				1,					'OutriderAtlas38.dds'		),
		('ICON_ATLAS_SR_OUTRIDER',			50,			2,				1,					'OutriderAtlas50.dds'		),
		('ICON_ATLAS_SR_OUTRIDER',			70,			2,				1,					'OutriderAtlas70.dds'		),
		('ICON_ATLAS_SR_OUTRIDER',			80,			2,				1,					'OutriderAtlas80.dds'		),
		('ICON_ATLAS_SR_OUTRIDER',			95,			2,				1,					'OutriderAtlas95.dds'		),
		('ICON_ATLAS_SR_OUTRIDER',			200,		2,				1,					'OutriderAtlas200.dds'		),
		('ICON_ATLAS_SR_OUTRIDER',			256,		2,				1,					'OutriderAtlas256.dds'		),
		
		('ICON_ATLAS_SR_FAVONIUS_CATHEDRAL',			32,			1,				1,					'FavoniusCathedralAtlas32.dds'		),
		('ICON_ATLAS_SR_FAVONIUS_CATHEDRAL',			38,			1,				1,					'FavoniusCathedralAtlas38.dds'		),
		('ICON_ATLAS_SR_FAVONIUS_CATHEDRAL',			50,			1,				1,					'FavoniusCathedralAtlas50.dds'		),
		('ICON_ATLAS_SR_FAVONIUS_CATHEDRAL',			80,			1,				1,					'FavoniusCathedralAtlas80.dds'		),
		('ICON_ATLAS_SR_FAVONIUS_CATHEDRAL',			128,		1,				1,					'FavoniusCathedralAtlas128.dds'		),
		('ICON_ATLAS_SR_FAVONIUS_CATHEDRAL',			256,		1,				1,					'FavoniusCathedralAtlas256.dds'		);


INSERT INTO IconDefinitions
		(Name,										Atlas,									'Index'				)
VALUES	('ICON_CIVILIZATION_SR_MONDSTADT',			'ICON_ATLAS_SR_MONDSTADT',				0					),
		('ICON_LEADER_SR_AMBER',					'ICON_ATLAS_SR_AMBER',					0					),
		('ICON_BUILDING_SR_FAVONIUS_CATHEDRAL',		'ICON_ATLAS_SR_FAVONIUS_CATHEDRAL',		0					),
		('ICON_UNIT_SR_OUTRIDER_PORTRAIT',			'ICON_ATLAS_SR_OUTRIDER',				0					),
		('ICON_UNIT_SR_OUTRIDER',					'ICON_ATLAS_SR_OUTRIDER',				1					);