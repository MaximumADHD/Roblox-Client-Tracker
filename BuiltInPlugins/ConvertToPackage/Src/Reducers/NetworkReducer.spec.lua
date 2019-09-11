return function()
	local Plugin = script.Parent.Parent.Parent
	local NetworkReducer = require(Plugin.Src.Reducers.NetworkReducer)
	local testImmutability = require(Plugin.Src.TestHelpers.testImmutability)

	it("should return a table with the correct members", function()
		local state = NetworkReducer(nil, {})
		expect(type(state)).to.equal("table")
	end)

	describe("SetNetworkError action", function()
		local NetworkError = require(Plugin.Src.Actions.NetworkError)
		local errorAction = "networkErrorAction"
		local response = {
			responseBody =  "500"
		}
		it("should set the network error data", function()
			local state = NetworkReducer(nil, {})
			state = NetworkReducer(state, NetworkError(response,errorAction))
			expect(state.networkError).to.equal(response)
			expect(state.networkErrorAction).to.equal(errorAction)
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(NetworkReducer, NetworkError(response,errorAction))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)
end