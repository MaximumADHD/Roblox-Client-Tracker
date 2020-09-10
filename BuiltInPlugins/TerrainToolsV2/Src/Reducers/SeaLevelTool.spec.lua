local Plugin = script.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local Rodux = require(Plugin.Packages.Rodux)

local testImmutability = Framework.TestHelpers.testImmutability

local SeaLevelTool = require(script.Parent.SeaLevelTool)

local Actions = Plugin.Src.Actions
local ChangePosition = require(Actions.ChangePosition)
local ChangeSize = require(Actions.ChangeSize)
local ChangePlanePositionY = require(Actions.ChangePlanePositionY)
local SetHeightPicker = require(Actions.SetHeightPicker)

return function()
	it("should return its expected default state", function()
		local r = Rodux.Store.new(SeaLevelTool)
		expect(r:getState()).to.be.ok()

		expect(r:getState().position).to.be.ok()
		expect(r:getState().position.X).to.equal(0)
		expect(r:getState().position.Y).to.equal(0)
		expect(r:getState().position.Z).to.equal(0)

		expect(r:getState().size).to.be.ok()
		expect(r:getState().size.X).to.equal(1024)
		expect(r:getState().size.Y).to.equal(512)
		expect(r:getState().size.Z).to.equal(1024)

		expect(r:getState().planePositionY).to.equal(0)
		expect(r:getState().heightPicker).to.equal(false)
	end)

	describe("ChangePosition", function()
		it("should set position", function()
			local state = SeaLevelTool(nil, ChangePosition({
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
			local immutabilityPreserved = testImmutability(SeaLevelTool, ChangePosition({
				X = 321,
				Y = 654,
				Z = 987,
			}))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe("ChangeSize", function()
		it("should set size", function()
			local state = SeaLevelTool(nil, ChangeSize({
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
			local immutabilityPreserved = testImmutability(SeaLevelTool, ChangeSize({
				X = 123,
				Y = 456,
				Z = 789,
			}))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe("ChangePlanePositionY", function()
		it("should set PlanePosition", function()
			local state = SeaLevelTool(nil, ChangePlanePositionY(12345))
			expect(state).to.be.ok()
			expect(state.planePositionY).to.equal(12345)
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(SeaLevelTool, ChangePlanePositionY(12345))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe("SetHeightPicker", function()
		it("should set PlanePosition", function()
			local state = SeaLevelTool(nil, SetHeightPicker(true))
			expect(state).to.be.ok()
			expect(state.heightPicker).to.equal(true)
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(SeaLevelTool, SetHeightPicker(true))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)
end
