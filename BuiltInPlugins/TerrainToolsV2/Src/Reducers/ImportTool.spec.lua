local Plugin = script.Parent.Parent.Parent
local TestHelpers = Plugin.Src.TestHelpers
local Packages = Plugin.Packages

local ImportTool = require(script.Parent.ImportTool)
local testImmutability = require(TestHelpers.testImmutability)
local Rodux = require(Packages.Rodux)
local ExampleAction = require(Plugin.Src.Actions.ExampleAction)

return function()
	it("should return its expected default state", function()
		local r = Rodux.Store.new(ImportTool)
		expect(r:getState()).to.be.ok()
		expect(r:getState().message).to.equal(nil)
	end)

	describe("ExampleAction", function()
		it("should set the current message", function()
			local state = ImportTool(nil, ExampleAction("hello world"))

			expect(state).to.be.ok()
			expect(state.message).to.be.ok()
			expect(state.message).to.equal("hello world")
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(ImportTool, ExampleAction("foo"))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)
end