local CorePackages = game:GetService("CorePackages")
local PerformFetch = require(CorePackages.Workspace.Packages.Http).PerformFetch
local InspectAndBuyFolder = script.Parent.Parent
local Thunk = require(InspectAndBuyFolder.Thunk)
local AssetInfo = require(InspectAndBuyFolder.Models.AssetInfo)
local BundleInfo = require(InspectAndBuyFolder.Models.BundleInfo)
local Network = require(InspectAndBuyFolder.Services.Network)
local SetAssets = require(InspectAndBuyFolder.Actions.SetAssets)
local SetBundles = require(InspectAndBuyFolder.Actions.SetBundles)
local createInspectAndBuyKeyMapper = require(InspectAndBuyFolder.createInspectAndBuyKeyMapper)
local SendCounter = require(InspectAndBuyFolder.Thunks.SendCounter)
local Constants = require(InspectAndBuyFolder.Constants)

local requiredServices = {
	Network,
}

local ALREADY_OWNED = "AlreadyOwned"
local INSUFFICIENT_FUNDS = "InsufficientFunds"

local keyMapper = createInspectAndBuyKeyMapper("getEconomyProductInfo")

--[[
	Get information about a product. Specifically if it is purchasable or owned.
]]
local function GetEconomyProductInfo(productId, isBundle, bundleId)
	return Thunk.new(script.Name, requiredServices, function(store, services)
		local network = services[Network]

		local key = keyMapper(store:getState().storeId, productId)

		return PerformFetch.Single(key, function()
			return network.getEconomyProductInfo(productId):andThen(function(results)
				local owned = not results.purchasable and results.reason == ALREADY_OWNED or false
				local price = results.price or 0
				local isForSale = results.purchasable
				local premiumPricing = results.premiumPricing
				-- Allow buy button click due to insufficient funds to allow Purchase Prompt to upsell.
				if not results.purchasable and results.reason == INSUFFICIENT_FUNDS then
					isForSale = true
				end

				if not isBundle then
					local newAsset =
						AssetInfo.fromGetEconomyProductInfo(results, owned, price, isForSale, premiumPricing)
					store:dispatch(SetAssets({ newAsset }))
				else
					local newBundle = BundleInfo.fromGetEconomyProductInfo(owned, bundleId, price, isForSale)
					store:dispatch(SetBundles({ newBundle }))
				end
				store:dispatch(
					SendCounter(Constants.Counters.GetEconomyProductInfo .. Constants.CounterSuffix.RequestSucceeded)
				)
			end, function(err)
				store:dispatch(
					SendCounter(Constants.Counters.GetEconomyProductInfo .. Constants.CounterSuffix.RequestRejected)
				)
			end)
		end)(store):catch(function(err)
			store:dispatch(
				SendCounter(Constants.Counters.GetEconomyProductInfo .. Constants.CounterSuffix.RequestFailed)
			)
		end)
	end)
end

return GetEconomyProductInfo
