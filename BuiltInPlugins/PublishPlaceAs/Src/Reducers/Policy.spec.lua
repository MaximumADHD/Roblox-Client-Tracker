return function()
	local Plugin = script.Parent.Parent.Parent
	local Constants = require(Plugin.Src.Resources.Constants)
	local testImmutability = require(Plugin.Src.TestHelpers.testImmutability)

	local Reducer = require(script.Parent.Screen)

	it("should return a table with the correct members", function()
		local state = Reducer(nil, {})

		expect(type(state)).to.equal("table")
		expect(state.screen).to.be.ok()
	end)

	describe("SetPlayerAcceptance action", function()
		local SetPlayerAcceptance = require(Plugin.Src.Actions.SetPlayerAcceptance)

		it("should validate its inputs", function()
			expect(function()
				SetPlayerAcceptance(nil)
			end).to.throw()

			expect(function()
				SetPlayerAcceptance({ key = "value" })
			end).to.throw()

			expect(function()
				SetPlayerAcceptance("some screen")
			end).to.throw()
		end)

		it("should not mutate the state", function()
			testImmutability(Reducer, SetPlayerAcceptance(true))
			testImmutability(Reducer, SetPlayerAcceptance(false))
		end)

		it("should set player acceptances status", function()
			local state = Reducer(nil, {})
			expect(state.PlayerAcceptance).to.equal(false)

			state = Reducer(state, SetPlayerAcceptance(true))
			expect(state.screen).to.equal(true)
		end)
	end)
end
