--!nonstrict
local Root = script.Parent.Parent
local HttpService = game:GetService("HttpService")
local CorePackages = game:GetService("CorePackages")

local Promise = require(Root.Promise)
local Thunk = require(Root.Thunk)
local PurchaseError = require(Root.Enums.PurchaseError)
local setPurchaseFlowUUID = require(Root.Actions.SetPurchaseFlowUUID)
local RequestPremiumPurchase = require(Root.Actions.RequestPremiumPurchase)
local ErrorOccurred = require(Root.Actions.ErrorOccurred)
local getPremiumUpsellPrecheck = require(Root.Network.getPremiumUpsellPrecheck)
local getPremiumProductInfo = require(Root.Network.getPremiumProductInfo)
local getAccountInfo = require(Root.Network.getAccountInfo)
local getBalanceInfo = require(Root.Network.getBalanceInfo)
local Network = require(Root.Services.Network)
local ExternalSettings = require(Root.Services.ExternalSettings)
local resolvePremiumPromptState = require(Root.Thunks.resolvePremiumPromptState)
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

local function initiatePremiumPurchase(id, infoType, equipIfPurchased)
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
					method = "initiatePremiumPurchase",
				}
			)
		end
		
		if hasPendingRequest(store:getState()) then
			return nil
		end
		store:dispatch(RequestPremiumPurchase())

		if externalSettings.getFlagOrder66() then
			store:dispatch(ErrorOccurred(PurchaseError.PurchaseDisabled))
			return nil
		end

		local shouldPrecheck = not externalSettings.isStudio()
		return Promise.all({
			canShowUpsell = shouldPrecheck and getPremiumUpsellPrecheck(network) or Promise.resolve(true),
			premiumProductInfo = getPremiumProductInfo(network),
			accountInfo = getAccountInfo(network, externalSettings),
			balanceInfo = getBalanceInfo(network, externalSettings, false --[[overrideStudioMock]]),
		})
			:andThen(function(results)
				store:dispatch(resolvePremiumPromptState(results.accountInfo, results.balanceInfo, results.premiumProductInfo, results.canShowUpsell))
			end)
			:catch(function(errorReason)
				store:dispatch(ErrorOccurred(errorReason))
			end)
	end)
end

return initiatePremiumPurchase
