local Root = script.Parent.Parent

local SetPromptState = require(Root.Actions.SetPromptState)
local PromptState = require(Root.Enums.PromptState)
local PurchaseWarning = require(Root.Enums.PurchaseWarning)
local launchRobuxUpsell = require(Root.Thunks.launchRobuxUpsell)
local Thunk = require(Root.Thunk)

local function resolvePurchasePrecheck(purchaseWarning)
	return Thunk.new(script.Name, {}, function(store, services)
		if purchaseWarning == PurchaseWarning.U13PaymentModal then
			return store:dispatch(SetPromptState(PromptState.U13PaymentModal))
		elseif purchaseWarning == PurchaseWarning.U13MonthlyThreshold1Modal then
			return store:dispatch(SetPromptState(PromptState.U13MonthlyThreshold1Modal))
		elseif purchaseWarning == PurchaseWarning.RequireEmailVerification then
			return store:dispatch(SetPromptState(PromptState.RequireEmailVerification))
		elseif purchaseWarning == PurchaseWarning.U13MonthlyThreshold2Modal then
			return store:dispatch(SetPromptState(PromptState.U13MonthlyThreshold2Modal))
		end

		return store:dispatch(launchRobuxUpsell())
	end)
end

return resolvePurchasePrecheck
