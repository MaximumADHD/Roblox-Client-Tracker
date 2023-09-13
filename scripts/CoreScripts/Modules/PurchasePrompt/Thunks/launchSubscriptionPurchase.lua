local Root = script.Parent.Parent
local Players = game:GetService("Players")

local ErrorOccurred = require(Root.Actions.ErrorOccurred)
local PurchaseCompleteRecieved = require(Root.Actions.PurchaseCompleteRecieved)
local SetWindowState = require(Root.Actions.SetWindowState)
local PurchaseError = require(Root.Enums.PurchaseError)
local WindowState = require(Root.Enums.WindowState)
local getUpsellFlow = require(Root.NativeUpsell.getUpsellFlow)
local Analytics = require(Root.Services.Analytics)
local PlatformInterface = require(Root.Services.PlatformInterface)
local ExternalSettings = require(Root.Services.ExternalSettings)
local hideWindow = require(Root.Thunks.hideWindow)
local Thunk = require(Root.Thunk)

local requiredServices = {
	ExternalSettings,
}

local function launchSubscriptionPurchase()
	return Thunk.new(script.Name, requiredServices, function(store, services)
		local externalSettings = services[ExternalSettings]

		if externalSettings.isStudio() then
			store:dispatch(PurchaseCompleteRecieved())
			return store:dispatch(SetWindowState(WindowState.Hidden))
		end
		return nil
	end)
end

return launchSubscriptionPurchase
