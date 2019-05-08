return function()
	local CorePackages = game:GetService("CorePackages")
	local Rodux = require(CorePackages.Rodux)
	local InspectAndBuyFolder = script.Parent.Parent
	local Reducer = require(InspectAndBuyFolder.Reducers.InspectAndBuyReducer)
	local MockNetwork = require(InspectAndBuyFolder.Test.MockNetwork)
	local Network = require(InspectAndBuyFolder.Services.Network)
	local Thunk = require(InspectAndBuyFolder.Thunk)
	local MockId = require(InspectAndBuyFolder.MockId)
	local GetPlayerName = require(script.Parent.GetPlayerName)

	it("should get a player's name", function()
		local store = Rodux.Store.new(Reducer)
		local mockPlayerId = MockId()
		local thunk = GetPlayerName(mockPlayerId)

		Thunk.test(thunk, store, {
			[Network] = MockNetwork.new(),
		})

		local state = store:getState()

		expect(state.playerName).to.equal(MockNetwork.GetMockPlayerName())
	end)

	it("should catch network errors that happen and still run", function()
		local store = Rodux.Store.new(Reducer)
		local mockPlayerId = MockId()
		local thunk = GetPlayerName(mockPlayerId)

		Thunk.test(thunk, store, {
			[Network] = MockNetwork.new(true),
		})
	end)
end