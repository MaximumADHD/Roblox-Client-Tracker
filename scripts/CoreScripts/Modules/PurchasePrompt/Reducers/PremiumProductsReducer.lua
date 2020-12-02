local Root = script.Parent.Parent
local CorePackages = game:GetService("CorePackages")
local PurchasePromptDeps = require(CorePackages.PurchasePromptDeps)
local Rodux = PurchasePromptDeps.Rodux

local CompleteRequest = require(Root.Actions.CompleteRequest)
local PremiumInfoRecieved = require(Root.Actions.PremiumInfoRecieved)

local PremiumProductsReducer = Rodux.createReducer({}, {
	[PremiumInfoRecieved.name] = function(state, action)
		return action.premiumInfo
	end,
	[CompleteRequest.name] = function(state, action)
		-- Clear product info when we hide the prompt
		return {}
	end,
})

return PremiumProductsReducer
