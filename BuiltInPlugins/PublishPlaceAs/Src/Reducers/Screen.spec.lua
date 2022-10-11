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

	describe("SetScreen action", function()
		local SetScreen = require(Plugin.Src.Actions.SetScreen)

		it("should validate its inputs", function()
			expect(function()
				SetScreen(nil)
			end).to.throw()

			expect(function()
				SetScreen({ key = "value" })
			end).to.throw()

			expect(function()
				SetScreen("some screen")
			end).to.throw()
		end)

		it("should not mutate the state", function()
			for k, v in pairs(Constants.SCREENS) do
				testImmutability(Reducer, SetScreen(k))
				testImmutability(Reducer, SetScreen(v))
			end
		end)

		it("should set screen", function()
			local state = Reducer(nil, {})
			expect(state.screen).to.equal(Constants.SCREENS.CREATE_NEW_GAME)

			for k, v in pairs(Constants.SCREENS) do
				state = Reducer(state, SetScreen(k))
				expect(state.screen).to.equal(v)
			end
		end)
	end)
end
