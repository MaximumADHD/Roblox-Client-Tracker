--!nonstrict
local Root = script.Parent.Parent

local CorePackages = game:GetService("CorePackages")
local PurchasePromptDeps = require(CorePackages.Workspace.Packages.PurchasePromptDeps)
local Rodux = PurchasePromptDeps.Rodux

local SetEconomicRestrictionError = require(Root.Actions.SetEconomicRestrictionError)

return Rodux.createReducer({}, {
	[SetEconomicRestrictionError.name] = function(state, action)
		return {
			timeoutMinutes = action.timeoutMinutes,
			violationType = action.violationType,
		}
	end,
})