local Root = script.Parent.Parent
local UserInputService = game:GetService("UserInputService")
local RbxAnalyticsService = game:GetService("RbxAnalyticsService")

local SetPromptState = require(Root.Actions.SetPromptState)
local ErrorOccurred = require(Root.Actions.ErrorOccurred)
local PremiumInfoRecieved = require(Root.Actions.PremiumInfoRecieved)
local AccountInfoReceived = require(Root.Actions.AccountInfoReceived)
local PromptState = require(Root.Enums.PromptState)
local PurchaseError = require(Root.Enums.PurchaseError)
local ExternalSettings = require(Root.Services.ExternalSettings)
local isMockingPurchases = require(Root.Utils.isMockingPurchases)
local Thunk = require(Root.Thunk)

local requiredServices = {
	ExternalSettings,
}

local function resolvePremiumPromptState(accountInfo, premiumProduct)
	return Thunk.new(script.Name, requiredServices, function(store, services)
		local platform = UserInputService:GetPlatform()

		store:dispatch(PremiumInfoRecieved(premiumProduct))
		store:dispatch(AccountInfoReceived(accountInfo))

		if accountInfo.MembershipType == 4 then
			if not isMockingPurchases() then
				RbxAnalyticsService:SetRBXEvent("client", "InGamePrompt", "PremiumUpsellShownPremium", { gameID = game.GameId })
			end
			return store:dispatch(ErrorOccurred(PurchaseError.AlreadyPremium))
		end

		if platform == Enum.Platform.XBoxOne then
			return store:dispatch(ErrorOccurred(PurchaseError.PremiumUnavailablePlatform))
		end

		if premiumProduct == nil then
			return store:dispatch(ErrorOccurred(PurchaseError.PremiumUnavailable))
		end

		if not isMockingPurchases() then
			RbxAnalyticsService:SetRBXEvent("client", "InGamePrompt", "PremiumUpsellShownNonPremium", { gameID = game.GameId })
		end
		return store:dispatch(SetPromptState(PromptState.PremiumUpsell))
	end)
end

return resolvePremiumPromptState