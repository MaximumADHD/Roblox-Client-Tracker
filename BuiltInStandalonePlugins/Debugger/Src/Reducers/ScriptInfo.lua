local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)
local Cryo = require(Plugin.Packages.Cryo)

local Actions = Plugin.Src.Actions
local ChangeFilenameForGuidAction = require(Actions.Common.ChangeFilenameForGuid)
local SetFilenameForGuidAction = require(Actions.Common.SetFilenameForGuid)

type ScriptRefGuid = string
type FileName = string

type ScriptInfoStore = {
	ScriptInfo : {
		[ScriptRefGuid] : FileName,
	},
}

local initialState : ScriptInfoStore = {
	ScriptInfo = {},
}

return Rodux.createReducer(initialState, {
	[SetFilenameForGuidAction.name] = function(state: ScriptInfoStore, action : SetFilenameForGuidAction.Props)
		local updatedScriptInfo = Cryo.Dictionary.join(state.ScriptInfo, {
			[action.scriptRefGuid] = action.fileName
		})
		return Cryo.Dictionary.join(
			state, {ScriptInfo = updatedScriptInfo}
		)
	end,
	
	[ChangeFilenameForGuidAction.name] = function(state: ScriptInfoStore, action : ChangeFilenameForGuidAction.Props)
		-- Check if ScriptRef already in store (should be added into the store from setFilenameForGuid)
		if not state.ScriptInfo[action.scriptRefGuid] then
			return state
		end
		local updatedScriptInfo = Cryo.Dictionary.join(state.ScriptInfo, {
			[action.scriptRefGuid] = action.fileName
		})
		return Cryo.Dictionary.join(
			state, {ScriptInfo = updatedScriptInfo}
		)
	end,
})
