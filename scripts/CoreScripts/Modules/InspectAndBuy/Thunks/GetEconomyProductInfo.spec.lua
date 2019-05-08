return function()
	local CorePackages = game:GetService("CorePackages")
	local Rodux = require(CorePackages.Rodux)
	local InspectAndBuyFolder = script.Parent.Parent
	local Reducer = require(InspectAndBuyFolder.Reducers.InspectAndBuyReducer)
	local MockNetwork = require(InspectAndBuyFolder.Test.MockNetwork)
	local Network = require(InspectAndBuyFolder.Services.Network)
	local Thunk = require(InspectAndBuyFolder.Thunk)
	local GetEconomyProductInfo = require(script.Parent.GetEconomyProductInfo)

	it("should get the product info", function()
		local store = Rodux.Store.new(Reducer)
		local thunk = GetEconomyProductInfo()

		Thunk.test(thunk, store, {
			[Network] = MockNetwork.new(),
		})

		local state = store:getState()

		expect(state.assets[tostring(MockNetwork.GetEconomyProductInfo().assetId)]
			.assetId).to.equal(tostring(MockNetwork.GetEconomyProductInfo().assetId))
	end)

	it("should catch network errors that happen and still run", function()
		local store = Rodux.Store.new(Reducer)
		local thunk = GetEconomyProductInfo()

		Thunk.test(thunk, store, {
			[Network] = MockNetwork.new(true),
		})
	end)
end