--!nonstrict
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

local ExternalEventConnection = require(script.Parent.ExternalEventConnection)

local GetFFlagEnablePromptPurchaseRequestedV2 = require(Root.Flags.GetFFlagEnablePromptPurchaseRequestedV2)
local GetFFlagEnablePromptPurchaseRequestedV2Take2 = require(Root.Flags.GetFFlagEnablePromptPurchaseRequestedV2Take2)

local function MarketplaceServiceEventConnector(props)
	local onPurchaseRequest = props.onPurchaseRequest
	local onPurchaseRequestV2 = props.onPurchaseRequestV2
	local onProductPurchaseRequest = props.onProductPurchaseRequest
	local onPurchaseGamePassRequest = props.onPurchaseGamePassRequest
	local onServerPurchaseVerification = props.onServerPurchaseVerification
	local onBundlePurchaseRequest = props.onBundlePurchaseRequest
	local onPremiumPurchaseRequest = props.onPremiumPurchaseRequest
	local onRobloxPurchaseRequest = props.onRobloxPurchaseRequest
	local onPromptCollectiblesPurchaseRequest = props.onPromptCollectiblesPurchaseRequest
	local onSubscriptionPurchaseRequest = props.onSubscriptionPurchaseRequest
	local onCollectibleBundlePurchaseRequest = props.onCollectibleBundlePurchaseRequest

	local function checkNewEventExists()
		return MarketplaceService.PromptPurchaseRequestedV2
	end

	local promptPurchaseConnection
	if
		GetFFlagEnablePromptPurchaseRequestedV2()
		or (GetFFlagEnablePromptPurchaseRequestedV2Take2() and pcall(checkNewEventExists))
	then
		promptPurchaseConnection = Roact.createElement(ExternalEventConnection, {
			event = MarketplaceService.PromptPurchaseRequestedV2,
			callback = onPurchaseRequestV2,
		})
	else
		promptPurchaseConnection = Roact.createElement(ExternalEventConnection, {
			event = MarketplaceService.PromptPurchaseRequested,
			callback = onPurchaseRequest,
		})
	end

	local function checkPromptCollectiblesPurchaseRequestedEventExists()
		return MarketplaceService.PromptCollectiblesPurchaseRequested
	end
	local promptCollectiblesPurchaseConnection
	if pcall(checkPromptCollectiblesPurchaseRequestedEventExists) then
		promptCollectiblesPurchaseConnection = Roact.createElement(ExternalEventConnection, {
			event = MarketplaceService.PromptCollectiblesPurchaseRequested,
			callback = onPromptCollectiblesPurchaseRequest,
		})
	end

	local function checkCollectibleBundlePurchaseEventExists()
		return MarketplaceService.PromptCollectibleBundlePurchaseRequested
	end

	local promptCollectibleBundlePurchaseConnection
	if pcall(checkCollectibleBundlePurchaseEventExists) then
		promptCollectibleBundlePurchaseConnection = Roact.createElement(ExternalEventConnection, {
			event = MarketplaceService.PromptCollectibleBundlePurchaseRequested,
			callback = onCollectibleBundlePurchaseRequest,
		})
	end

	return Roact.createFragment({
		promptPurchaseConnection,
		promptCollectiblesPurchaseConnection,
		promptCollectibleBundlePurchaseConnection,
		RobloxPurchase = Roact.createElement(ExternalEventConnection, {
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
		Roact.createElement(ExternalEventConnection, {
			event = MarketplaceService.PromptSubscriptionPurchaseRequested,
			callback = onSubscriptionPurchaseRequest,
		}),
	})
end

MarketplaceServiceEventConnector = connectToStore(nil, function(dispatch)
	local function onPurchaseRequest(player, assetId, equipIfPurchased, currencyType)
		if player == Players.LocalPlayer then
			dispatch(initiatePurchase(assetId, Enum.InfoType.Asset, equipIfPurchased, false, '', ''))
		end
	end

	local function onPurchaseRequestV2(
		player,
		assetId,
		equipIfPurchased,
		currencyType,
		idempotencyKey,
		purchaseAuthToken
	)
		if player == Players.LocalPlayer then
			dispatch(
				initiatePurchase(
					assetId,
					Enum.InfoType.Asset,
					equipIfPurchased,
					false,
					idempotencyKey,
					purchaseAuthToken
				)
			)
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

	local function onPromptCollectiblesPurchaseRequest(
		player,
		assetId,
		collectibleItemId,
		collectibleItemInstanceId,
		collectibleProductId,
		expectedPrice,
		idempotencyKey,
		purchaseAuthToken
	)
		if player == Players.LocalPlayer then
			dispatch(
				initiatePurchase(
					assetId,
					Enum.InfoType.Asset,
					false,
					true,
					idempotencyKey,
					purchaseAuthToken,
					collectibleItemId,
					collectibleItemInstanceId,
					collectibleProductId,
					expectedPrice
				)
			)
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

	local function onCollectibleBundlePurchaseRequest(
		player,
		bundleId,
		collectibleItemId,
		collectibleItemInstanceId,
		collectibleProductId,
		expectedPrice,
		idempotencyKey,
		purchaseAuthToken
	)
		if player == Players.LocalPlayer then
			dispatch(
				initiateBundlePurchase(
					bundleId,
					idempotencyKey,
					purchaseAuthToken,
					collectibleItemId,
					collectibleItemInstanceId,
					collectibleProductId,
					expectedPrice
				)
			)
		end
	end

	local function onPremiumPurchaseRequest(player)
		if player == Players.LocalPlayer then
			dispatch(initiatePremiumPurchase())
		end
	end

	local function onSubscriptionPurchaseRequest(subscriptionId)
		dispatch(initiateSubscriptionPurchase(subscriptionId))
	end

	return {
		onPurchaseRequest = onPurchaseRequest,
		onPurchaseRequestV2 = onPurchaseRequestV2,
		onRobloxPurchaseRequest = onRobloxPurchaseRequest,
		onProductPurchaseRequest = onProductPurchaseRequest,
		onPurchaseGamePassRequest = onPurchaseGamePassRequest,
		onServerPurchaseVerification = onServerPurchaseVerification,
		onBundlePurchaseRequest = onBundlePurchaseRequest,
		onPremiumPurchaseRequest = onPremiumPurchaseRequest,
		onPromptCollectiblesPurchaseRequest = onPromptCollectiblesPurchaseRequest,
		onSubscriptionPurchaseRequest = onSubscriptionPurchaseRequest,
		onCollectibleBundlePurchaseRequest = onCollectibleBundlePurchaseRequest,
	}
end)(MarketplaceServiceEventConnector)

return MarketplaceServiceEventConnector
