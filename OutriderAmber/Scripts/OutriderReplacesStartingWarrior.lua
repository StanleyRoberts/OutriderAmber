-- OutriderReplacesStartingWarrior
-- Author: stanr
-- DateCreated: 8/3/2024 8:11:51 PM
--------------------------------------------------------------

function OnUnitAddedToMap(playerID:number, unitID:number)
    local unit = UnitManager.GetUnit(playerID, unitID)
    local player = Players[playerID]
    if	Game.GetCurrentGameTurn() == 1
	and PlayerConfigurations[playerID]:GetCivilizationTypeName() == "CIVILIZATION_SR_MONDSTADT"
	and unit:GetType() == GameInfo.Units['UNIT_WARRIOR'].Index then
		posX = unit:GetX()
		posY = unit:GetY()
        player:GetUnits():Destroy(unit)
        UnitManager.InitUnit(player, GameInfo.Units['UNIT_SR_OUTRIDER'].Index, posX, posY);
    end
end

Events.UnitAddedToMap.Add(OnUnitAddedToMap)