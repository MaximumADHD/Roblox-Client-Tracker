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
	local DeleteFavoriteForBundle = require(script.Parent.DeleteFavoriteForBundle)
	local SetFavoriteBundle = require(InspectAndBuyFolder.Actions.SetFavoriteBundle)
	local SetBundles = require(InspectAndBuyFolder.Actions.SetBundles)
	local BundleInfo = require(InspectAndBuyFolder.Models.BundleInfo)

	local MOCK_FAVORITE = BundleInfo.mock()

	local function countKeys(t)
		local count = 0
		for _ in pairs(t) do
			count = count + 1
		end
		return count
	end

	describe("DeleteFavoriteForBundle", function()
		it("should run without errors", function()
			local store = Rodux.Store.new(Reducer)
			store:dispatch(SetBundles({MOCK_FAVORITE}))
			local thunk = DeleteFavoriteForBundle(MOCK_FAVORITE.bundleId)
			local analytics = MockAnalytics.new()

			Thunk.test(thunk, store, {
				[Network] = MockNetwork.new(),
				[Analytics] = analytics,
			})

			local state = store:getState()
			expect(countKeys(state.favorites.bundles)).to.equal(1)
		end)

		it("should delete a favorite object for an asset", function()
			local store = Rodux.Store.new(Reducer)
			store:dispatch(SetFavoriteBundle(MOCK_FAVORITE.bundleId, true))
			store:dispatch(SetBundles({MOCK_FAVORITE}))
			expect(store:getState().favorites.bundles[MOCK_FAVORITE.bundleId]).to.equal(true)
			local thunk = DeleteFavoriteForBundle(MOCK_FAVORITE.bundleId)
			local analytics = MockAnalytics.new()

			Thunk.test(thunk, store, {
				[Network] = MockNetwork.new(),
				[Analytics] = analytics,
			})

			expect(store:getState().favorites.bundles[MOCK_FAVORITE.bundleId]).to.equal(false)
		end)

		it("should catch network errors that happen and still run", function()
			local store = Rodux.Store.new(Reducer)
			store:dispatch(SetBundles({MOCK_FAVORITE}))
			local thunk = DeleteFavoriteForBundle(MOCK_FAVORITE.bundleId)
			local analytics = MockAnalytics.new()

			Thunk.test(thunk, store, {
				[Network] = MockNetwork.new(true),
				[Analytics] = analytics,
			})
		end)
	end)
end