local Root = script.Parent.Parent

local CorePackages = game:GetService("CorePackages")
local PurchasePromptDeps = require(CorePackages.PurchasePromptDeps)
local Rodux = PurchasePromptDeps.Rodux

local SetProduct = require(Root.Actions.SetProduct)
local CompleteRequest = require(Root.Actions.CompleteRequest)

local ProductReducer = Rodux.createReducer({}, {
	[SetProduct.name] = function(state, action)
		return {
			id = action.id,
			infoType = action.infoType,
			equipIfPurchased = action.equipIfPurchased,
		}
	end,
	[CompleteRequest.name] = function(state, action)
		return {}
	end,
})

return ProductReducer
