local CorePackages = game:GetService("CorePackages")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Cryo = InGameMenuDependencies.Cryo
local Rodux = InGameMenuDependencies.Rodux

local InGameMenu = script.Parent.Parent

local SetRespawning = require(InGameMenu.Actions.SetRespawning)
local SetRespawnBehavior = require(InGameMenu.Actions.SetRespawnBehavior)

return Rodux.createReducer({
	dialogOpen = false,
	enabled = true,
	customCallback = nil,
}, {
	[SetRespawning.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			dialogOpen = action.respawning,
		})
	end,
	[SetRespawnBehavior.name] = function(state, action)
		local newDialogOpen = state.dialogOpen

		if not action.respawnEnabled then
			newDialogOpen = false
		end

		return {
			customCallback = action.customCallback,
			enabled = action.respawnEnabled,
			dialogOpen = newDialogOpen,
		}
	end,
})