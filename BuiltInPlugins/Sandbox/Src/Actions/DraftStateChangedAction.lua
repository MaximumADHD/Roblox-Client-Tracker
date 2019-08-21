--[[
	Fired when a draft's state changes
]]
local Plugin = script.Parent.Parent.Parent
local Action = require(script.Parent.Action)

local AutosaveState = require(Plugin.Src.Symbols.AutosaveState)
local CommitState = require(Plugin.Src.Symbols.CommitState)
local DraftState = require(Plugin.Src.Symbols.DraftState)

local function dictContains(dict, value)
	for _,v in pairs(dict) do
		if v == value then
			return true
		end
	end

	return false
end

-- draft : (Instance) the script instance for a draft
-- draftStateType : (DraftState) the type of state that was changed
-- draftStateValue : value of the state that was changed
return Action(script.Name, function(draft, draftStateType, draftStateValue)
	local strStateType = tostring(draftStateType)
	local strStateValue = tostring(draftStateValue)
	local draftType = typeof(draft)

	assert(draftType == "Instance", "Expected draft to be Instance. Got '"..draftType.."'")
	assert(draft:IsA("LuaSourceContainer"), "Expected draft to be a LuaSourceContainer. Got '"..draft.ClassName.."'")
	assert(dictContains(DraftState, draftStateType) ~= nil, "Expected valid DraftState. Got '"..strStateType.."'")

	if draftStateType == DraftState.Outdated or draftStateType == DraftState.Removed then
		local stateValueType = typeof(draftStateValue)
		assert(stateValueType == "boolean", "Expected type boolean for state type "..strStateType
			..". Got '"..strStateValue.."'")
	elseif draftStateType == DraftState.Autosaved then
		assert(dictContains(AutosaveState, draftStateValue), "Expected valid "..strStateType..". Got '"..strStateValue.."'")
	elseif draftStateType == DraftState.Committed then
		assert(dictContains(CommitState, draftStateValue), "Expected valid "..strStateType..". Got '"..strStateValue.."'")
	end

	return {
		Draft = draft,
		StateType = draftStateType,
		StateValue = draftStateValue,
	}
end)