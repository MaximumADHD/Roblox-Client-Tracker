local Root = script.Parent.Parent

local CorePackages = game:GetService("CorePackages")
local PurchasePromptDeps = require(CorePackages.PurchasePromptDeps)
local Rodux = PurchasePromptDeps.Rodux

local PurchaseCompleteRecieved = require(Root.Actions.PurchaseCompleteRecieved)
local CompleteRequest = require(Root.Actions.CompleteRequest)

return Rodux.createReducer(false, {
	[PurchaseCompleteRecieved.name] = function(state, action)
		return true
	end,
	[CompleteRequest.name] = function(state, action)
		return false
	end,
})
