local Root = script.Parent.Parent
local ErrorOccurred = require(Root.Actions.ErrorOccurred)
local PurchaseCompleteRecieved = require(Root.Actions.PurchaseCompleteRecieved)
local SetWindowState = require(Root.Actions.SetWindowState)
local SetPromptState = require(Root.Actions.SetPromptState)
local PromptState = require(Root.Enums.PromptState)
local WindowState = require(Root.Enums.WindowState)
local performSubscriptionPurchase = require(Root.Network.performSubscriptionPurchase)
local ExternalSettings = require(Root.Services.ExternalSettings)
local Network = require(Root.Services.Network)
local Thunk = require(Root.Thunk)
local hideWindow = require(Root.Thunks.hideWindow)

local GetFFlagEnableNativeSubscriptionPurchase = require(Root.Flags.GetFFlagEnableNativeSubscriptionPurchase)

local requiredServices = {
	ExternalSettings,
	Network,
}

local function launchSubscriptionPurchase()
	return Thunk.new(script.Name, requiredServices, function(store, services)
		local externalSettings = services[ExternalSettings]
		local network = services[Network]


		if externalSettings.isStudio() then
			store:dispatch(PurchaseCompleteRecieved())
			if GetFFlagEnableNativeSubscriptionPurchase() then
				store:dispatch(hideWindow())
				return nil
			else
				return store:dispatch(SetWindowState(WindowState.Hidden))
			end
		end

		if GetFFlagEnableNativeSubscriptionPurchase() then
			performSubscriptionPurchase(network, store:getState().promptRequest.id)
			:catch(function(errorReason)
				store:dispatch(ErrorOccurred(errorReason))
			end)
			store:dispatch(SetPromptState(PromptState.UpsellInProgress))
			store:dispatch(hideWindow())
			return nil
		else
			return nil
		end
	end)
	
end

return launchSubscriptionPurchase
