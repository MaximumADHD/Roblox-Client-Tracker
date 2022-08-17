--!nonstrict
local CorePackages = game:GetService("CorePackages")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Cryo = InGameMenuDependencies.Cryo
local Rodux = InGameMenuDependencies.Rodux

local InGameMenu = script.Parent.Parent

local SetRespawning = require(InGameMenu.Actions.SetRespawning)
local SetRespawnBehavior = require(InGameMenu.Actions.SetRespawnBehavior)
local SetMenuOpen = require(InGameMenu.Actions.SetMenuOpen)
local SetCurrentPage = require(InGameMenu.Actions.SetCurrentPage)

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
	[SetMenuOpen.name] = function(state, action)
		if not action.menuOpen then
			return Cryo.Dictionary.join(state, {
				dialogOpen = false,
			})
		end
		return state
	end,
	-- If you are changing page, show the new page by hiding the dialog.
	-- This can happen when pressing X to leave.
	[SetCurrentPage.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			dialogOpen = false,
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
