local FFlagTerrainToolsEditPlaneLock = game:GetFastFlag("TerrainToolsEditPlaneLock")

local Plugin = script.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local Rodux = require(Plugin.Packages.Rodux)

local testImmutability = Framework.TestHelpers.testImmutability

local SubtractTool = require(script.Parent.SubtractTool)

local Constants = require(Plugin.Src.Util.Constants)
local TerrainEnums = require(Plugin.Src.Util.TerrainEnums)
local BrushShape = TerrainEnums.BrushShape
local PivotType = TerrainEnums.PivotType
local PlaneLockType = TerrainEnums.PlaneLockType

local Actions = Plugin.Src.Actions
local ChooseBrushShape = require(Actions.ChooseBrushShape)
local ChangeBaseSize = require(Actions.ChangeBaseSize)
local ChangeHeight = require(Actions.ChangeHeight)
local ChangePivot = require(Actions.ChangePivot)
local SetIgnoreWater = require(Actions.SetIgnoreWater)
local SetIgnoreParts = require(Actions.SetIgnoreParts)
local SetPlaneLock = require(Actions.SetPlaneLock)
local SetEditPlaneMode = require(Actions.SetEditPlaneMode)
local SetPlaneCFrame = require(Actions.SetPlaneCFrame)
local SetSnapToGrid = require(Actions.SetSnapToGrid)
local SetBaseSizeHeightLocked = require(Actions.SetBaseSizeHeightLocked)

return function()
	it("should return its expected default state", function()
		local r = Rodux.Store.new(SubtractTool)
		expect(r:getState()).to.be.ok()
		expect(r:getState().baseSize).to.equal(Constants.INITIAL_BRUSH_SIZE)
		expect(r:getState().brushShape).to.equal(BrushShape.Sphere)
		expect(r:getState().height).to.equal(Constants.INITIAL_BRUSH_SIZE)
		expect(r:getState().baseSizeHeightLocked).to.equal(true)
		expect(r:getState().ignoreWater).to.equal(true)
		expect(r:getState().ignoreParts).to.equal(true)
		expect(r:getState().pivot).to.equal(PivotType.Center)
		if FFlagTerrainToolsEditPlaneLock then
			expect(r:getState().planeLock).to.equal(PlaneLockType.Auto)
			expect(r:getState().editPlaneMode).to.equal(false)
			expect(r:getState().planeCFrame).to.equal(nil)
		end
		expect(r:getState().snapToGrid).to.equal(false)
	end)

	describe("ChangeBaseSize", function()
		it("should set the current baseSize", function()
			local state = SubtractTool(nil, ChangeBaseSize(99999999))

			expect(state).to.be.ok()
			expect(state.baseSize).to.be.ok()
			expect(state.baseSize).to.equal(99999999)
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(SubtractTool, ChangeBaseSize(11111111))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe("ChooseBrushShape", function()
		it("should set the current brushShape", function()
			local state = SubtractTool(nil, ChooseBrushShape("hello world"))

			expect(state).to.be.ok()
			expect(state.brushShape).to.be.ok()
			expect(state.brushShape).to.equal("hello world")
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(SubtractTool, ChooseBrushShape("foo"))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe("ChangeHeight", function()
		it("should set the current height", function()
			local state = SubtractTool(nil, ChangeHeight(99999999))

			expect(state).to.be.ok()
			expect(state.height).to.be.ok()
			expect(state.height).to.equal(99999999)
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(SubtractTool, ChangeHeight(11111111))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe("SetIgnoreWater", function()
		it("should set the current ignoreWater", function()
			local state = SubtractTool(nil, SetIgnoreWater(true))

			expect(state).to.be.ok()
			expect(state.ignoreWater).to.be.ok()
			expect(state.ignoreWater).to.equal(true)
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(SubtractTool, SetIgnoreWater(true))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe("SetIgnoreParts", function()
		it("should set the current ignoreParts", function()
			local state = SubtractTool(nil, SetIgnoreParts(true))

			expect(state).to.be.ok()
			expect(state.ignoreParts).to.be.ok()
			expect(state.ignoreParts).to.equal(true)
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(SubtractTool, SetIgnoreParts(true))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe("ChangePivot", function()
		it("should set the current pivot", function()
			local state = SubtractTool(nil, ChangePivot("hello world"))

			expect(state).to.be.ok()
			expect(state.pivot).to.be.ok()
			expect(state.pivot).to.equal("hello world")
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(SubtractTool, ChangePivot("foo"))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	if FFlagTerrainToolsEditPlaneLock then
		describe("SetPlaneLock", function()
			it("should set the current planeLock", function()
				local state = SubtractTool(nil, SetPlaneLock(PlaneLockType.Auto))

				expect(state).to.be.ok()
				expect(state.planeLock).to.be.ok()
				expect(state.planeLock).to.equal(PlaneLockType.Auto)
			end)
	
			it("should preserve immutability", function()
				local immutabilityPreserved = testImmutability(SubtractTool, SetPlaneLock(PlaneLockType.Auto))
				expect(immutabilityPreserved).to.equal(true)
			end)
		end)

		describe("SetEditPlaneMode", function()
			it("should set the current editPlaneMode", function()
				local state = SubtractTool(nil, SetEditPlaneMode(true))

				expect(state).to.be.ok()
				expect(state.editPlaneMode).to.be.ok()
				expect(state.editPlaneMode).to.equal(true)
			end)
	
			it("should preserve immutability", function()
				local immutabilityPreserved = testImmutability(SubtractTool, SetEditPlaneMode(true))
				expect(immutabilityPreserved).to.equal(true)
			end)
		end)
	
		describe("SetPlaneCFrame", function()
			it("should set the current planeCFrame", function()
				local frame = CFrame.new()
				local state = SubtractTool(nil, SetPlaneCFrame(frame))

				expect(state).to.be.ok()
				expect(state.planeCFrame).to.be.ok()
				expect(state.planeCFrame).to.equal(frame)
			end)
	
			it("should preserve immutability", function()
				local immutabilityPreserved = testImmutability(SubtractTool, SetPlaneCFrame(CFrame.new()))
				expect(immutabilityPreserved).to.equal(true)
			end)
		end)
	end

	describe("SetSnapToGrid", function()
		it("should set the current snapToGrid", function()
			local state = SubtractTool(nil, SetSnapToGrid(true))

			expect(state).to.be.ok()
			expect(state.snapToGrid).to.be.ok()
			expect(state.snapToGrid).to.equal(true)
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(SubtractTool, SetSnapToGrid(true))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe("SetBaseSizeHeightLocked", function()
		it("should set base size and height locked", function()
			local state = SubtractTool(nil, SetBaseSizeHeightLocked(false))

			expect(state).to.be.ok()
			expect(state.baseSizeHeightLocked).to.be.ok()
			expect(state.baseSizeHeightLocked).to.equal(false)
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(SubtractTool, SetBaseSizeHeightLocked(false))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)
end
