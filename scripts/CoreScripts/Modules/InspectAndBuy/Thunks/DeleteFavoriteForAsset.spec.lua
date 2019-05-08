return function()
	local CorePackages = game:GetService("CorePackages")
	local Rodux = require(CorePackages.Rodux)
	local InspectAndBuyFolder = script.Parent.Parent
	local Reducer = require(InspectAndBuyFolder.Reducers.InspectAndBuyReducer)
	local MockNetwork = require(InspectAndBuyFolder.Test.MockNetwork)
	local Network = require(InspectAndBuyFolder.Services.Network)
	local MockAnalytics = require(InspectAndBuyFolder.Test.MockAnalytics)
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
			store:dispatch(SetAssets({MOCK_FAVORITE}))
			local thunk = DeleteFavoriteForAsset(MOCK_FAVORITE.assetId)
			local analytics = MockAnalytics.new()

			Thunk.test(thunk, store, {
				[Network] = MockNetwork.new(),
				[Analytics] = analytics,
			})

			local state = store:getState()
			expect(analytics.reportFavoriteItem_callCount).to.equal(1)
			expect(countKeys(state.favorites.assets)).to.equal(1)
		end)

		it("should delete a favorite object for an asset", function()
			local store = Rodux.Store.new(Reducer)
			store:dispatch(SetAssets({MOCK_FAVORITE}))
			store:dispatch(SetFavoriteAsset(MOCK_FAVORITE.assetId, true))
			expect(store:getState().favorites.assets[MOCK_FAVORITE.assetId]).to.equal(true)
			local thunk = DeleteFavoriteForAsset(MOCK_FAVORITE.assetId)
			local analytics = MockAnalytics.new()

			Thunk.test(thunk, store, {
				[Network] = MockNetwork.new(),
				[Analytics] = analytics,
			})

			expect(analytics.reportFavoriteItem_callCount).to.equal(1)
			expect(store:getState().favorites.assets[MOCK_FAVORITE.assetId]).to.equal(false)
		end)

		it("should catch network errors that happen and still run", function()
			local store = Rodux.Store.new(Reducer)
			store:dispatch(SetAssets({MOCK_FAVORITE}))
			local thunk = DeleteFavoriteForAsset(MOCK_FAVORITE.assetId)
			local analytics = MockAnalytics.new()

			Thunk.test(thunk, store, {
				[Network] = MockNetwork.new(true),
				[Analytics] = analytics,
			})

			expect(analytics.reportFavoriteItem_callCount).to.equal(1)
		end)
	end)
end