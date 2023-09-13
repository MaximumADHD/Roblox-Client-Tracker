--!nonstrict
local Root = script.Parent.Parent

local SetPromptState = require(Root.Actions.SetPromptState)
local ErrorOccurred = require(Root.Actions.ErrorOccurred)
local SubscriptionPurchaseInfoReceived = require(Root.Actions.SubscriptionPurchaseInfoReceived)

local PromptState = require(Root.Enums.PromptState)
local PurchaseError = require(Root.Enums.PurchaseError)

local Thunk = require(Root.Thunk)

local function resolveSubscriptionPromptState(subscriptionPurchaseInfo)
	return Thunk.new(script.Name, nil, function(store, services)

		store:dispatch(SubscriptionPurchaseInfoReceived(subscriptionPurchaseInfo))

		if subscriptionPurchaseInfo.CanPurchase == false then
			return store:dispatch(ErrorOccurred(PurchaseError.AlreadySubscribed))
		end
		
		return store:dispatch(SetPromptState(PromptState.PromptSubscriptionPurchase))
		
	end)
end

return resolveSubscriptionPromptState
