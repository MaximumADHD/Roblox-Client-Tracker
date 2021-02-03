local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)

local ExampleReducer = require(script.Parent.ExampleReducer)

local Framework = require(Plugin.Packages.Framework)

local TestHelpers = Framework.TestHelpers
local testImmutability = TestHelpers.testImmutability

local Actions = Plugin.Src.Actions
local ExampleAction = require(Actions.ExampleAction)

local defaultString = "abcde"

return function()
	it("should return its expected default state", function()
		local r = Rodux.Store.new(ExampleReducer)
		expect(r:getState()).to.be.ok()
		expect(r:getState().DefaultStateObject).to.equal("")
	end)

	describe("ExampleAction", function()
		it("should set the current DefaultStateObject", function()
			local state = ExampleReducer(nil, ExampleAction(defaultString))

			expect(state).to.be.ok()
			expect(state.DefaultStateObject).to.be.ok()
			expect(state.DefaultStateObject).to.equal(defaultString)
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(ExampleReducer, ExampleAction("foo"))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)
end
