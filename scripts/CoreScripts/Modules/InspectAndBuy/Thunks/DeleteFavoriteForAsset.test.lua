local CorePackages = game:GetService("CorePackages")
local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local expect = JestGlobals.expect
local describe = JestGlobals.describe
local it = JestGlobals.it
local Rodux = require(CorePackages.Packages.Rodux)
local InspectAndBuyFolder = script.Parent.Parent
local Reducer = require(InspectAndBuyFolder.Reducers.InspectAndBuyReducer)
local MockNetwork = require(InspectAndBuyFolder.Test.MockNetwork)
local Network = require(InspectAndBuyFolder.Services.Network)
local UnitTestHelpers = require(CorePackages.Workspace.Packages.UnitTestHelpers)
local mockClassInterfaces = UnitTestHelpers.mockClassInterfaces
local Analytics = require(InspectAndBuyFolder.Services.Analytics)
local Thunk = require(InspectAndBuyFolder.Thunk)
local DeleteFavoriteForAsset = require(script.Parent.DeleteFavoriteForAsset)
local SetFavoriteAsset = require(InspectAndBuyFolder.Actions.SetFavoriteAsset)
local SetAssets = require(InspectAndBuyFolder.Actions.SetAssets)
local AssetInfo = require(InspectAndBuyFolder.Models.AssetInfo)

local MOCK_FAVORITE = AssetInfo.mock()

local function countKeys(t)
	local count = 0
	for _ in pairs(t) do
		count = count + 1
	end
	return count
end

describe("DeleteFavoriteForAsset", function()
	it("should run without errors", function()
		local store = Rodux.Store.new(Reducer)
		store:dispatch(SetAssets({ MOCK_FAVORITE }))
		local thunk = DeleteFavoriteForAsset(MOCK_FAVORITE.assetId)
		local analytics = mockClassInterfaces.new(Analytics, "Analytics")

		Thunk.test(thunk, store, {
			[Network] = MockNetwork.new(),
			[Analytics] = analytics.mockService,
		})

		local state = store:getState()
		expect(analytics.mockService.reportFavoriteItem).toHaveBeenCalledTimes(1)
		expect(countKeys(state.favorites.assets)).toBe(1)
	end)

	it("should delete a favorite object for an asset", function()
		local store = Rodux.Store.new(Reducer)
		store:dispatch(SetAssets({ MOCK_FAVORITE }))
		store:dispatch(SetFavoriteAsset(MOCK_FAVORITE.assetId, true))
		expect(store:getState().favorites.assets[MOCK_FAVORITE.assetId]).toBe(true)
		local thunk = DeleteFavoriteForAsset(MOCK_FAVORITE.assetId)
		local analytics = mockClassInterfaces.new(Analytics, "Analytics")

		Thunk.test(thunk, store, {
			[Network] = MockNetwork.new(),
			[Analytics] = analytics.mockService,
		})

		expect(analytics.mockService.reportFavoriteItem).toHaveBeenCalledTimes(1)
		expect(store:getState().favorites.assets).toEqual({ [MOCK_FAVORITE.assetId] = false })
	end)

	it("should catch network errors that happen and still run", function()
		local store = Rodux.Store.new(Reducer)
		store:dispatch(SetAssets({ MOCK_FAVORITE }))
		local thunk = DeleteFavoriteForAsset(MOCK_FAVORITE.assetId)
		local analytics = mockClassInterfaces.new(Analytics, "Analytics")

		Thunk.test(thunk, store, {
			[Network] = MockNetwork.new(true),
			[Analytics] = analytics.mockService,
		})

		expect(analytics.mockService.reportFavoriteItem).toHaveBeenCalledTimes(1)
	end)
end)
