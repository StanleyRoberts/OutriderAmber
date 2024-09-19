-- OutriderCanChooseGoodyBonus
-- Author: stanr
-- DateCreated: 8/4/2024 1:49:47 PM
--------------------------------------------------------------


-- make default modifiers associated with subtypes impossible so we can apply them in lua
INSERT INTO RequirementSets
		(RequirementSetId,					RequirementSetType			)
VALUES	('PLAYER_IMPOSSIBLE_REQUIREMENT',	'REQUIREMENTSET_TEST_ALL'	);


INSERT INTO RequirementSetRequirements
		(RequirementSetId, RequirementId)
VALUES	('PLAYER_IMPOSSIBLE_REQUIREMENT', 'REQUIRES_PLAYER_IS_MINOR_CIV'),
		('PLAYER_IMPOSSIBLE_REQUIREMENT', 'REQUIRES_PLAYER_IS_HUMAN');

		
INSERT INTO Modifiers 
		(ModifierId, ModifierType, RunOnce, Permanent, SubjectRequirementSetId) 
SELECT ModifierID||'_NORMAL', ModifierType, RunOnce, Permanent, SubjectRequirementSetId
FROM Modifiers
WHERE (
	ModifierID = (
		SELECT ModifierId FROM GoodyHutSubTypes 
		WHERE Modifiers.ModifierId = GoodyHutSubTypes.ModifierId AND GoodyHutSubTypes.GoodyHut
		<> 'METEOR_GOODIES' AND GoodyHutSubTypes.Weight > 0
	)
);

INSERT INTO ModifierArguments 
		(ModifierId, Name, Type, Value) 
SELECT ModifierID||'_NORMAL', Name, Type, Value
FROM ModifierArguments
WHERE (
	ModifierID = (
		SELECT ModifierId FROM GoodyHutSubTypes 
		WHERE ModifierArguments.ModifierId = GoodyHutSubTypes.ModifierId AND GoodyHutSubTypes.GoodyHut
		<> 'METEOR_GOODIES' AND GoodyHutSubTypes.Weight > 0
	)
);

CREATE TABLE GoodyHutSubTypeMap (
	SubTypeGoodyHut TEXT NOT NULL,
	Description TEXT,
	Value INTEGER,
	UnitType TEXT,
	PRIMARY KEY (SubTypeGoodyHut),
	FOREIGN KEY (SubTypeGoodyHut) REFERENCES GoodyHutSubTypes(SubTypeGoodyHut)
);

INSERT INTO GoodyHutSubTypeMap SELECT SubTypeGoodyHut, Description, NULL, NULL FROM GoodyHutSubTypes WHERE GoodyHut <> 'METEOR_GOODIES' AND Weight > 0;

UPDATE GoodyHutSubTypeMap
SET Value = (
    SELECT ModifierArguments.Value
    FROM ModifierArguments
    JOIN GoodyHutSubTypes ON ModifierArguments.ModifierID = GoodyHutSubTypes.ModifierId
    WHERE GoodyHutSubTypes.SubTypeGoodyHut = GoodyHutSubTypeMap.SubTypeGoodyHut
    AND ModifierArguments.Name = 'Amount'
)
WHERE EXISTS (
    SELECT 1
    FROM ModifierArguments
    JOIN GoodyHutSubTypes ON ModifierArguments.ModifierID = GoodyHutSubTypes.ModifierId
    WHERE GoodyHutSubTypes.SubTypeGoodyHut = GoodyHutSubTypeMap.SubTypeGoodyHut
    AND ModifierArguments.Name = 'Amount'
);

UPDATE GoodyHutSubTypeMap
SET UnitType = (
    SELECT ModifierArguments.Value
    FROM ModifierArguments
    JOIN GoodyHutSubTypes ON ModifierArguments.ModifierID = GoodyHutSubTypes.ModifierId
    WHERE GoodyHutSubTypes.SubTypeGoodyHut = GoodyHutSubTypeMap.SubTypeGoodyHut
    AND (ModifierArguments.Name = 'UnitPromotionClassType' OR ModifierArguments.Name = 'UnitType')
)
WHERE EXISTS (
    SELECT 1
    FROM ModifierArguments
    JOIN GoodyHutSubTypes ON ModifierArguments.ModifierID = GoodyHutSubTypes.ModifierId
    WHERE GoodyHutSubTypes.SubTypeGoodyHut = GoodyHutSubTypeMap.SubTypeGoodyHut
    AND (ModifierArguments.Name = 'UnitPromotionClassType' OR ModifierArguments.Name = 'UnitType')
);


-- prevent floating text by default for goody huts but store description to allow us to display it when needed
UPDATE GoodyHutSubTypes SET Description = NULL WHERE GoodyHut <> 'METEOR_GOODIES' AND Weight > 0;

UPDATE GoodyHutSubTypes SET Turn = 0 WHERE SubTypeGoodyHut == 'GOODYHUT_SMALL_FAITH';


UPDATE Modifiers 
SET SubjectRequirementSetId = 'PLAYER_IMPOSSIBLE_REQUIREMENT'
WHERE (
	ModifierID = (
		SELECT ModifierId  FROM GoodyHutSubTypes 
		WHERE Modifiers.ModifierId = GoodyHutSubTypes.ModifierId AND GoodyHutSubTypes.GoodyHut
		<> 'METEOR_GOODIES' AND GoodyHutSubTypes.Weight > 0
	)
);

-- ability required to apply unit required goody hut modifiers to units
INSERT INTO Types 
		(Type,													Kind			)
VALUES 	('ABILITY_SR_UNIT_GOODY_MILITARY_GRANT_SCOUT',			'KIND_ABILITY'	),
		('ABILITY_SR_UNIT_GOODY_MILITARY_GRANT_EXPERIENCE',		'KIND_ABILITY'	),
		('ABILITY_SR_UNIT_GOODY_MILITARY_HEAL',					'KIND_ABILITY'	),
		('ABILITY_SR_UNIT_GOODY_SURVIVORS_ADD_POPULATION',		'KIND_ABILITY'	),
		('ABILITY_SR_UNIT_GOODY_SURVIVORS_GRANT_BUILDER',		'KIND_ABILITY'	),
		('ABILITY_SR_UNIT_GOODY_SURVIVORS_GRANT_TRADER',		'KIND_ABILITY'	);

INSERT INTO UnitAbilities
		(UnitAbilityType,										Inactive	) 
VALUES	('ABILITY_SR_UNIT_GOODY_MILITARY_GRANT_SCOUT',			1			),
		('ABILITY_SR_UNIT_GOODY_MILITARY_GRANT_EXPERIENCE',		1			),
		('ABILITY_SR_UNIT_GOODY_MILITARY_HEAL',					1			),
		('ABILITY_SR_UNIT_GOODY_SURVIVORS_ADD_POPULATION',		1			),
		('ABILITY_SR_UNIT_GOODY_SURVIVORS_GRANT_BUILDER',		1			),
		('ABILITY_SR_UNIT_GOODY_SURVIVORS_GRANT_TRADER',		1			);

INSERT INTO TypeTags 
		(Type,													Tag					) 
VALUES	('ABILITY_SR_UNIT_GOODY_MILITARY_GRANT_SCOUT',			'CLASS_ALL_UNITS'	),
		('ABILITY_SR_UNIT_GOODY_MILITARY_GRANT_EXPERIENCE',		'CLASS_ALL_UNITS'	),
		('ABILITY_SR_UNIT_GOODY_MILITARY_HEAL',					'CLASS_ALL_UNITS'	),
		('ABILITY_SR_UNIT_GOODY_SURVIVORS_ADD_POPULATION',		'CLASS_ALL_UNITS'	),
		('ABILITY_SR_UNIT_GOODY_SURVIVORS_GRANT_BUILDER',		'CLASS_ALL_UNITS'	),
		('ABILITY_SR_UNIT_GOODY_SURVIVORS_GRANT_TRADER',		'CLASS_ALL_UNITS'	);

INSERT INTO UnitAbilityModifiers 
		(UnitAbilityType,										ModifierId									) 
VALUES	('ABILITY_SR_UNIT_GOODY_MILITARY_GRANT_SCOUT',			'GOODY_MILITARY_GRANT_SCOUT_NORMAL'			),
		('ABILITY_SR_UNIT_GOODY_MILITARY_GRANT_EXPERIENCE',		'GOODY_MILITARY_GRANT_EXPERIENCE_NORMAL'	),
		('ABILITY_SR_UNIT_GOODY_MILITARY_HEAL',					'GOODY_MILITARY_HEAL_NORMAL'				),
		('ABILITY_SR_UNIT_GOODY_SURVIVORS_ADD_POPULATION',		'GOODY_SURVIVORS_ADD_POPULATION_NORMAL'		),
		('ABILITY_SR_UNIT_GOODY_SURVIVORS_GRANT_BUILDER',		'GOODY_SURVIVORS_GRANT_BUILDER_NORMAL'		),
		('ABILITY_SR_UNIT_GOODY_SURVIVORS_GRANT_TRADER',		'GOODY_SURVIVORS_GRANT_TRADER_NORMAL'		);