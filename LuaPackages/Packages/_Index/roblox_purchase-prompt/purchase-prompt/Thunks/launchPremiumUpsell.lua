local Root = script.Parent.Parent
local Players = game:GetService("Players")

local ErrorOccurred = require(Root.Actions.ErrorOccurred)
local PurchaseCompleteRecieved = require(Root.Actions.PurchaseCompleteRecieved)
local SetPromptState = require(Root.Actions.SetPromptState)
local SetWindowState = require(Root.Actions.SetWindowState)
local UpsellFlow = require(Root.Enums.UpsellFlow)
local PromptState = require(Root.Enums.PromptState)
local PurchaseError = require(Root.Enums.PurchaseError)
local WindowState = require(Root.Enums.WindowState)
local getUpsellFlow = require(Root.NativeUpsell.getUpsellFlow)
local PlatformInterface = require(Root.Services.PlatformInterface)
local ExternalSettings = require(Root.Services.ExternalSettings)
local hideWindow = require(Root.Thunks.hideWindow)
local Thunk = require(Root.Thunk)

local requiredServices = {
	PlatformInterface,
	ExternalSettings,
}

local function launchPremiumUpsell()
	return Thunk.new(script.Name, requiredServices, function(store, services)
		local platformInterface = services[PlatformInterface]
		local externalSettings = services[ExternalSettings]
		local state = store:getState()
		local premiumProductInfo = state.premiumProductInfo

		if externalSettings.isStudio() then
			-- Signal back end that they clicked yes
			-- waits for SignalPromptPremiumPurchaseFinished to report membership changed
			platformInterface.signalMockPurchasePremium()
			store:dispatch(PurchaseCompleteRecieved())
			return store:dispatch(SetWindowState(WindowState.Hidden))
		end

		local upsellFlow = getUpsellFlow(externalSettings.getPlatform())

		if upsellFlow == UpsellFlow.Web then
			local productId = premiumProductInfo.productId

			platformInterface.startPremiumUpsell(productId)
			store:dispatch(SetPromptState(PromptState.UpsellInProgress))
			store:dispatch(hideWindow())

		elseif upsellFlow == UpsellFlow.Mobile then
			local nativeProductId = premiumProductInfo.mobileProductId

			platformInterface.promptNativePurchase(Players.LocalPlayer, nativeProductId)
			store:dispatch(SetPromptState(PromptState.UpsellInProgress))
			store:dispatch(hideWindow())

		else
			store:dispatch(ErrorOccurred(PurchaseError.PremiumUnavailablePlatform))
		end
	end)
end

return launchPremiumUpsell