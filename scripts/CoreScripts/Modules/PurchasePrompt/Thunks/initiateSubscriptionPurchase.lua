--!nonstrict
local Root = script.Parent.Parent
local HttpService = game:GetService("HttpService")
local CorePackages = game:GetService("CorePackages")

local Promise = require(Root.Promise)
local Thunk = require(Root.Thunk)
local PurchaseError = require(Root.Enums.PurchaseError)
local setPurchaseFlowUUID = require(Root.Actions.SetPurchaseFlowUUID)
local RequestSubscriptionPurchase = require(Root.Actions.RequestSubscriptionPurchase)
local ErrorOccurred = require(Root.Actions.ErrorOccurred)
local getPremiumUpsellPrecheck = require(Root.Network.getPremiumUpsellPrecheck)
local getSubscriptionPurchaseInfo = require(Root.Network.getSubscriptionPurchaseInfo)
local Network = require(Root.Services.Network)
local ExternalSettings = require(Root.Services.ExternalSettings)
local resolveSubscriptionPromptState = require(Root.Thunks.resolveSubscriptionPromptState)
local hasPendingRequest = require(Root.Utils.hasPendingRequest)
local Logging = require(CorePackages.Workspace.Packages.AppCommonLib).Logging
local LoggingProtocol = require(CorePackages.Workspace.Packages.LoggingProtocol)

local FFlagEnablePurchaseFlowUUIDMigration = require(Root.Flags.FFlagEnablePurchaseFlowUUIDMigration)

-- Import centralized telemetry configs from Events directory
local CentralizedTelemetry = require(Root.Events.PurchaseFlowUUIDTelemetry)

local requiredServices = {
	Network,
	ExternalSettings,
}

local function initiateSubscriptionPurchase(subscriptionId)
	return Thunk.new(script.Name, requiredServices, function(store, services)
		local network = services[Network]
		local externalSettings = services[ExternalSettings]
		
		-- Generate a new purchase flow UUID at the start of each purchase attempt
		-- When flag is disabled, UUID generation happens in ProductPurchaseContainer
		if FFlagEnablePurchaseFlowUUIDMigration then
			local newUUID = HttpService:GenerateGUID(false)
			store:dispatch(setPurchaseFlowUUID(newUUID))
			
			LoggingProtocol.default:logRobloxTelemetryCounter(
				CentralizedTelemetry.InitiatePurchaseCounter,
				1.0,
				{
					method = "initiateSubscriptionPurchase",
				}
			)
		end
		
		if hasPendingRequest(store:getState()) then
			return nil
		end
		
		store:dispatch(RequestSubscriptionPurchase(subscriptionId))

		if externalSettings.getFlagOrder66() then
			store:dispatch(ErrorOccurred(PurchaseError.PurchaseDisabled))
			return nil
		end
		return getSubscriptionPurchaseInfo(network, subscriptionId)
			:andThen(function(results)
				store:dispatch(resolveSubscriptionPromptState(results))
			end)
			:catch(function(errorReason)
				store:dispatch(ErrorOccurred(errorReason))
			end)
	end)
end

return initiateSubscriptionPurchase
