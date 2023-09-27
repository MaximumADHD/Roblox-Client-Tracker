return function()
	local CorePackages = game:GetService("CorePackages")
	local JestGlobals = require(CorePackages.JestGlobals)
	local expect = JestGlobals.expect
	local Rodux = require(CorePackages.Rodux)
	local InspectAndBuyFolder = script.Parent.Parent
	local Reducer = require(InspectAndBuyFolder.Reducers.InspectAndBuyReducer)
	local MockNetwork = require(InspectAndBuyFolder.Test.MockNetwork)
	local Network = require(InspectAndBuyFolder.Services.Network)
	local MockAnalytics = require(InspectAndBuyFolder.Test.MockAnalytics)
	local Analytics = require(InspectAndBuyFolder.Services.Analytics)
	local Thunk = require(InspectAndBuyFolder.Thunk)
	local CreateFavoriteForAsset = require(script.Parent.CreateFavoriteForAsset)
	local SetAssets = require(InspectAndBuyFolder.Actions.SetAssets)
	local AssetInfo = require(InspectAndBuyFolder.Models.AssetInfo)

	local MOCK_FAVORITE = AssetInfo.mock()

	describe("CreateFavoriteForAsset", function()
		it("should run without errors", function()
			local store = Rodux.Store.new(Reducer)
			store:dispatch(SetAssets({MOCK_FAVORITE}))
			local thunk = CreateFavoriteForAsset(MOCK_FAVORITE.assetId)
			local analytics = MockAnalytics.new()

			Thunk.test(thunk, store, {
				[Network] = MockNetwork.new(),
				[Analytics] = analytics,
			})

			local state = store:getState()
			expect(analytics.reportFavoriteItem).toHaveBeenCalledTimes(1)
			expect(state.favorites.assets).toEqual({ [MOCK_FAVORITE.assetId] = expect.anything() })
		end)

		it("should create a favorite object for an asset", function()
			local store = Rodux.Store.new(Reducer)
			store:dispatch(SetAssets({MOCK_FAVORITE}))
			local thunk = CreateFavoriteForAsset(MOCK_FAVORITE.assetId)
			local analytics = MockAnalytics.new()

			Thunk.test(thunk, store, {
				[Network] = MockNetwork.new(),
				[Analytics] = analytics,
			})

			local state = store:getState()
			expect(analytics.reportFavoriteItem).toHaveBeenCalledTimes(1)
			expect(state.favorites.assets).toEqual({ [MOCK_FAVORITE.assetId] = true })
		end)

		it("should catch network errors that happen and still run", function()
			local store = Rodux.Store.new(Reducer)
			store:dispatch(SetAssets({MOCK_FAVORITE}))
			local thunk = CreateFavoriteForAsset(MOCK_FAVORITE.assetId)
			local analytics = MockAnalytics.new()

			Thunk.test(thunk, store, {
				[Network] = MockNetwork.new(true),
				[Analytics] = analytics,
			})

			expect(analytics.reportFavoriteItem).toHaveBeenCalledTimes(1)
		end)
	end)
end
