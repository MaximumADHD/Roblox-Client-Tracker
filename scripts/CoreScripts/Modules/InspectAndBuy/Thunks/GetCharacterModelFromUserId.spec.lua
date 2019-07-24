return function()
	local CorePackages = game:GetService("CorePackages")
	local Rodux = require(CorePackages.Rodux)
	local InspectAndBuyFolder = script.Parent.Parent
	local Reducer = require(InspectAndBuyFolder.Reducers.InspectAndBuyReducer)
	local MockNetwork = require(InspectAndBuyFolder.Test.MockNetwork)
	local Network = require(InspectAndBuyFolder.Services.Network)
	local Thunk = require(InspectAndBuyFolder.Thunk)
	local GetCharacterModelFromUserId = require(script.Parent.GetCharacterModelFromUserId)

	it("should obtain a character model without errors", function()
		local store = Rodux.Store.new(Reducer)
		local thunk = GetCharacterModelFromUserId()

		Thunk.test(thunk, store, {
			[Network] = MockNetwork.new(),
		})
	end)

	it("should catch network errors that happen and still run", function()
		local store = Rodux.Store.new(Reducer)
		local thunk = GetCharacterModelFromUserId()

		Thunk.test(thunk, store, {
			[Network] = MockNetwork.new(true),
		})
	end)
end