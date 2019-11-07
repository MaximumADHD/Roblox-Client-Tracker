--[[
	Connects Rodux store to external MarketplaceService events
]]
local FFlagIGPDepSwap = game:GetFastFlag("IGPDepSwap")
local Root = script.Parent.Parent.Parent
local LuaPackages = FFlagIGPDepSwap and Root.Parent or game:GetService("CorePackages")
local MarketplaceService = game:GetService("MarketplaceService")
local Players = game:GetService("Players")

local Roact = require(LuaPackages.Roact)
local ExternalEventConnection = require(script.Parent.ExternalEventConnection)

local PurchaseError = require(script.Parent.Parent.Parent.PurchaseError)

local ErrorOccurred = require(script.Parent.Parent.Parent.Actions.ErrorOccurred)

local completePurchase = require(script.Parent.Parent.Parent.Thunks.completePurchase)
local initiatePurchase = require(script.Parent.Parent.Parent.Thunks.initiatePurchase)
local initiateBundlePurchase = require(script.Parent.Parent.Parent.Thunks.initiateBundlePurchase)

local connectToStore = require(script.Parent.Parent.Parent.connectToStore)

local FFlagRoactPurchasePromptAllowBundles = settings():GetFFlag("RoactPurchasePromptAllowBundles")

local function MarketplaceServiceEventConnector(props)
	local onPurchaseRequest = props.onPurchaseRequest
	local onProductPurchaseRequest = props.onProductPurchaseRequest
	local onPurchaseGamePassRequest = props.onPurchaseGamePassRequest
	local onServerPurchaseVerification = props.onServerPurchaseVerification
	local onBundlePurchaseRequest = props.onBundlePurchaseRequest

	return Roact.createElement(ExternalEventConnection, {
		event = MarketplaceService.PromptPurchaseRequested,
		callback = onPurchaseRequest,
	}, {
		Roact.createElement(ExternalEventConnection, {
			event = MarketplaceService.PromptProductPurchaseRequested,
			callback = onProductPurchaseRequest,
		}, {
			Roact.createElement(ExternalEventConnection, {
				event = MarketplaceService.PromptGamePassPurchaseRequested,
				callback = onPurchaseGamePassRequest,
			}, {
				Roact.createElement(ExternalEventConnection, {
					event = MarketplaceService.ServerPurchaseVerification,
					callback = onServerPurchaseVerification,
				}, {
					FFlagRoactPurchasePromptAllowBundles and Roact.createElement(ExternalEventConnection, {
						event = MarketplaceService.PromptBundlePurchaseRequested,
						callback = onBundlePurchaseRequest,
					})
				})
			})
		})
	})
end

MarketplaceServiceEventConnector = connectToStore(nil,
function(dispatch)
	local function onPurchaseRequest(player, assetId, equipIfPurchased, currencyType)
		if player == Players.LocalPlayer then
			dispatch(initiatePurchase(assetId, Enum.InfoType.Asset, equipIfPurchased))
		end
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

	return {
		onPurchaseRequest = onPurchaseRequest,
		onProductPurchaseRequest = onProductPurchaseRequest,
		onPurchaseGamePassRequest = onPurchaseGamePassRequest,
		onServerPurchaseVerification = onServerPurchaseVerification,
		onBundlePurchaseRequest = onBundlePurchaseRequest,
	}
end)(MarketplaceServiceEventConnector)

return MarketplaceServiceEventConnector