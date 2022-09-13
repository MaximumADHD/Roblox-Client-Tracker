--!nonstrict
local Root = script.Parent.Parent

local CorePackages = game:GetService("CorePackages")
local PurchasePromptDeps = require(CorePackages.PurchasePromptDeps)
local Rodux = PurchasePromptDeps.Rodux

local SetPurchaseFlow = require(Root.Actions.SetPurchaseFlow)
local CompleteRequest = require(Root.Actions.CompleteRequest)
local PurchaseFlow = require(Root.Enums.PurchaseFlow)

return Rodux.createReducer(false, {
	[CompleteRequest.name] = function(state, action)
		return PurchaseFlow.None
	end,
	[SetPurchaseFlow.name] = function(state, action)
		return action.purchaseFlow
	end,
})
