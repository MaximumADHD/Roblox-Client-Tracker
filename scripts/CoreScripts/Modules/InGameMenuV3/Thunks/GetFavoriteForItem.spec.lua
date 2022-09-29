return function()
	local CorePackages = game:GetService("CorePackages")
	local Rodux = require(CorePackages.Rodux)
	local InGameMenu = script.Parent.Parent
	local Reducer = require(InGameMenu.reducer)
	local MockInspectAndBuyNetwork = require(InGameMenu.Mocks.MockInspectAndBuyNetwork)
	local Network = require(InGameMenu.Network.Requests.InspectAndBuy.Network)
	local InspectAndBuyThunk = require(InGameMenu.InspectAndBuyThunk)
	local MockId = require(InGameMenu.Mocks.MockAssetId)
	local GetFavoriteForItem = require(script.Parent.GetFavoriteForItem)

	local FFlagInspectAndBuyV2IXPEnabledForAll = require(InGameMenu.Flags.FFlagInspectAndBuyV2IXPEnabledForAll)

	if FFlagInspectAndBuyV2IXPEnabledForAll then
		describe("GetFavoriteForItem", function()
			it("should return false if asset is not favorited", function()
				local store = Rodux.Store.new(Reducer)
				local mockId = MockId()
				local thunk = GetFavoriteForItem(mockId, Enum.AvatarItemType.Asset)

				InspectAndBuyThunk.test(thunk, store, {
					[Network] = MockInspectAndBuyNetwork.new(),
				})

				local state = store:getState()
				expect(state.inspectAndBuy.Assets[mockId].isFavorited).to.equal(false)
			end)

			it("should return true if asset is favorited", function()
				local store = Rodux.Store.new(Reducer)
				local getFavoriteModelId = MockInspectAndBuyNetwork.GetFavoriteModelIdForAsset()
				local thunk = GetFavoriteForItem(getFavoriteModelId, Enum.AvatarItemType.Asset)

				InspectAndBuyThunk.test(thunk, store, {
					[Network] = MockInspectAndBuyNetwork.new(),
				})

				local state = store:getState()
				expect(state.inspectAndBuy.Assets[getFavoriteModelId].isFavorited).to.equal(true)
			end)

			it("should return false if bundle is not favorited", function()
				local store = Rodux.Store.new(Reducer)
				local mockId = MockId()
				local thunk = GetFavoriteForItem(mockId, Enum.AvatarItemType.Bundle)

				InspectAndBuyThunk.test(thunk, store, {
					[Network] = MockInspectAndBuyNetwork.new(),
				})

				local state = store:getState()
				expect(state.inspectAndBuy.Bundles[mockId].isFavorited).to.equal(false)
			end)

			it("should return true if bundle is favorited", function()
				local store = Rodux.Store.new(Reducer)
				local getFavoriteModelId = MockInspectAndBuyNetwork.GetFavoriteModelIdForBundle()
				local thunk = GetFavoriteForItem(getFavoriteModelId, Enum.AvatarItemType.Bundle)

				InspectAndBuyThunk.test(thunk, store, {
					[Network] = MockInspectAndBuyNetwork.new(),
				})

				local state = store:getState()
				expect(state.inspectAndBuy.Bundles[getFavoriteModelId].isFavorited).to.equal(true)
			end)

			it("should catch network errors that happen and still run", function()
				local store = Rodux.Store.new(Reducer)
				local mockId = MockId()
				local thunk = GetFavoriteForItem(mockId)

				InspectAndBuyThunk.test(thunk, store, {
					[Network] = MockInspectAndBuyNetwork.new(true),
				})
			end)
		end)
	end
end