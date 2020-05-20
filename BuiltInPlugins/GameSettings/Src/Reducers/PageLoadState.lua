--[[
	Reducer for load state of pages
]]

local Plugin = script.Parent.Parent.Parent
local Cryo = require(Plugin.Cryo)
local Rodux = require(Plugin.Rodux)

return Rodux.createReducer({
	--[pageName] = LoadState.Blah
}, {
	ResetStore = function(state, action)
		return {}
	end,

	SetPageLoadState = function(state, action)
		return Cryo.Dictionary.join(state, {
			[action.pageId] = action.loadState,
		})
	end,
})