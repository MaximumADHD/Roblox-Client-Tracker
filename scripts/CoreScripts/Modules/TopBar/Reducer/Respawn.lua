local CorePackages = game:GetService("CorePackages")

local TopBar = script.Parent.Parent
local FFlagTopBarDeprecateRespawnRodux = require(TopBar.Flags.FFlagTopBarDeprecateRespawnRodux)

if FFlagTopBarDeprecateRespawnRodux then
	return nil :: never
end

local Rodux = require(CorePackages.Packages.Rodux)

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
