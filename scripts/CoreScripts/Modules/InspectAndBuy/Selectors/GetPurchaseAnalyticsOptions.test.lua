local CorePackages = game:GetService("CorePackages")
local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local expect = JestGlobals.expect
local describe = JestGlobals.describe
local it = JestGlobals.it
local Rodux = require(CorePackages.Packages.Rodux)

local InspectAndBuyFolder = script.Parent.Parent
local Reducer = require(InspectAndBuyFolder.Reducers.InspectAndBuyReducer)
local Constants = require(InspectAndBuyFolder.Constants)
local AssetInfo = require(InspectAndBuyFolder.Models.AssetInfo)
local BundleInfo = require(InspectAndBuyFolder.Models.BundleInfo)
local SetAssets = require(InspectAndBuyFolder.Actions.SetAssets)
local SetBundles = require(InspectAndBuyFolder.Actions.SetBundles)

local GetPurchaseAnalyticsOptions = require(script.Parent.GetPurchaseAnalyticsOptions)

local function storeWithAsset(assetTypeId, price)
	local store = Rodux.Store.new(Reducer)
	local asset = AssetInfo.mock()
	asset.assetTypeId = assetTypeId
	asset.price = price
	store:dispatch(SetAssets({ asset }))

	return store, asset.assetId
end

describe("GetPurchaseAnalyticsOptions", function()
	it("should report the asset type and price for an asset", function()
		local store, assetId = storeWithAsset("8", "50")

		local options = GetPurchaseAnalyticsOptions(store:getState(), assetId, Constants.ItemType.Asset)

		expect(options.itemSubType).toBe("8")
		expect(options.price).toBe(50)
	end)

	it("should report the bundle type and price for a bundle", function()
		local store = Rodux.Store.new(Reducer)
		local bundle = BundleInfo.mock()
		bundle.bundleType = "1"
		bundle.price = "300"
		store:dispatch(SetBundles({ bundle }))

		local options = GetPurchaseAnalyticsOptions(store:getState(), bundle.bundleId, Constants.ItemType.Bundle)

		expect(options.itemSubType).toBe("1")
		expect(options.price).toBe(300)
	end)

	it("should report the resale price instead of the catalog price when one is given", function()
		local store, assetId = storeWithAsset("8", "50")

		local options = GetPurchaseAnalyticsOptions(store:getState(), assetId, Constants.ItemType.Asset, 9999)

		expect(options.price).toBe(9999)
		expect(options.itemSubType).toBe("8")
	end)

	it("should still report the resale price when the item is not in the store", function()
		local store = Rodux.Store.new(Reducer)

		local options = GetPurchaseAnalyticsOptions(store:getState(), "unknown", Constants.ItemType.Asset, 9999)

		expect(options.price).toBe(9999)
		expect(options.itemSubType).toBeNil()
	end)

	it("should omit the sub-type when item details have not populated it", function()
		local store, assetId = storeWithAsset("", "50")

		local options = GetPurchaseAnalyticsOptions(store:getState(), assetId, Constants.ItemType.Asset)

		expect(options.itemSubType).toBeNil()
		expect(options.price).toBe(50)
	end)

	it("should return no metadata when there is no item being purchased", function()
		local store = Rodux.Store.new(Reducer)

		local options = GetPurchaseAnalyticsOptions(store:getState(), nil, nil)

		expect(options.itemSubType).toBeNil()
		expect(options.price).toBeNil()
	end)
end)
