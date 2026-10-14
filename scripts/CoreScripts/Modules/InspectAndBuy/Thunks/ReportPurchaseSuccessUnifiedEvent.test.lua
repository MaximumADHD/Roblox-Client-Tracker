local CorePackages = game:GetService("CorePackages")
local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local expect = JestGlobals.expect
local describe = JestGlobals.describe
local it = JestGlobals.it
local Rodux = require(CorePackages.Packages.Rodux)
local UnitTestHelpers = require(CorePackages.Workspace.Packages.UnitTestHelpers)
local mockClassInterfaces = UnitTestHelpers.mockClassInterfaces

local InspectAndBuyFolder = script.Parent.Parent
local Reducer = require(InspectAndBuyFolder.Reducers.InspectAndBuyReducer)
local Analytics = require(InspectAndBuyFolder.Services.Analytics)
local Constants = require(InspectAndBuyFolder.Constants)
local Thunk = require(InspectAndBuyFolder.Thunk)
local AssetInfo = require(InspectAndBuyFolder.Models.AssetInfo)
local BundleInfo = require(InspectAndBuyFolder.Models.BundleInfo)
local SetAssets = require(InspectAndBuyFolder.Actions.SetAssets)
local SetBundles = require(InspectAndBuyFolder.Actions.SetBundles)

local ReportPurchaseSuccessUnifiedEvent = require(script.Parent.ReportPurchaseSuccessUnifiedEvent)

describe("ReportPurchaseSuccessUnifiedEvent", function()
	it("should report an asset's type and price from the store", function()
		local store = Rodux.Store.new(Reducer)
		local asset = AssetInfo.mock()
		asset.assetTypeId = "8"
		asset.price = "50"
		store:dispatch(SetAssets({ asset }))
		local analytics = mockClassInterfaces.new(Analytics, "Analytics")

		Thunk.test(ReportPurchaseSuccessUnifiedEvent(asset.assetId, Constants.ItemType.Asset), store, {
			[Analytics] = analytics.mockService,
		})

		expect(analytics.mockService.reportPurchaseSuccessUnifiedEvent).toHaveBeenCalledWith(
			Constants.ItemType.Asset,
			asset.assetId,
			{ itemSubType = "8", price = 50 }
		)
	end)

	it("should report a bundle's type and price from the store", function()
		local store = Rodux.Store.new(Reducer)
		local bundle = BundleInfo.mock()
		bundle.bundleType = "1"
		bundle.price = "300"
		store:dispatch(SetBundles({ bundle }))
		local analytics = mockClassInterfaces.new(Analytics, "Analytics")

		Thunk.test(ReportPurchaseSuccessUnifiedEvent(bundle.bundleId, Constants.ItemType.Bundle), store, {
			[Analytics] = analytics.mockService,
		})

		expect(analytics.mockService.reportPurchaseSuccessUnifiedEvent).toHaveBeenCalledWith(
			Constants.ItemType.Bundle,
			bundle.bundleId,
			{ itemSubType = "1", price = 300 }
		)
	end)

	it("should report the resale price paid in preference to the catalog price", function()
		local store = Rodux.Store.new(Reducer)
		local asset = AssetInfo.mock()
		asset.assetTypeId = "8"
		asset.price = "50"
		store:dispatch(SetAssets({ asset }))
		local analytics = mockClassInterfaces.new(Analytics, "Analytics")

		Thunk.test(ReportPurchaseSuccessUnifiedEvent(asset.assetId, Constants.ItemType.Asset, 120), store, {
			[Analytics] = analytics.mockService,
		})

		expect(analytics.mockService.reportPurchaseSuccessUnifiedEvent).toHaveBeenCalledWith(
			Constants.ItemType.Asset,
			asset.assetId,
			{ itemSubType = "8", price = 120 }
		)
	end)

	it("should report the resale price when the store holds no price for the item", function()
		local store = Rodux.Store.new(Reducer)
		local analytics = mockClassInterfaces.new(Analytics, "Analytics")

		Thunk.test(ReportPurchaseSuccessUnifiedEvent("999", Constants.ItemType.Asset, 120), store, {
			[Analytics] = analytics.mockService,
		})

		expect(analytics.mockService.reportPurchaseSuccessUnifiedEvent).toHaveBeenCalledWith(
			Constants.ItemType.Asset,
			"999",
			{ price = 120 }
		)
	end)

	it("should still report the purchase when the item is missing from the store", function()
		local store = Rodux.Store.new(Reducer)
		local analytics = mockClassInterfaces.new(Analytics, "Analytics")

		Thunk.test(ReportPurchaseSuccessUnifiedEvent("999", Constants.ItemType.Asset), store, {
			[Analytics] = analytics.mockService,
		})

		expect(analytics.mockService.reportPurchaseSuccessUnifiedEvent).toHaveBeenCalledWith(
			Constants.ItemType.Asset,
			"999",
			{}
		)
	end)
end)
