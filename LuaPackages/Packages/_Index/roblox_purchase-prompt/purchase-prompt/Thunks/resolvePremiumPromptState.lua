local Root = script.Parent.Parent
local Players = game:GetService("Players")

local SetPromptState = require(Root.Actions.SetPromptState)
local ErrorOccurred = require(Root.Actions.ErrorOccurred)
local PremiumInfoRecieved = require(Root.Actions.PremiumInfoRecieved)
local AccountInfoReceived = require(Root.Actions.AccountInfoReceived)
local PromptState = require(Root.Enums.PromptState)
local PurchaseError = require(Root.Enums.PurchaseError)
local Analytics = require(Root.Services.Analytics)
local ExternalSettings = require(Root.Services.ExternalSettings)
local Network = require(Root.Services.Network)
local postPremiumImpression = require(Root.Network.postPremiumImpression)
local completeRequest = require(Root.Thunks.completeRequest)
local Thunk = require(Root.Thunk)


local requiredServices = {
	Network,
	ExternalSettings,
	Analytics,
}

local function resolvePremiumPromptState(accountInfo, premiumProduct, canShowUpsell)
	return Thunk.new(script.Name, requiredServices, function(store, services)
		local network = services[Network]
		local externalSettings = services[ExternalSettings]
		local analytics = services[Analytics]
		local platform = externalSettings.getPlatform()

		store:dispatch(PremiumInfoRecieved(premiumProduct))
		store:dispatch(AccountInfoReceived(accountInfo))

		if canShowUpsell == false then
			return store:dispatch(completeRequest())
		end

		if externalSettings.isStudio() then
			if Players.LocalPlayer.MembershipType == Enum.MembershipType.Premium then
				return store:dispatch(ErrorOccurred(PurchaseError.AlreadyPremium))
			end
		else
			if accountInfo.MembershipType == 4 then
				analytics.signalPremiumUpsellShownPremium()
				return store:dispatch(ErrorOccurred(PurchaseError.AlreadyPremium))
			end
		end

		if platform == Enum.Platform.XBoxOne then
			return store:dispatch(ErrorOccurred(PurchaseError.PremiumUnavailablePlatform))
		end

		if premiumProduct == nil then
			return store:dispatch(ErrorOccurred(PurchaseError.PremiumUnavailable))
		end

		if not externalSettings.isStudio() then
			analytics.signalPremiumUpsellShownNonPremium()
			postPremiumImpression(network)
		end
		return store:dispatch(SetPromptState(PromptState.PremiumUpsell))
	end)
end

return resolvePremiumPromptState
