-- Remove with FFlagTopBarSignalizeHealthBar
--!nonstrict
local CorePackages = game:GetService("CorePackages")

local Rodux = require(CorePackages.Packages.Rodux)

local Actions = script.Parent.Parent.Actions
local UpdateHealth = require(Actions.UpdateHealth)
local SetIsDead = require(Actions.SetIsDead)

local CoreGuiCommon = require(CorePackages.Workspace.Packages.CoreGuiCommon)
local FFlagTopBarSignalizeHealthBar = CoreGuiCommon.Flags.FFlagTopBarSignalizeHealthBar

if FFlagTopBarSignalizeHealthBar then 
	return nil :: never 
end

local initialHealth = {
	isDead = false,
	currentHealth = 100,
	maxHealth = 100,
}

local Health = Rodux.createReducer(initialHealth, {
	[UpdateHealth.name] = function(state, action)
		return {
			isDead = state.isDead,
			currentHealth = action.health,
			maxHealth = action.maxHealth,
		}
	end,

	[SetIsDead.name] = function(state, action)
		return {
			isDead = action.isDead,
			currentHealth = state.currentHealth,
			maxHealth = state.maxHealth,
		}
	end,
})

return Health
