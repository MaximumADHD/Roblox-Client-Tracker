--[[
	Reducer for the current status of the application.
	Stores a CurrentStatus defining what the current status of the app is.
]]

local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Rodux)

local CurrentStatus = require(Plugin.Src.Util.CurrentStatus)

local DEFAULT_STATE = CurrentStatus.Closed

return Rodux.createReducer(DEFAULT_STATE, {
	ResetStore = function(state, action)
		return DEFAULT_STATE
	end,

	SetCurrentStatus = function(state, action)
		return action.currentStatus
	end,
})