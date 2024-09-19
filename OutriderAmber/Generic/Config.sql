-- Config
-- Author: stanr
-- DateCreated: 8/1/2024 7:21:18 PM
--------------------------------------------------------------


INSERT INTO Players (Domain, CivilizationType, CivilizationName, CivilizationIcon, CivilizationAbilityName, CivilizationAbilityDescription, CivilizationAbilityIcon, LeaderType, LeaderName, LeaderIcon, LeaderAbilityName, LeaderAbilityDescription, LeaderAbilityIcon)
VALUES	(	
		-- Civilization
		'Players:Expansion2_Players', -- Domain
		'CIVILIZATION_SR_MONDSTADT', -- CivilizationType
		'LOC_CIVILIZATION_SR_MONDSTADT_NAME', -- CivilizationName
		'ICON_CIVILIZATION_SR_MONDSTADT', -- CivilizationIcon
		'LOC_TRAIT_CIVILIZATION_SR_WIND_GLIDERS_AND_WINE_NAME', -- CivilizationAbilityName
		'LOC_TRAIT_CIVILIZATION_SR_WIND_GLIDERS_AND_WINE_DESCRIPTION', -- CivilizationAbilityDescription
		'ICON_CIVILIZATION_SR_MONDSTADT', -- CivilizationAbilityIcon
		
		-- Leader
		'LEADER_SR_AMBER', -- LeaderType
		'LOC_LEADER_SR_AMBER_NAME', -- LeaderName
		'ICON_LEADER_SR_AMBER', -- LeaderIcon (Portrait)
		'LOC_TRAIT_LEADER_SR_MISSING_PERSON_POSTER_NAME', -- LeaderAbilityName
		'LOC_TRAIT_LEADER_SR_MISSING_PERSON_POSTER_DESCRIPTION', -- LeaderAbilityDescription
		'ICON_LEADER_SR_AMBER' -- LeaderAbilityIcon
		);

INSERT INTO PlayerItems
		(Domain, CivilizationType, LeaderType, Type, Icon, Name, Description, SortIndex	)
VALUES	(
		'Players:Expansion2_Players', -- Domain
		'CIVILIZATION_SR_MONDSTADT', -- CivilizationType
		'LEADER_SR_AMBER', -- LeaderType
		'UNIT_SR_OUTRIDER', -- Type
		'ICON_UNIT_SR_OUTRIDER', -- Icon
		'LOC_UNIT_SR_OUTRIDER_NAME', -- Name
		'LOC_UNIT_SR_OUTRIDER_DESCRIPTION', -- Description
		10	-- SortIndex
		),
		
		(
		'Players:Expansion2_Players', -- Domain
		'CIVILIZATION_SR_MONDSTADT', -- CivilizationType
		'LEADER_SR_AMBER', -- LeaderType
		'BUILDING_SR_FAVONIUS_CATHEDRAL', -- Type
		'ICON_BUILDING_SR_FAVONIUS_CATHEDRAL', -- Icon
		'LOC_BUILDING_SR_FAVONIUS_CATHEDRAL_NAME', -- Name
		'LOC_BUILDING_SR_FAVONIUS_CATHEDRAL_DESCRIPTION', -- Description
		20 -- SortIndex
		);