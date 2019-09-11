local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Rodux)
local Cryo = require(Plugin.Cryo)
local Constants = require(Plugin.Src.Util.Constants)

return Rodux.createReducer({
	Past = {},
	Future = {},
	MaxWaypointSize = Constants.MAX_WAYPOINT_SIZE,
}, {
	SetPast = function(state, action)
		return Cryo.Dictionary.join(state, {
			Past = action.past,
		})
	end,

	SetFuture = function(state, action)
		return Cryo.Dictionary.join(state, {
			Future = action.future,
		})
	end,

	SetMaxWaypointSize = function(state, action)
		return Cryo.Dictionary.join(state, {
			MaxWaypointSize = action.maxSize,
		})
	end,
})