-- OutriderCanChooseGoodyBonus
-- Author: stanr
-- DateCreated: 8/3/2024 8:12:24 PM
--------------------------------------------------------------

ExposedMembers.SRGoodyHut = {}

function NormalApply(playerID, params:table)
	local goody = params.goody
	local unitID = params.unit
    local unit = UnitManager.GetUnit(playerID, unitID)
	if goody.RequiresUnit == true then
		local ability = 'ABILITY_SR_UNIT_' .. goody.ModifierID
		unit:GetAbility():ChangeAbilityCount(ability, 1)
		unit:GetAbility():ChangeAbilityCount(ability, -1)
	else
		Players[playerID]:AttachModifierByID(goody.ModifierID .. '_NORMAL')
	end

	
	if Game.GetLocalPlayer() == playerID then
		local goody_meta = {}
		for e in GameInfo.GoodyHutSubTypeMap() do
			if e.SubTypeGoodyHut == goody.SubTypeGoodyHut then
				goody_meta = e
			end
		end
		if goody_meta.Description then
			if goody_meta.Value then
				if goody_meta.UnitType then
					goody_meta.loc = Locale.Lookup(goody_meta.Description, goody_meta.Value, "LOC_" .. goody_meta.UnitType .. "_NAME")
				else 
					goody_meta.loc = Locale.Lookup(goody_meta.Description, goody_meta.Value)
				end
			else
				goody_meta.loc = Locale.Lookup(goody_meta.Description)
			end
			-- floating text for normal goody hut
			Game.AddWorldViewText(
				0,
				goody_meta.loc,
				unit:GetX(),
				unit:GetY(),
				0
			)
		end
	end
end

-- Rerolls a goody hut type into a legal goodyhutsubtype index from that class
function ReRollAllowed(goodyHutType)
	local types = {}
	local ctr = 0
	for row in GameInfo.GoodyHutSubTypes{GoodyHut = goodyHutType} do
		if row.Turn <= Game.GetCurrentGameTurn() and goodyHutType == row.GoodyHut then
			table.insert(types, row)
			ctr = ctr + row.Weight
		end
	end
	local rand = math.random(1, ctr)
	ctr = 0
	for i, e in ipairs(types) do
		if rand < (e.Weight + ctr) then
			return e.Index
		end
		ctr = ctr + e.Weight
	end
end

function OnGoodyHut(playerID:number, unitID:number, goodyHutType:number)
	if GameInfo.GoodyHutSubTypes[goodyHutType].SubTypeGoodyHut == "METEOR_GRANT_GOODIES" then
		return
	end
    local unit = UnitManager.GetUnit(playerID, unitID)
	if unit:GetType() == GameInfo.Units['UNIT_SR_OUTRIDER'].Index then
		ExposedMembers.SRGoodyHut.ChooseBoon(playerID, unitID);
	else
		local goody = GameInfo.GoodyHutSubTypes[goodyHutType]
		if goody.Turn > Game.GetCurrentGameTurn() then
			goody = GameInfo.GoodyHutSubTypes[ReRollAllowed(goody.GoodyHut)]
		end
		local params:table = {
			unit = unitID,
			goody = goody
		}
		NormalApply(playerID, params)
	end
end

GameEvents.UnitTriggerGoodyHut.Add(OnGoodyHut)
GameEvents.SRApplyGoodyHut.Add(NormalApply)
ExposedMembers.SRGoodyHut.Reroll = ReRollAllowed