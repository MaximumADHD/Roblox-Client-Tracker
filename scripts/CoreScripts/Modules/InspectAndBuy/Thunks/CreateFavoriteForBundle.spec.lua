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
	local CreateFavoriteForBundle = require(script.Parent.CreateFavoriteForBundle)
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

	describe("CreateFavoriteForBundle", function()
		it("should run without errors", function()
			local store = Rodux.Store.new(Reducer)
			store:dispatch(SetBundles({MOCK_FAVORITE}))
			local thunk = CreateFavoriteForBundle(MOCK_FAVORITE.bundleId)
			local analytics = MockAnalytics.new()

			Thunk.test(thunk, store, {
				[Network] = MockNetwork.new(),
				[Analytics] = analytics,
			})

			local state = store:getState()
			expect(analytics.reportFavoriteItem_callCount).to.equal(1)
			expect(countKeys(state.favorites.bundles)).to.equal(1)
		end)

		it("should create a favorite object for a bundle", function()
			local store = Rodux.Store.new(Reducer)
			store:dispatch(SetBundles({MOCK_FAVORITE}))
			local thunk = CreateFavoriteForBundle(MOCK_FAVORITE.bundleId)
			local analytics = MockAnalytics.new()

			Thunk.test(thunk, store, {
				[Network] = MockNetwork.new(),
				[Analytics] = analytics,
			})

			local state = store:getState()
			expect(analytics.reportFavoriteItem_callCount).to.equal(1)
			expect(state.favorites.bundles[MOCK_FAVORITE.bundleId]).to.equal(true)
			expect(countKeys(state.favorites.bundles)).to.equal(1)
		end)

		it("should catch network errors that happen and still run", function()
			local store = Rodux.Store.new(Reducer)
			store:dispatch(SetBundles({MOCK_FAVORITE}))
			local thunk = CreateFavoriteForBundle(MOCK_FAVORITE.bundleId)
			local analytics = MockAnalytics.new()

			Thunk.test(thunk, store, {
				[Network] = MockNetwork.new(true),
				[Analytics] = analytics,
			})

			expect(analytics.reportFavoriteItem_callCount).to.equal(1)
		end)
	end)
end