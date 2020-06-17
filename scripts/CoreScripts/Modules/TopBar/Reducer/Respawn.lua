local CorePackages = game:GetService("CorePackages")

local Rodux = require(CorePackages.Rodux)

local Actions = script.Parent.Parent.Actions

local SetRespawnBehaviour = require(Actions.SetRespawnBehaviour)

return Rodux.createReducer({
	enabled = true,
	customCallback = nil,
}, {
	[SetRespawnBehaviour.name] = function(state, action)
		return {
			enabled = action.respawnEnabled,
			customCallback = action.customCallback,
		}
	end,
})