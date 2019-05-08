return function()
	local CorePackages = game:GetService("CorePackages")
	local Rodux = require(CorePackages.Rodux)
	local InspectAndBuyFolder = script.Parent.Parent
	local Reducer = require(InspectAndBuyFolder.Reducers.InspectAndBuyReducer)
	local MockNetwork = require(InspectAndBuyFolder.Test.MockNetwork)
	local Network = require(InspectAndBuyFolder.Services.Network)
	local Thunk = require(InspectAndBuyFolder.Thunk)
	local MockId = require(InspectAndBuyFolder.MockId)
	local GetProductInfo = require(script.Parent.GetProductInfo)

	it("should get the product info of an asset", function()
		local store = Rodux.Store.new(Reducer)
		local mockId = MockId()
		local thunk = GetProductInfo(mockId)

		Thunk.test(thunk, store, {
			[Network] = MockNetwork.new(),
		})

		local state = store:getState()

		expect(state.assets[tostring(MockNetwork.GetProductInfo().AssetId)].name).to.equal(MockNetwork.GetProductInfo().Name)
	end)

	it("should catch network errors that happen and still run", function()
		local store = Rodux.Store.new(Reducer)
		local thunk = GetProductInfo()

		Thunk.test(thunk, store, {
			[Network] = MockNetwork.new(true),
		})
	end)
end