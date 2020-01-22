local Root = script.Parent.Parent
local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")

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
local Thunk = require(Root.Thunk)
local isMockingPurchases = require(Root.Utils.isMockingPurchases)

local requiredServices = {
	PlatformInterface,
}

local function launchPremiumUpsell()
	return Thunk.new(script.Name, requiredServices, function(store, services)
		local platformInterface = services[PlatformInterface]

		if isMockingPurchases() then
			-- Signal back end that they clicked yes
			-- waits for SignalPromptPremiumPurchaseFinished to report membership changed
			platformInterface.signalMockPurchasePremium()
			store:dispatch(PurchaseCompleteRecieved())
			return store:dispatch(SetWindowState(WindowState.Hidden))
		end

		local upsellFlow = getUpsellFlow(UserInputService:GetPlatform())

		if upsellFlow == UpsellFlow.Web then
			platformInterface.startPremiumUpsell()
			store:dispatch(SetPromptState(PromptState.UpsellInProgress))

		elseif upsellFlow == UpsellFlow.Mobile then
			local nativeProductId = store:getState().premiumProductInfo.mobileProductId

			platformInterface.promptNativePurchase(Players.LocalPlayer, nativeProductId)
			store:dispatch(SetPromptState(PromptState.UpsellInProgress))

		else
			store:dispatch(ErrorOccurred(PurchaseError.PremiumUnavailablePlatform))
		end
	end)
end

return launchPremiumUpsell