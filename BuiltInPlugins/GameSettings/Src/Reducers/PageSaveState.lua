--[[
	Reducer for save state of pages
]]

local Plugin = script.Parent.Parent.Parent
local Cryo = require(Plugin.Cryo)
local Rodux = require(Plugin.Rodux)

return Rodux.createReducer({
	--[pageName] = SaveState.Blah
}, {
	ResetStore = function(state, action)
		return {}
	end,

	SetPageSaveState = function(state, action)
		return Cryo.Dictionary.join(state, {
			[action.pageId] = action.saveState,
		})
	end,
})