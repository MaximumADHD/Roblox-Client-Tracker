--[[
    Reducer for load state of individual components
]]

local Plugin = script.Parent.Parent.Parent
local Cryo = require(Plugin.Packages.Cryo)
local Rodux = require(Plugin.Packages.Rodux)

return Rodux.createReducer({
	--[componentName] = LoadState.Loading
}, {
	SetComponentLoadState = function(state, action)
		return Cryo.Dictionary.join(state, {
			[action.componentName] = action.loadState,
		})
	end,
})
