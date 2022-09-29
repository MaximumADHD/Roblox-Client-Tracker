return function()
	local CorePackages = game:GetService("CorePackages")
	local Rodux = require(CorePackages.Rodux)
	local InGameMenu = script.Parent.Parent
	local Reducer = require(InGameMenu.reducer)
	local MockInspectAndBuyNetwork = require(InGameMenu.Mocks.MockInspectAndBuyNetwork)
	local Network = require(InGameMenu.Network.Requests.InspectAndBuy.Network)
	local InspectAndBuyThunk = require(InGameMenu.InspectAndBuyThunk)
	local MockId = require(InGameMenu.Mocks.MockAssetId)
	local SetFavoriteForItem = require(InGameMenu.Thunks.SetFavoriteForItem)

	local FFlagInspectAndBuyV2IXPEnabledForAll = require(InGameMenu.Flags.FFlagInspectAndBuyV2IXPEnabledForAll)

	if FFlagInspectAndBuyV2IXPEnabledForAll then
		local getInitState = function(mockId, numFavorites, isFavorited, isAsset)
			return {
				inspectAndBuy = {
					Assets = isAsset and {
						[mockId] = {
							numFavorites = numFavorites,
							isFavorited = isFavorited,
						}
					} or nil,
					Bundles = not isAsset and {
						[mockId] = {
							numFavorites = numFavorites,
							isFavorited = isFavorited,
						}
					},
					StoreId = 0,
					SelectedItem = {}
				}
			}
		end

		it("should favorite an asset", function()
			local mockId = MockId()
			local initState = getInitState(mockId, 24, false, true)
			local store = Rodux.Store.new(Reducer, initState)
			local thunk = SetFavoriteForItem(mockId, Enum.AvatarItemType.Asset, true)

			InspectAndBuyThunk.test(thunk, store, {
				[Network] = MockInspectAndBuyNetwork.new(),
			})

			expect(store:getState().inspectAndBuy.Assets[mockId].numFavorites).to.equal(25)
			expect(store:getState().inspectAndBuy.Assets[mockId].isFavorited).to.equal(true)
		end)

		it("should favorite a bundle", function()
			local mockId = MockId()
			local initState = getInitState(mockId, 24, false, false)
			local store = Rodux.Store.new(Reducer, initState)
			local thunk = SetFavoriteForItem(mockId, Enum.AvatarItemType.Bundle, true)

			InspectAndBuyThunk.test(thunk, store, {
				[Network] = MockInspectAndBuyNetwork.new(),
			})

			expect(store:getState().inspectAndBuy.Bundles[mockId].numFavorites).to.equal(25)
			expect(store:getState().inspectAndBuy.Bundles[mockId].isFavorited).to.equal(true)
		end)

		it("should unfavorite an asset", function()
			local mockId = MockId()
			local initState = getInitState(mockId, 24, true, true)
			local store = Rodux.Store.new(Reducer, initState)
			local thunk = SetFavoriteForItem(mockId, Enum.AvatarItemType.Asset, false)

			InspectAndBuyThunk.test(thunk, store, {
				[Network] = MockInspectAndBuyNetwork.new(),
			})

			expect(store:getState().inspectAndBuy.Assets[mockId].numFavorites).to.equal(23)
			expect(store:getState().inspectAndBuy.Assets[mockId].isFavorited).to.equal(false)
		end)

		it("should unfavorite a bundle", function()
			local mockId = MockId()
			local initState = getInitState(mockId, 24, true, false)
			local store = Rodux.Store.new(Reducer, initState)
			local thunk = SetFavoriteForItem(mockId, Enum.AvatarItemType.Bundle, false)

			InspectAndBuyThunk.test(thunk, store, {
				[Network] = MockInspectAndBuyNetwork.new(),
			})

			expect(store:getState().inspectAndBuy.Bundles[mockId].numFavorites).to.equal(23)
			expect(store:getState().inspectAndBuy.Bundles[mockId].isFavorited).to.equal(false)
		end)

		it("should catch network errors that happen and still run", function()
			local store = Rodux.Store.new(Reducer)
			local mockId = MockId()
			local thunk = SetFavoriteForItem(mockId, Enum.AvatarItemType.Asset, false)

			InspectAndBuyThunk.test(thunk, store, {
				[Network] = MockInspectAndBuyNetwork.new(true),
			})
		end)
	end
end