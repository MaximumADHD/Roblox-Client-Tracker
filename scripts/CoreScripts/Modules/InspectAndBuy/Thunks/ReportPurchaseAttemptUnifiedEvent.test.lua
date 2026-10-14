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
local SetAssets = require(InspectAndBuyFolder.Actions.SetAssets)

local ReportPurchaseAttemptUnifiedEvent = require(script.Parent.ReportPurchaseAttemptUnifiedEvent)

local function setUp()
	local store = Rodux.Store.new(Reducer)
	local asset = AssetInfo.mock()
	asset.assetTypeId = "8"
	asset.price = "50"
	store:dispatch(SetAssets({ asset }))

	return store, asset, mockClassInterfaces.new(Analytics, "Analytics")
end

describe("ReportPurchaseAttemptUnifiedEvent", function()
	it("should report the item's type and price from the store", function()
		local store, asset, analytics = setUp()

		Thunk.test(ReportPurchaseAttemptUnifiedEvent(asset.assetId, Constants.ItemType.Asset), store, {
			[Analytics] = analytics.mockService,
		})

		expect(analytics.mockService.reportPurchaseAttemptUnifiedEvent).toHaveBeenCalledWith(
			Constants.ItemType.Asset,
			asset.assetId,
			{ itemSubType = "8", price = 50 }
		)
	end)

	it("should report the resale price when the prompt is for a resale", function()
		local store, asset, analytics = setUp()

		Thunk.test(ReportPurchaseAttemptUnifiedEvent(asset.assetId, Constants.ItemType.Asset, 9999), store, {
			[Analytics] = analytics.mockService,
		})

		expect(analytics.mockService.reportPurchaseAttemptUnifiedEvent).toHaveBeenCalledWith(
			Constants.ItemType.Asset,
			asset.assetId,
			{ itemSubType = "8", price = 9999 }
		)
	end)
end)
