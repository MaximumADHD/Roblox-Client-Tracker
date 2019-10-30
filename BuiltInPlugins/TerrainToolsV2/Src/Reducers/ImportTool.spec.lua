local Plugin = script.Parent.Parent.Parent
local TestHelpers = Plugin.Src.TestHelpers
local Packages = Plugin.Packages

local ImportTool = require(script.Parent.ImportTool)
local testImmutability = require(TestHelpers.testImmutability)
local Rodux = require(Packages.Rodux)

local Actions = Plugin.Src.Actions
local ChangePosition = require(Actions.ChangePosition)
local ChangeSize = require(Actions.ChangeSize)

return function()
	it("should return its expected default state", function()
		local r = Rodux.Store.new(ImportTool)
		expect(r:getState()).to.be.ok()
		expect(r:getState().message).to.equal(nil)
	end)

	describe("ChangePosition", function()
		it("should set position", function()
			local state = ImportTool(nil, ChangePosition({
				X = 321,
				Y = 654,
				Z = 987,
			}))

			expect(state).to.be.ok()
			expect(state.position).to.be.ok()
			expect(state.position.X).to.equal(321)
			expect(state.position.Y).to.equal(654)
			expect(state.position.Z).to.equal(987)
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(ImportTool, ChangePosition({
				X = 321,
				Y = 654,
				Z = 987,
			}))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe("ChangeSize", function()
		it("should set size", function()
			local state = ImportTool(nil, ChangeSize({
				X = 123,
				Y = 456,
				Z = 789,
			}))

			expect(state).to.be.ok()
			expect(state.size).to.be.ok()
			expect(state.size.X).to.equal(123)
			expect(state.size.Y).to.equal(456)
			expect(state.size.Z).to.equal(789)
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(ImportTool, ChangeSize({
				X = 123,
				Y = 456,
				Z = 789,
			}))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)
end