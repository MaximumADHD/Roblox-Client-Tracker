return function()
	local CorePackages = game:GetService("CorePackages")
	local Rodux = require(CorePackages.Rodux)
	local InGameMenu = script.Parent.Parent
	local Reducer = require(InGameMenu.reducer)
	local MockInspectAndBuyNetwork = require(InGameMenu.Mocks.MockInspectAndBuyNetwork)
	local Network = require(InGameMenu.Network.Requests.InspectAndBuy.Network)
	local InspectAndBuyThunk = require(InGameMenu.InspectAndBuyThunk)
	local MockAssetId = require(InGameMenu.Mocks.MockAssetId)
	local GetAssetBundles = require(InGameMenu.Thunks.GetAssetBundles)

	local FFlagInspectAndBuyV2IXPEnabledForAll = require(InGameMenu.Flags.FFlagInspectAndBuyV2IXPEnabledForAll)

	if FFlagInspectAndBuyV2IXPEnabledForAll then
		it("set the bundles an asset is part of", function()
			local store = Rodux.Store.new(Reducer)
			local mockAssetId = MockAssetId()
			local thunk = GetAssetBundles(mockAssetId)

			InspectAndBuyThunk.test(thunk, store, {
				[Network] = MockInspectAndBuyNetwork.new(),
			})

			local state = store:getState()
			expect(#state.inspectAndBuy.Assets[mockAssetId].bundlesAssetIsIn).to.equal(#MockInspectAndBuyNetwork.GetMockAssetBundlesData().data)
			expect(state.inspectAndBuy.Assets[mockAssetId].bundlesAssetIsIn[1]).to.equal(
				tostring(MockInspectAndBuyNetwork.GetMockAssetBundlesData().data[1].id))
		end)

		it("should catch network errors that happen and still run", function()
			local store = Rodux.Store.new(Reducer)
			local mockAssetId = MockAssetId()
			local thunk = GetAssetBundles(mockAssetId)

			InspectAndBuyThunk.test(thunk, store, {
				[Network] = MockInspectAndBuyNetwork.new(true),
			})
		end)
	end
end