--[[
	Reducer for metadata of a game that can't be directly changed by the user (otherwise put in Settings)
]]

local Plugin = script.Parent.Parent.Parent
local Cryo = require(Plugin.Packages.Cryo)
local Rodux = require(Plugin.Packages.Rodux)

local DEFAULT_STATE = {
	editPlaceId = 0,
	editDevProductId = nil,
}

return Rodux.createReducer(DEFAULT_STATE, {
	ResetStore = function(state, action)
		return DEFAULT_STATE
	end,

    SetEditPlaceId = function(state, action)
        return Cryo.Dictionary.join(state, {
			editPlaceId = action.editPlaceId,
		})
	end,

	SetEditDevProductId = function(state, action)
		return Cryo.Dictionary.join(state, {
			editDevProductId = (action.editDevProductId ~= nil) and action.editDevProductId or Cryo.None
		})
	end,
})