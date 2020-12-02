--[[
	Connects Rodux store to external MarketplaceService events
]]
local Root = script.Parent.Parent.Parent
local MarketplaceService = game:GetService("MarketplaceService")
local Players = game:GetService("Players")
local CorePackages = game:GetService("CorePackages")

local PurchasePromptDeps = require(CorePackages.PurchasePromptDeps)
local Roact = PurchasePromptDeps.Roact

local ErrorOccurred = require(Root.Actions.ErrorOccurred)
local PurchaseError = require(Root.Enums.PurchaseError)
local completePurchase = require(Root.Thunks.completePurchase)
local initiatePurchase = require(Root.Thunks.initiatePurchase)
local initiateBundlePurchase = require(Root.Thunks.initiateBundlePurchase)
local initiatePremiumPurchase = require(Root.Thunks.initiatePremiumPurchase)
local initiateSubscriptionPurchase = require(Root.Thunks.initiateSubscriptionPurchase)
local connectToStore = require(Root.connectToStore)

local GetFFlagPromptRobloxPurchaseEnabled = require(Root.Flags.GetFFlagPromptRobloxPurchaseEnabled)
local GetFFlagDeveloperSubscriptionsEnabled = require(Root.Flags.GetFFlagDeveloperSubscriptionsEnabled)

local ExternalEventConnection = require(script.Parent.ExternalEventConnection)

local function MarketplaceServiceEventConnector(props)
	local onPurchaseRequest = props.onPurchaseRequest
	local onProductPurchaseRequest = props.onProductPurchaseRequest
	local onPurchaseGamePassRequest = props.onPurchaseGamePassRequest
	local onServerPurchaseVerification = props.onServerPurchaseVerification
	local onBundlePurchaseRequest = props.onBundlePurchaseRequest
	local onPremiumPurchaseRequest = props.onPremiumPurchaseRequest
	local onRobloxPurchaseRequest = props.onRobloxPurchaseRequest
	local onSubscriptionPurchaseRequest = props.onSubscriptionPurchaseRequest

	return Roact.createFragment({
		Roact.createElement(ExternalEventConnection, {
			event = MarketplaceService.PromptPurchaseRequested,
			callback = onPurchaseRequest,
		}),
		RobloxPurchase = GetFFlagPromptRobloxPurchaseEnabled() and Roact.createElement(ExternalEventConnection, {
			event = MarketplaceService.PromptRobloxPurchaseRequested,
			callback = onRobloxPurchaseRequest,
		}),
		Roact.createElement(ExternalEventConnection, {
			event = MarketplaceService.PromptProductPurchaseRequested,
			callback = onProductPurchaseRequest,
		}),
		Roact.createElement(ExternalEventConnection, {
			event = MarketplaceService.PromptGamePassPurchaseRequested,
			callback = onPurchaseGamePassRequest,
		}),
		Roact.createElement(ExternalEventConnection, {
			event = MarketplaceService.ServerPurchaseVerification,
			callback = onServerPurchaseVerification,
		}),
		Roact.createElement(ExternalEventConnection, {
			event = MarketplaceService.PromptBundlePurchaseRequested,
			callback = onBundlePurchaseRequest,
		}),
		Roact.createElement(ExternalEventConnection, {
			event = MarketplaceService.PromptPremiumPurchaseRequested,
			callback = onPremiumPurchaseRequest,
		}),
		SubscriptionsPurchase = GetFFlagDeveloperSubscriptionsEnabled() and Roact.createElement(ExternalEventConnection, {
			event = MarketplaceService.PromptSubscriptionPurchaseRequested,
			callback = onSubscriptionPurchaseRequest,
		})
	})
end

MarketplaceServiceEventConnector = connectToStore(nil,
function(dispatch)
	local function onPurchaseRequest(player, assetId, equipIfPurchased, currencyType)
		if player == Players.LocalPlayer then
			dispatch(initiatePurchase(assetId, Enum.InfoType.Asset, equipIfPurchased, false))
		end
	end

	local function onRobloxPurchaseRequest(assetId, equipIfPurchased)
		dispatch(initiatePurchase(assetId, Enum.InfoType.Asset, equipIfPurchased, true))
	end

	local function onProductPurchaseRequest(player, productId, equipIfPurchased, currencyType)
		if player == Players.LocalPlayer then
			dispatch(initiatePurchase(productId, Enum.InfoType.Product, equipIfPurchased))
		end
	end

	local function onPurchaseGamePassRequest(player, gamePassId)
		if player == Players.LocalPlayer then
			dispatch(initiatePurchase(gamePassId, Enum.InfoType.GamePass, false))
		end
	end

	-- Specific to purchasing dev products
	local function onServerPurchaseVerification(serverResponseTable)
		if not serverResponseTable then
			dispatch(ErrorOccurred(PurchaseError.UnknownFailure))
		else
			local playerId = serverResponseTable["playerId"]
			if playerId ~= nil then
				playerId = tonumber(serverResponseTable["playerId"])
			end
			if playerId == Players.LocalPlayer.UserId then
				dispatch(completePurchase())
			end
		end
	end

	local function onBundlePurchaseRequest(player, bundleId)
		if player == Players.LocalPlayer then
			dispatch(initiateBundlePurchase(bundleId))
		end
	end

	local function onPremiumPurchaseRequest(player)
		if player == Players.LocalPlayer then
			dispatch(initiatePremiumPurchase())
		end
	end

	local function onSubscriptionPurchaseRequest(player, subscriptionId)
		if player == Players.LocalPlayer then
			dispatch(initiateSubscriptionPurchase(subscriptionId))
		end
	end

	return {
		onPurchaseRequest = onPurchaseRequest,
		onRobloxPurchaseRequest = onRobloxPurchaseRequest,
		onProductPurchaseRequest = onProductPurchaseRequest,
		onPurchaseGamePassRequest = onPurchaseGamePassRequest,
		onServerPurchaseVerification = onServerPurchaseVerification,
		onBundlePurchaseRequest = onBundlePurchaseRequest,
		onPremiumPurchaseRequest = onPremiumPurchaseRequest,
		onSubscriptionPurchaseRequest = onSubscriptionPurchaseRequest,
	}
end)(MarketplaceServiceEventConnector)

return MarketplaceServiceEventConnector
