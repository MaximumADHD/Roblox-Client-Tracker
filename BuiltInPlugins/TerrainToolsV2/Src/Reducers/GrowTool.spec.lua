local Plugin = script.Parent.Parent.Parent
local TestHelpers = Plugin.Src.TestHelpers
local Packages = Plugin.Packages

local GrowTool = require(script.Parent.GrowTool)
local testImmutability = require(TestHelpers.testImmutability)
local Rodux = require(Packages.Rodux)

local Actions = Plugin.Src.Actions
local ChangeBaseSize = require(Actions.ChangeBaseSize)
local ChangeHeight = require(Actions.ChangeHeight)
local ChangeStrength = require(Actions.ChangeStrength)
local ChangePivot = require(Actions.ChangePivot)
local ChooseBrushShape = require(Actions.ChooseBrushShape)
local SetAutoMaterial = require(Actions.SetAutoMaterial)
local SetIgnoreWater = require(Actions.SetIgnoreWater)
local SetMaterial = require(Actions.SetMaterial)
local SetPlaneLock = require(Actions.SetPlaneLock)
local SetSnapToGrid = require(Actions.SetSnapToGrid)

return function()
	it("should return its expected default state", function()
		local r = Rodux.Store.new(GrowTool)
		expect(r:getState()).to.be.ok()
		expect(r:getState().autoMaterial).to.equal(false)
		expect(r:getState().baseSize).to.equal(20)
		expect(r:getState().brushShape).to.equal("Circle")
		expect(r:getState().height).to.equal(20)
		expect(r:getState().ignoreWater).to.equal(false)
		expect(r:getState().material).to.equal(Enum.Material.Grass)
		expect(r:getState().pivot).to.equal("Cen")
		expect(r:getState().planeLock).to.equal(false)
		expect(r:getState().snapToGrid).to.equal(false)
		expect(r:getState().strength).to.equal(20)
	end)

	describe("ChangeBaseSize", function()
		it("should set the current baseSize", function()
			local state = GrowTool(nil, ChangeBaseSize(99999999))

			expect(state).to.be.ok()
			expect(state.baseSize).to.be.ok()
			expect(state.baseSize).to.equal(99999999)
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(GrowTool, ChangeBaseSize(11111111))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe("ChooseBrushShape", function()
		it("should set the current brushShape", function()
			local state = GrowTool(nil, ChooseBrushShape("hello world"))

			expect(state).to.be.ok()
			expect(state.brushShape).to.be.ok()
			expect(state.brushShape).to.equal("hello world")
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(GrowTool, ChooseBrushShape("foo"))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe("ChangeHeight", function()
		it("should set the current height", function()
			local state = GrowTool(nil, ChangeHeight(99999999))

			expect(state).to.be.ok()
			expect(state.height).to.be.ok()
			expect(state.height).to.equal(99999999)
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(GrowTool, ChangeHeight(11111111))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe("SetIgnoreWater", function()
		it("should set the current ignoreWater", function()
			local state = GrowTool(nil, SetIgnoreWater(true))

			expect(state).to.be.ok()
			expect(state.ignoreWater).to.be.ok()
			expect(state.ignoreWater).to.equal(true)
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(GrowTool, SetIgnoreWater(true))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe("SetMaterial", function()
		it("should set the current material", function()
			local state = GrowTool(nil, SetMaterial(Enum.Material.Slate))

			expect(state).to.be.ok()
			expect(state.material).to.be.ok()
			expect(state.material).to.equal(Enum.Material.Slate)
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(GrowTool, SetMaterial(Enum.Material.Slate))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe("ChangePivot", function()
		it("should set the current pivot", function()
			local state = GrowTool(nil, ChangePivot("hello world"))

			expect(state).to.be.ok()
			expect(state.pivot).to.be.ok()
			expect(state.pivot).to.equal("hello world")
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(GrowTool, ChangePivot("foo"))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe("SetPlaneLock", function()
		it("should set the current planeLock", function()
			local state = GrowTool(nil, SetPlaneLock(true))

			expect(state).to.be.ok()
			expect(state.planeLock).to.be.ok()
			expect(state.planeLock).to.equal(true)
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(GrowTool, SetPlaneLock(true))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe("SetSnapToGrid", function()
		it("should set the current snapToGrid", function()
			local state = GrowTool(nil, SetSnapToGrid(true))

			expect(state).to.be.ok()
			expect(state.snapToGrid).to.be.ok()
			expect(state.snapToGrid).to.equal(true)
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(GrowTool, SetSnapToGrid(true))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)
	describe("ChangeStrength", function()
		it("should set the current strength", function()
			local state = GrowTool(nil, ChangeStrength(999999))

			expect(state).to.be.ok()
			expect(state.strength).to.be.ok()
			expect(state.strength).to.equal(999999)
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(GrowTool, ChangeStrength(1111111))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)
end