--!nonstrict
local Root = script.Parent.Parent
local Players = game:GetService("Players")

local ErrorOccurred = require(Root.Actions.ErrorOccurred)
local SetPromptState = require(Root.Actions.SetPromptState)
local UpsellFlow = require(Root.Enums.UpsellFlow)
local PromptState = require(Root.Enums.PromptState)
local PurchaseError = require(Root.Enums.PurchaseError)
local hideWindow = require(Root.Thunks.hideWindow)
local getUpsellFlow = require(Root.NativeUpsell.getUpsellFlow)
local Analytics = require(Root.Services.Analytics)
local ExternalSettings = require(Root.Services.ExternalSettings)
local Network = require(Root.Services.Network)
local PlatformInterface = require(Root.Services.PlatformInterface)
local Thunk = require(Root.Thunk)
local Promise = require(Root.Promise)

local requiredServices = {
	Analytics,
	ExternalSettings,
	Network,
	PlatformInterface,
}

local function openSecuritySettings(challengeResponse: string?)
	return Thunk.new(script.Name, requiredServices, function(store, services)
		local analytics = services[Analytics]
		local externalSettings = services[ExternalSettings]
		local platformInterface = services[PlatformInterface]
		local state = store:getState()

		local upsellFlow = getUpsellFlow(externalSettings.getPlatform())

		if upsellFlow == UpsellFlow.Web then
			local productId = state.productInfo.productId
			local requestType = state.requestType

			analytics.signalTwoSVSettingsErrorConfirmed(productId, requestType)
			if challengeResponse then
				platformInterface.openSecuritySettings(challengeResponse)
			else
				platformInterface.openSecuritySettings()
			end
		end
		store:dispatch(hideWindow())
	end)
end

return openSecuritySettings
