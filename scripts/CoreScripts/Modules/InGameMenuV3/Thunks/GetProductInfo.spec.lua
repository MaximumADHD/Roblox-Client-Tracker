return function()
	local CorePackages = game:GetService("CorePackages")
	local Rodux = require(CorePackages.Rodux)
	local InGameMenu = script.Parent.Parent
	local Reducer = require(InGameMenu.reducer)
	local MockInspectAndBuyNetwork = require(InGameMenu.Mocks.MockInspectAndBuyNetwork)
	local Network = require(InGameMenu.Network.Requests.InspectAndBuy.Network)
	local InspectAndBuyThunk = require(InGameMenu.InspectAndBuyThunk)
	local MockAssetId = require(InGameMenu.Mocks.MockAssetId)
	local GetProductInfo = require(InGameMenu.Thunks.GetProductInfo)

	local FFlagInspectAndBuyV2IXPEnabledForAll = require(InGameMenu.Flags.FFlagInspectAndBuyV2IXPEnabledForAll)

	if FFlagInspectAndBuyV2IXPEnabledForAll then
		it("should get the product info of an asset", function()
			local store = Rodux.Store.new(Reducer)
			local mockId = MockAssetId()
			local thunk = GetProductInfo(mockId)

			InspectAndBuyThunk.test(thunk, store, {
				[Network] = MockInspectAndBuyNetwork.new(),
			})

			local state = store:getState()
			expect(state.inspectAndBuy.Assets[mockId].name).to.equal(MockInspectAndBuyNetwork.GetProductInfo().Name)
		end)

		it("should catch network errors that happen and still run", function()
			local store = Rodux.Store.new(Reducer)
			local thunk = GetProductInfo()

			InspectAndBuyThunk.test(thunk, store, {
				[Network] = MockInspectAndBuyNetwork.new(true),
			})
		end)
	end
end
