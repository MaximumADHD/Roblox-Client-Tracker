--[[
	Provides mock analytics by default, but SetAnalytics
	can be called with a new Analytics object to override
	the mock and send actual analytics events.

	Analytics is in a store rather than context so that it can
	be dispatched from anywhere (thunks, etc). Most components
	that use analytics are also connected to the store, so we
	get this for free.
]]

local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Rodux)
local Analytics = require(Plugin.Src.Util.Analytics)

return Rodux.createReducer(Analytics.mock(), {
	SetAnalytics = function(state, action)
		local newData = action.analytics
		return newData
	end,
})