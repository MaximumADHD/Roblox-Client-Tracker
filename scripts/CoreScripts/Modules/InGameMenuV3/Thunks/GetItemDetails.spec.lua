return function()
	local CorePackages = game:GetService("CorePackages")
	local Rodux = require(CorePackages.Rodux)
	local InGameMenu = script.Parent.Parent
	local Reducer = require(InGameMenu.reducer)
	local MockInspectAndBuyNetwork = require(InGameMenu.Mocks.MockInspectAndBuyNetwork)
	local Network = require(InGameMenu.Network.Requests.InspectAndBuy.Network)
	local InspectAndBuyThunk = require(InGameMenu.InspectAndBuyThunk)
	local GetItemDetails = require(script.Parent.GetItemDetails)

	local FFlagInspectAndBuyV2IXPEnabledForAll = require(InGameMenu.Flags.FFlagInspectAndBuyV2IXPEnabledForAll)

	if FFlagInspectAndBuyV2IXPEnabledForAll then
		it("should get the product info", function()
			local store = Rodux.Store.new(Reducer)
			local thunk = GetItemDetails()

			InspectAndBuyThunk.test(thunk, store, {
				[Network] = MockInspectAndBuyNetwork.new(),
			})

			local state = store:getState()

			expect(state.inspectAndBuy.Assets[tostring(MockInspectAndBuyNetwork.GetItemDetails().Id)]
				.assetId).to.equal(tostring(MockInspectAndBuyNetwork.GetItemDetails().Id))
		end)

		it("should catch network errors that happen and still run", function()
			local store = Rodux.Store.new(Reducer)
			local thunk = GetItemDetails()

			InspectAndBuyThunk.test(thunk, store, {
				[Network] = MockInspectAndBuyNetwork.new(true),
			})
		end)
	end
end