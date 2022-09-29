return function()
	local CorePackages = game:GetService("CorePackages")
	local Rodux = require(CorePackages.Rodux)
	local InGameMenu = script.Parent.Parent
	local Reducer = require(InGameMenu.reducer)
	local MockInspectAndBuyNetwork = require(InGameMenu.Mocks.MockInspectAndBuyNetwork)
	local Network = require(InGameMenu.Network.Requests.InspectAndBuy.Network)
	local InspectAndBuyThunk = require(InGameMenu.InspectAndBuyThunk)
	local MockId = require(InGameMenu.Mocks.MockAssetId)
	local GetBundleFavoriteCount = require(script.Parent.GetBundleFavoriteCount)

	local FFlagInspectAndBuyV2IXPEnabledForAll = require(InGameMenu.Flags.FFlagInspectAndBuyV2IXPEnabledForAll)

	local function countKeys(t)
		local count = 0
		for _ in pairs(t) do
			count = count + 1
		end
		return count
	end

	if FFlagInspectAndBuyV2IXPEnabledForAll then
		describe("GetBundleFavoriteCount", function()
			it("should run without errors", function()
				local store = Rodux.Store.new(Reducer)
				local mockId = MockId()
				local thunk = GetBundleFavoriteCount(mockId)

				InspectAndBuyThunk.test(thunk, store, {
					[Network] = MockInspectAndBuyNetwork.new(),
				})

				local state = store:getState()
				expect(countKeys(state.inspectAndBuy.Bundles)).to.equal(1)
			end)

			it("should get the number of favorites a bundle has", function()
				local store = Rodux.Store.new(Reducer)
				local mockId = MockId()
				local thunk = GetBundleFavoriteCount(mockId)

				InspectAndBuyThunk.test(thunk, store, {
					[Network] = MockInspectAndBuyNetwork.new(),
				})

				expect(store:getState().inspectAndBuy.Bundles[mockId].numFavorites).to.equal(MockInspectAndBuyNetwork.GetMockFavoriteCount())
			end)

			it("should catch network errors that happen and still run", function()
				local store = Rodux.Store.new(Reducer)
				local mockId = MockId()
				local thunk = GetBundleFavoriteCount(mockId)

				InspectAndBuyThunk.test(thunk, store, {
					[Network] = MockInspectAndBuyNetwork.new(true),
				})
			end)
		end)
	end
end