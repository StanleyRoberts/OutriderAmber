-- GoodyChoiceUI
-- Author: stanr
-- DateCreated: 8/4/2024 6:03:45 PM
--------------------------------------------------------------

local choice = nil
local playerID = nil
local unit = nil
local refTable = {
	'CULTURE',
	'SCIENCE',
	'GOLD',
	'FAITH',
	'RELIC',
	'SCOUT',
	'HEAL',
	'POP',
	'BUILDER',
	'TRADER',
	'GOVERNOR',
	'ENVOY',
	'FAVOR',
	'RESOURCES',
	'EXPERIENCE'
}

function Submit()
	print("OCCGB submit")
	local goodyHutSubType = nil
	local modi = GetChoiceModifier()
	for row in GameInfo.GoodyHutSubTypes() do
		if row.ModifierID == modi then
			goodyHutSubType = row
		end
	end
	ExposedMembers.SRGoodyHut.ApplyGoody(goodyHutSubType, playerID, unit)
	if UIManager:DequeuePopup(ContextPtr) then
		UI.PlaySound("UI_Screen_Close");
	end
	Network.BroadcastPlayerInfo();
end

function GetChoiceModifier()
	print("OCCGB choice")
	if choice == 'RELIC' then
		return 'GOODY_CULTURE_GRANT_ONE_RELIC'
	elseif choice == 'SCOUT' or choice == 'EXPERIENCE' then
		return 'GOODY_MILITARY_GRANT_' .. choice
	elseif choice == 'HEAL' then
		return 'GOODY_MILITARY_HEAL'
	elseif choice == 'POP' then
		return 'GOODY_SURVIVORS_ADD_POPULATION'
	elseif choice == 'BUILDER' or choice == 'TRADER' then
		return 'GOODY_SURVIVORS_GRANT_' .. choice
	elseif choice == 'GOVERNOR' then
		return 'GOODY_DIPLOMACY_GRANT_GOVERNOR_TITLE'
	elseif choice == 'ENVOY' or choice == 'FAVOR' then
		return 'GOODY_DIPLOMACY_GRANT_' .. choice
	elseif choice == 'RESOURCES' then
		return 'GOODY_MILITARY_ADJUST_STRATEGIC_RESOURCES'
	else
		return GameInfo.GoodyHutSubTypes[ExposedMembers.SRGoodyHut.Reroll("GOODYHUT_" .. choice)].ModifierID
	end
end

function PopulateDropdown()
	print("OCCGB populate")
	Controls.Dropdown:ClearEntries()
	for i, type in ipairs(refTable) do
		local e = {}
		Controls.Dropdown:BuildEntry("DropDownEntry", e)
		e.Button:SetVoid1(i)
		e.Button:SetText(Locale.Lookup("LOC_SR_GOODY_" .. type .. "_NAME"))
	end
	Controls.Dropdown:RegisterSelectionCallback(
		function(i)
			Controls.Dropdown:GetButton():SetText(Locale.Lookup("LOC_SR_GOODY_" .. refTable[i] .. "_NAME"))
			choice = refTable[i]
			Controls.OKButton:SetDisabled(false)
		end
	)
	Controls.Dropdown:CalculateInternals()
end

function Menu(nplayerID, nunit)
	print("OCCGB menu")
	playerID = nplayerID
	unit = nunit
	choice = nil
	Controls.OKButton:SetDisabled(true)
	Controls.Dropdown:GetButton():SetText("")
	PopulateDropdown()
	if not UIManager:IsInPopupQueue(ContextPtr) then
		UIManager:QueuePopup(ContextPtr, PopupPriority.Medium);
		UI.PlaySound("UI_Screen_Open");
	end
end

ExposedMembers.SRGoodyHut.ChooseBoon = Menu
Controls.OKButton:RegisterCallback( Mouse.eLClick, Submit )