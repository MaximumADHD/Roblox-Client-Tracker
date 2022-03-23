local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)
local Cryo = require(Plugin.Packages.Cryo)

local Actions = Plugin.Src.Actions
local SetFilenameForGuidAction = require(Actions.Common.SetFilenameForGuid)
local SetScriptSourceLineAction = require(Actions.Common.SetScriptSourceLine)

type ScriptRefGuid = string
type FileName = string
type LineNumber = number

type ScriptInfoStore = {
	ScriptInfo : {
		[ScriptRefGuid] : FileName,
	},
	ScriptLineContents : {
		[ScriptRefGuid] : {
			[LineNumber] : string,
		}
	},
}

local initialState : ScriptInfoStore = {
	ScriptInfo = {},
	ScriptLineContents = {},
}

return Rodux.createReducer(initialState, {
	[SetFilenameForGuidAction.name] = function(state: ScriptInfoStore, action : SetFilenameForGuidAction.Props)
		-- Guids are registered with a blank string initially, but should never be made blank after this
		-- We might attempt to do this in the case where the callstack hits a scripts already registered
		-- Return early rather than clearing the entry
		if action.fileName == "" then
			if state.ScriptInfo[action.scriptRefGuid] ~= nil then
				return state
			end
		end

		local updatedScriptInfo = Cryo.Dictionary.join(state.ScriptInfo, {
			[action.scriptRefGuid] = action.fileName
		})
		return Cryo.Dictionary.join(
			state, {ScriptInfo = updatedScriptInfo}
		)
	end,

	[SetScriptSourceLineAction.name] = function(state: ScriptInfoStore, action : SetScriptSourceLineAction.Props)
		local updatedScriptLineContents = Cryo.Dictionary.join(state.ScriptLineContents, {
			[action.scriptRefGuid] = Cryo.Dictionary.join(state.ScriptLineContents[action.scriptRefGuid] or {}, {
				[action.lineNumber] = action.source
			})
		})
		return Cryo.Dictionary.join(
			state, {ScriptLineContents = updatedScriptLineContents}
		)
	end,
})
