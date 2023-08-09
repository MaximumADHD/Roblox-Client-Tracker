local CorePackages = game:GetService("CorePackages")

local Rodux = require(CorePackages.Rodux)

local Actions = script.Parent.Parent.Actions
local SetSettings = require(Actions.SetSettings)

local Settings = Rodux.createReducer({
	preferredTransparency = 1,
	reducedMotion = false,
}, {
	[SetSettings.name] = function(state, action)
		return {
			preferredTransparency = action.preferredTransparency,
			reducedMotion = action.reducedMotion,
		}
	end,
})

return Settings
