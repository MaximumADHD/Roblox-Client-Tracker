local Plugin = script.Parent.Parent.Parent
local TestHelpers = Plugin.Src.TestHelpers
local Packages = Plugin.Packages

local TerrainEnums = require(Plugin.Src.Util.TerrainEnums)
local BrushShape = TerrainEnums.BrushShape
local FlattenMode = TerrainEnums.FlattenMode
local PivotType = TerrainEnums.PivotType

local FlattenTool = require(script.Parent.FlattenTool)
local testImmutability = require(TestHelpers.testImmutability)
local Rodux = require(Packages.Rodux)

local Actions = Plugin.Src.Actions
local ChooseBrushShape = require(Actions.ChooseBrushShape)
local ChangeBaseSize = require(Actions.ChangeBaseSize)
local ChangeHeight = require(Actions.ChangeHeight)
local ChangeStrength = require(Actions.ChangeStrength)
local ChangePivot = require(Actions.ChangePivot)
local SetIgnoreWater = require(Actions.SetIgnoreWater)
local SetSnapToGrid = require(Actions.SetSnapToGrid)
local SetPlaneLock = require(Actions.SetPlaneLock)
local ChooseFlattenMode = require(Actions.ChooseFlattenMode)
local ChangePlanePositionY = require(Actions.ChangePlanePositionY)
local SetHeightPicker = require(Actions.SetHeightPicker)

return function()
	it("should return its expected default state", function()
		local r = Rodux.Store.new(FlattenTool)
		expect(r:getState()).to.be.ok()
		expect(r:getState().brushShape).to.equal(BrushShape.Sphere)
		expect(r:getState().baseSize).to.equal(6)
		expect(r:getState().height).to.equal(6)
		expect(r:getState().flattenMode).to.equal(FlattenMode.Both)
		expect(r:getState().ignoreWater).to.equal(true)
		expect(r:getState().pivot).to.equal(PivotType.Center)
		expect(r:getState().planeLock).to.equal(false)
		expect(r:getState().snapToGrid).to.equal(false)
		expect(r:getState().strength).to.equal(.5)
	end)

	describe("ChangeBaseSize", function()
		it("should set the current baseSize", function()
			local state = FlattenTool(nil, ChangeBaseSize(99999999))

			expect(state).to.be.ok()
			expect(state.baseSize).to.be.ok()
			expect(state.baseSize).to.equal(99999999)
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(FlattenTool, ChangeBaseSize(11111111))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe("ChooseBrushShape", function()
		it("should set the current brushShape", function()
			local state = FlattenTool(nil, ChooseBrushShape("hello world"))

			expect(state).to.be.ok()
			expect(state.brushShape).to.be.ok()
			expect(state.brushShape).to.equal("hello world")
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(FlattenTool, ChooseBrushShape("foo"))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe("ChooseFlattenMode", function()
		it("should set the current flattenMode", function()
			local state = FlattenTool(nil, ChooseFlattenMode("hello world"))

			expect(state).to.be.ok()
			expect(state.flattenMode).to.be.ok()
			expect(state.flattenMode).to.equal("hello world")
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(FlattenTool, ChooseFlattenMode("foo"))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe("ChangeHeight", function()
		it("should set the current height", function()
			local state = FlattenTool(nil, ChangeHeight(99999999))

			expect(state).to.be.ok()
			expect(state.height).to.be.ok()
			expect(state.height).to.equal(99999999)
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(FlattenTool, ChangeHeight(11111111))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe("ChangePlanePositionY", function()
		it("should set the current plane position Y", function()
			local state = FlattenTool(nil, ChangePlanePositionY(99999999))

			expect(state).to.be.ok()
			expect(state.planePositionY).to.be.ok()
			expect(state.planePositionY).to.equal(99999999)
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(FlattenTool, ChangePlanePositionY(11111111))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe("SetIgnoreWater", function()
		it("should set the current ignoreWater", function()
			local state = FlattenTool(nil, SetIgnoreWater(true))

			expect(state).to.be.ok()
			expect(state.ignoreWater).to.be.ok()
			expect(state.ignoreWater).to.equal(true)
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(FlattenTool, SetIgnoreWater(true))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe("ChangePivot", function()
		it("should set the current pivot", function()
			local state = FlattenTool(nil, ChangePivot("hello world"))

			expect(state).to.be.ok()
			expect(state.pivot).to.be.ok()
			expect(state.pivot).to.equal("hello world")
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(FlattenTool, ChangePivot("foo"))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe("SetPlaneLock", function()
		it("should set the current planeLock", function()
			local state = FlattenTool(nil, SetPlaneLock(true))

			expect(state).to.be.ok()
			expect(state.planeLock).to.be.ok()
			expect(state.planeLock).to.equal(true)
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(FlattenTool, SetPlaneLock(true))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe("SetSnapToGrid", function()
		it("should set the current snapToGrid", function()
			local state = FlattenTool(nil, SetSnapToGrid(true))

			expect(state).to.be.ok()
			expect(state.snapToGrid).to.be.ok()
			expect(state.snapToGrid).to.equal(true)
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(FlattenTool, SetSnapToGrid(true))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe("ChangeStrength", function()
		it("should set the current strength", function()
			local state = FlattenTool(nil, ChangeStrength(999999))

			expect(state).to.be.ok()
			expect(state.strength).to.be.ok()
			expect(state.strength).to.equal(999999)
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(FlattenTool, ChangeStrength(1111111))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)


	describe("SetHeightPicker", function()
		it("should set the current height picker", function()
			local state = FlattenTool(nil, SetHeightPicker(true))

			expect(state).to.be.ok()
			expect(state.heightPicker).to.be.ok()
			expect(state.heightPicker).to.equal(true)
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(FlattenTool, SetHeightPicker(true))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)
end
