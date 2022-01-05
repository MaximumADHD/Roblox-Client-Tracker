local Plugin = script.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local Rodux = require(Plugin.Packages.Rodux)

local testImmutability = Framework.TestHelpers.testImmutability

local SmoothTool = require(script.Parent.SmoothTool)

local Constants = require(Plugin.Src.Util.Constants)
local TerrainEnums = require(Plugin.Src.Util.TerrainEnums)
local BrushShape = TerrainEnums.BrushShape
local PivotType = TerrainEnums.PivotType
local PlaneLockType = TerrainEnums.PlaneLockType

local Actions = Plugin.Src.Actions
local ChangeBaseSize = require(Actions.ChangeBaseSize)
local ChangeHeight = require(Actions.ChangeHeight)
local ChangeStrength = require(Actions.ChangeStrength)
local ChangePivot = require(Actions.ChangePivot)
local ChooseBrushShape = require(Actions.ChooseBrushShape)
local SetPlaneLock = require(Actions.SetPlaneLock)
local SetEditPlaneMode = require(Actions.SetEditPlaneMode)
local SetPlaneCFrame = require(Actions.SetPlaneCFrame)
local SetSnapToVoxels = require(Actions.SetSnapToVoxels)
local SetBaseSizeHeightLocked = require(Actions.SetBaseSizeHeightLocked)
local SetIgnoreWater = require(Actions.SetIgnoreWater)
local SetIgnoreParts = require(Actions.SetIgnoreParts)

return function()
	it("should return its expected default state", function()
		local r = Rodux.Store.new(SmoothTool)
		expect(r:getState()).to.be.ok()
		expect(r:getState().brushShape).to.equal(BrushShape.Sphere)
		expect(r:getState().baseSize).to.equal(Constants.INITIAL_BRUSH_SIZE)
		expect(r:getState().height).to.equal(Constants.INITIAL_BRUSH_SIZE)
		expect(r:getState().baseSizeHeightLocked).to.equal(true)
		expect(r:getState().strength).to.equal(Constants.INITIAL_BRUSH_STRENGTH)
		expect(r:getState().pivot).to.equal(PivotType.Center)
		expect(r:getState().planeLock).to.equal(PlaneLockType.Off)
		expect(r:getState().editPlaneMode).to.equal(false)
		expect(r:getState().planeCFrame).to.equal(nil)
		expect(r:getState().snapToVoxels).to.equal(false)
		expect(r:getState().ignoreWater).to.equal(false)
		expect(r:getState().ignoreParts).to.equal(true)
	end)

	describe("ChangeBaseSize", function()
		it("should set the current baseSize", function()
			local state = SmoothTool(nil, ChangeBaseSize(99999999))

			expect(state).to.be.ok()
			expect(state.baseSize).to.be.ok()
			expect(state.baseSize).to.equal(99999999)
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(SmoothTool, ChangeBaseSize(11111111))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe("ChooseBrushShape", function()
		it("should set the current brushShape", function()
			local state = SmoothTool(nil, ChooseBrushShape("hello world"))

			expect(state).to.be.ok()
			expect(state.brushShape).to.be.ok()
			expect(state.brushShape).to.equal("hello world")
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(SmoothTool, ChooseBrushShape("foo"))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe("ChangeHeight", function()
		it("should set the current height", function()
			local state = SmoothTool(nil, ChangeHeight(99999999))

			expect(state).to.be.ok()
			expect(state.height).to.be.ok()
			expect(state.height).to.equal(99999999)
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(SmoothTool, ChangeHeight(11111111))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe("ChangePivot", function()
		it("should set the current pivot", function()
			local state = SmoothTool(nil, ChangePivot("hello world"))

			expect(state).to.be.ok()
			expect(state.pivot).to.be.ok()
			expect(state.pivot).to.equal("hello world")
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(SmoothTool, ChangePivot("foo"))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe("SetPlaneLock", function()
		it("should set the current planeLock", function()
			local state = SmoothTool(nil, SetPlaneLock(PlaneLockType.Auto))

			expect(state).to.be.ok()
			expect(state.planeLock).to.be.ok()
			expect(state.planeLock).to.equal(PlaneLockType.Auto)
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(SmoothTool, SetPlaneLock(PlaneLockType.Auto))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe("SetEditPlaneMode", function()
		it("should set the current editPlaneMode", function()
			local state = SmoothTool(nil, SetEditPlaneMode(true))

			expect(state).to.be.ok()
			expect(state.editPlaneMode).to.be.ok()
			expect(state.editPlaneMode).to.equal(true)
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(SmoothTool, SetEditPlaneMode(true))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe("SetPlaneCFrame", function()
		it("should set the current planeCFrame", function()
			local frame = CFrame.new()
			local state = SmoothTool(nil, SetPlaneCFrame(frame))

			expect(state).to.be.ok()
			expect(state.planeCFrame).to.be.ok()
			expect(state.planeCFrame).to.equal(frame)
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(SmoothTool, SetPlaneCFrame(CFrame.new()))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe("SetSnapToVoxels", function()
		it("should set the current snapToVoxels", function()
			local state = SmoothTool(nil, SetSnapToVoxels(true))

			expect(state).to.be.ok()
			expect(state.snapToVoxels).to.be.ok()
			expect(state.snapToVoxels).to.equal(true)
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(SmoothTool, SetSnapToVoxels(true))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe("ChangeStrength", function()
		it("should set the current strength", function()
			local state = SmoothTool(nil, ChangeStrength(999999))

			expect(state).to.be.ok()
			expect(state.strength).to.be.ok()
			expect(state.strength).to.equal(999999)
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(SmoothTool, ChangeStrength(1111111))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe("SetBaseSizeHeightLocked", function()
		it("should set base size and height locked", function()
			local state = SmoothTool(nil, SetBaseSizeHeightLocked(false))

			expect(state).to.be.ok()
			expect(state.baseSizeHeightLocked).to.be.ok()
			expect(state.baseSizeHeightLocked).to.equal(false)
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(SmoothTool, SetBaseSizeHeightLocked(false))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe("SetIgnoreWater", function()
		it("should set the current ignoreWater", function()
			local state = SmoothTool(nil, SetIgnoreWater(true))

			expect(state).to.be.ok()
			expect(state.ignoreWater).to.be.ok()
			expect(state.ignoreWater).to.equal(true)
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(SmoothTool, SetIgnoreWater(true))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe("SetIgnoreParts", function()
		it("should set the current ignoreParts", function()
			local state = SmoothTool(nil, SetIgnoreParts(true))

			expect(state).to.be.ok()
			expect(state.ignoreParts).to.be.ok()
			expect(state.ignoreParts).to.equal(true)
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(SmoothTool, SetIgnoreParts(true))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)
end
