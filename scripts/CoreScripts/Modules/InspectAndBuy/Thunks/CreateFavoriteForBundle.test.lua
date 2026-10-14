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
local CreateFavoriteForBundle = require(script.Parent.CreateFavoriteForBundle)
local SetBundles = require(InspectAndBuyFolder.Actions.SetBundles)
local BundleInfo = require(InspectAndBuyFolder.Models.BundleInfo)

local MOCK_FAVORITE = BundleInfo.mock()

describe("CreateFavoriteForBundle", function()
	it("should run without errors", function()
		local store = Rodux.Store.new(Reducer)
		store:dispatch(SetBundles({ MOCK_FAVORITE }))
		local thunk = CreateFavoriteForBundle(MOCK_FAVORITE.bundleId)
		local analytics = mockClassInterfaces.new(Analytics, "Analytics")

		Thunk.test(thunk, store, {
			[Network] = MockNetwork.new(),
			[Analytics] = analytics.mockService,
		})

		local state = store:getState()
		expect(analytics.mockService.reportFavoriteItem).toHaveBeenCalledTimes(1)
		expect(state.favorites.bundles).toEqual({ [MOCK_FAVORITE.bundleId] = expect.anything() })
	end)

	it("should create a favorite object for a bundle", function()
		local store = Rodux.Store.new(Reducer)
		store:dispatch(SetBundles({ MOCK_FAVORITE }))
		local thunk = CreateFavoriteForBundle(MOCK_FAVORITE.bundleId)
		local analytics = mockClassInterfaces.new(Analytics, "Analytics")

		Thunk.test(thunk, store, {
			[Network] = MockNetwork.new(),
			[Analytics] = analytics.mockService,
		})

		local state = store:getState()
		expect(analytics.mockService.reportFavoriteItem).toHaveBeenCalledTimes(1)
		expect(state.favorites.bundles).toEqual({ [MOCK_FAVORITE.bundleId] = true })
	end)

	it("should catch network errors that happen and still run", function()
		local store = Rodux.Store.new(Reducer)
		store:dispatch(SetBundles({ MOCK_FAVORITE }))
		local thunk = CreateFavoriteForBundle(MOCK_FAVORITE.bundleId)
		local analytics = mockClassInterfaces.new(Analytics, "Analytics")

		Thunk.test(thunk, store, {
			[Network] = MockNetwork.new(true),
			[Analytics] = analytics.mockService,
		})

		expect(analytics.mockService.reportFavoriteItem).toHaveBeenCalledTimes(1)
	end)
end)
