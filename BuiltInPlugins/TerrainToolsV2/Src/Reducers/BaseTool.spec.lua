local FFlagTerrainToolsGlobalState = game:GetFastFlag("TerrainToolsGlobalState")

local Plugin = script.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local Rodux = require(Plugin.Packages.Rodux)

local testImmutability = Framework.TestHelpers.testImmutability

local BaseTool = require(script.Parent.BaseTool)

local Constants = require(Plugin.Src.Util.Constants)
local TerrainEnums = require(Plugin.Src.Util.TerrainEnums)
local BrushShape = TerrainEnums.BrushShape
local PivotType = TerrainEnums.PivotType
local PlaneLockType = TerrainEnums.PlaneLockType
local FlattenMode = TerrainEnums.FlattenMode
local ReplaceMode = TerrainEnums.ReplaceMode

local Actions = Plugin.Src.Actions
local ChooseBrushShape = require(Actions.ChooseBrushShape)
local ChooseFlattenMode = require(Actions.ChooseFlattenMode)
local ChangeBaseSize = require(Actions.ChangeBaseSize)
local ChangeHeight = require(Actions.ChangeHeight)
local ChangePivot = require(Actions.ChangePivot)
local ChangePlanePositionY = require(Actions.ChangePlanePositionY)
local ChangePosition = require(Actions.ChangePosition)
local ChangeSize = require(Actions.ChangeSize)
local ChangeStrength = require(Actions.ChangeStrength)
local SetAutoMaterial = require(Actions.SetAutoMaterial)
local SetBaseSizeHeightLocked = require(Actions.SetBaseSizeHeightLocked)
local SetIgnoreWater = require(Actions.SetIgnoreWater)
local SetIgnoreParts = require(Actions.SetIgnoreParts)
local SetEditPlaneMode = require(Actions.SetEditPlaneMode)
local SetFixedPlane = require(Actions.SetFixedPlane)
local SetHeightPicker = require(Actions.SetHeightPicker)
local SetMaterial = require(Actions.SetMaterial)
local SetPlaneCFrame = require(Actions.SetPlaneCFrame)
local SetPlaneLock = require(Actions.SetPlaneLock)
local SetPlaneLockActive = require(Actions.SetPlaneLockActive)
local SetReplaceMode = require(Actions.SetReplaceMode)
local SetSnapToVoxels = require(Actions.SetSnapToVoxels)
local SetSourceMaterial = require(Actions.SetSourceMaterial)
local SetTargetMaterial = require(Actions.SetTargetMaterial)

if FFlagTerrainToolsGlobalState then
	return function()
		it("should return its expected default state", function()
			local r = Rodux.Store.new(BaseTool)
			expect(r:getState()).to.be.ok()
			expect(r:getState().brushShape).to.equal(BrushShape.Sphere)
			expect(r:getState().baseSize).to.equal(Constants.INITIAL_BRUSH_SIZE)
			expect(r:getState().height).to.equal(Constants.INITIAL_BRUSH_SIZE)
			expect(r:getState().baseSizeHeightLocked).to.equal(true)
			expect(r:getState().pivot).to.equal(PivotType.Center)
			expect(r:getState().planeLock).to.equal(PlaneLockType.Auto)
			expect(r:getState().editPlaneMode).to.equal(false)
			expect(r:getState().planeCFrame).to.equal(nil)
			expect(r:getState().planeLockActive).to.equal(true)
			expect(r:getState().snapToVoxels).to.equal(false)
			expect(r:getState().ignoreWater).to.equal(false)
			expect(r:getState().ignoreParts).to.equal(true)
			expect(r:getState().autoMaterial).to.equal(false)
			expect(r:getState().material).to.equal(Enum.Material.Grass)
			expect(r:getState().position).to.be.ok()
			expect(r:getState().position.X).to.equal(0)
			expect(r:getState().position.Y).to.equal(0)
			expect(r:getState().position.Z).to.equal(0)

			expect(r:getState().size).to.be.ok()
			expect(r:getState().size.X).to.equal(1024)
			expect(r:getState().size.Y).to.equal(512)
			expect(r:getState().size.Z).to.equal(1024)
			expect(r:getState().strength).to.equal(1)

			expect(r:getState().planePositionY).to.equal(30)
			expect(r:getState().heightPicker).to.equal(false)
			expect(r:getState().flattenMode).to.equal(FlattenMode.Both)
			expect(r:getState().fixedPlane).to.equal(false)

			expect(r:getState().SourceMaterial).to.equal(Enum.Material.Brick)
			expect(r:getState().TargetMaterial).to.equal(Enum.Material.CrackedLava)
			expect(r:getState().ReplaceMode).to.equal(ReplaceMode.Box)
		end)

		describe("ChangeBaseSize", function()
			it("should set the current baseSize", function()
				local state = BaseTool(nil, ChangeBaseSize(99999999))

				expect(state).to.be.ok()
				expect(state.baseSize).to.be.ok()
				expect(state.baseSize).to.equal(99999999)
			end)

			it("should preserve immutability", function()
				local immutabilityPreserved = testImmutability(BaseTool, ChangeBaseSize(11111111))
				expect(immutabilityPreserved).to.equal(true)
			end)
		end)

		describe("ChooseBrushShape", function()
			it("should set the current brushShape", function()
				local state = BaseTool(nil, ChooseBrushShape("hello world"))

				expect(state).to.be.ok()
				expect(state.brushShape).to.be.ok()
				expect(state.brushShape).to.equal("hello world")
			end)

			it("should preserve immutability", function()
				local immutabilityPreserved = testImmutability(BaseTool, ChooseBrushShape("foo"))
				expect(immutabilityPreserved).to.equal(true)
			end)
		end)

		describe("ChangeHeight", function()
			it("should set the current height", function()
				local state = BaseTool(nil, ChangeHeight(99999999))

				expect(state).to.be.ok()
				expect(state.height).to.be.ok()
				expect(state.height).to.equal(99999999)
			end)

			it("should preserve immutability", function()
				local immutabilityPreserved = testImmutability(BaseTool, ChangeHeight(11111111))
				expect(immutabilityPreserved).to.equal(true)
			end)
		end)

		describe("SetIgnoreWater", function()
			it("should set the current ignoreWater", function()
				local state = BaseTool(nil, SetIgnoreWater(true))

				expect(state).to.be.ok()
				expect(state.ignoreWater).to.be.ok()
				expect(state.ignoreWater).to.equal(true)
			end)

			it("should preserve immutability", function()
				local immutabilityPreserved = testImmutability(BaseTool, SetIgnoreWater(true))
				expect(immutabilityPreserved).to.equal(true)
			end)
		end)

		describe("SetIgnoreParts", function()
			it("should set the current ignoreParts", function()
				local state = BaseTool(nil, SetIgnoreParts(true))

				expect(state).to.be.ok()
				expect(state.ignoreParts).to.be.ok()
				expect(state.ignoreParts).to.equal(true)
			end)

			it("should preserve immutability", function()
				local immutabilityPreserved = testImmutability(BaseTool, SetIgnoreParts(true))
				expect(immutabilityPreserved).to.equal(true)
			end)
		end)

		describe("SetMaterial", function()
			it("should set the current material", function()
				local state = BaseTool(nil, SetMaterial(Enum.Material.Slate))

				expect(state).to.be.ok()
				expect(state.material).to.be.ok()
				expect(state.material).to.equal(Enum.Material.Slate)
			end)

			it("should preserve immutability", function()
				local immutabilityPreserved = testImmutability(BaseTool, SetMaterial(Enum.Material.Slate))
				expect(immutabilityPreserved).to.equal(true)
			end)
		end)

		describe("SetAutoMaterial", function()
			it("should set auto material", function()
				local state = BaseTool(nil, SetAutoMaterial(true))

				expect(state).to.be.ok()
				expect(state.autoMaterial).to.be.ok()
				expect(state.autoMaterial).to.equal(true)
			end)

			it("should preserve immutability", function()
				local immutabilityPreserved = testImmutability(BaseTool, SetAutoMaterial(true))
				expect(immutabilityPreserved).to.equal(true)
			end)
		end)

		describe("ChangePivot", function()
			it("should set the current pivot", function()
				local state = BaseTool(nil, ChangePivot("hello world"))

				expect(state).to.be.ok()
				expect(state.pivot).to.be.ok()
				expect(state.pivot).to.equal("hello world")
			end)

			it("should preserve immutability", function()
				local immutabilityPreserved = testImmutability(BaseTool, ChangePivot("foo"))
				expect(immutabilityPreserved).to.equal(true)
			end)
		end)

		describe("SetPlaneLock", function()
			it("should set the current planeLock", function()
				local state = BaseTool(nil, SetPlaneLock(PlaneLockType.Auto))

				expect(state).to.be.ok()
				expect(state.planeLock).to.be.ok()
				expect(state.planeLock).to.equal(PlaneLockType.Auto)
			end)

			it("should preserve immutability", function()
				local immutabilityPreserved = testImmutability(BaseTool, SetPlaneLock(PlaneLockType.Auto))
				expect(immutabilityPreserved).to.equal(true)
			end)
		end)

		describe("SetEditPlaneMode", function()
			it("should set the current editPlaneMode", function()
				local state = BaseTool(nil, SetEditPlaneMode(true))

				expect(state).to.be.ok()
				expect(state.editPlaneMode).to.be.ok()
				expect(state.editPlaneMode).to.equal(true)
			end)

			it("should preserve immutability", function()
				local immutabilityPreserved = testImmutability(BaseTool, SetEditPlaneMode(true))
				expect(immutabilityPreserved).to.equal(true)
			end)
		end)

		describe("SetPlaneCFrame", function()
			it("should set the current planeCFrame", function()
				local frame = CFrame.new()
				local state = BaseTool(nil, SetPlaneCFrame(frame))

				expect(state).to.be.ok()
				expect(state.planeCFrame).to.be.ok()
				expect(state.planeCFrame).to.equal(frame)
			end)

			it("should preserve immutability", function()
				local immutabilityPreserved = testImmutability(BaseTool, SetPlaneCFrame(CFrame.new()))
				expect(immutabilityPreserved).to.equal(true)
			end)
		end)

		describe("SetPlaneLockActive", function()
			it("should set the current planeLockActive", function()
				local state = BaseTool(nil, SetPlaneLockActive(false))

				expect(state).to.be.ok()
				expect(state.planeLockActive).to.be.ok()
				expect(state.planeLockActive).to.equal(false)
			end)

			it("should preserve immutability", function()
				local immutabilityPreserved = testImmutability(BaseTool, SetPlaneLockActive(false))
				expect(immutabilityPreserved).to.equal(true)
			end)
		end)

		describe("SetSnapToVoxels", function()
			it("should set the current snapToVoxels", function()
				local state = BaseTool(nil, SetSnapToVoxels(true))

				expect(state).to.be.ok()
				expect(state.snapToVoxels).to.be.ok()
				expect(state.snapToVoxels).to.equal(true)
			end)

			it("should preserve immutability", function()
				local immutabilityPreserved = testImmutability(BaseTool, SetSnapToVoxels(true))
				expect(immutabilityPreserved).to.equal(true)
			end)
		end)

		describe("SetBaseSizeHeightLocked", function()
			it("should set base size and height locked", function()
				local state = BaseTool(nil, SetBaseSizeHeightLocked(false))

				expect(state).to.be.ok()
				expect(state.baseSizeHeightLocked).to.be.ok()
				expect(state.baseSizeHeightLocked).to.equal(false)
			end)

			it("should preserve immutability", function()
				local immutabilityPreserved = testImmutability(BaseTool, SetBaseSizeHeightLocked(false))
				expect(immutabilityPreserved).to.equal(true)
			end)
		end)

		describe("ChangePosition", function()
			it("should set position", function()
				local state = BaseTool(nil, ChangePosition({
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
				local immutabilityPreserved = testImmutability(BaseTool, ChangePosition({
					X = 321,
					Y = 654,
					Z = 987,
				}))
				expect(immutabilityPreserved).to.equal(true)
			end)
		end)

		describe("ChangeSize", function()
			it("should set size", function()
				local state = BaseTool(nil, ChangeSize({
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
				local immutabilityPreserved = testImmutability(BaseTool, ChangeSize({
					X = 123,
					Y = 456,
					Z = 789,
				}))
				expect(immutabilityPreserved).to.equal(true)
			end)
		end)

		describe("ChangeStrength", function()
			it("should set size", function()
				local state = BaseTool(nil, ChangeStrength(0.5))

				expect(state).to.be.ok()
				expect(state.strength).to.be.ok()
				expect(state.strength).to.equal(0.5)
			end)

			it("should preserve immutability", function()
				local immutabilityPreserved = testImmutability(BaseTool, ChangeStrength(0.5))
				expect(immutabilityPreserved).to.equal(true)
			end)
		end)

		describe("ChangePlanePositionY", function()
			it("should set PlanePosition", function()
				local state = BaseTool(nil, ChangePlanePositionY(12345))
				expect(state).to.be.ok()
				expect(state.planePositionY).to.equal(12345)
			end)

			it("should preserve immutability", function()
				local immutabilityPreserved = testImmutability(BaseTool, ChangePlanePositionY(12345))
				expect(immutabilityPreserved).to.equal(true)
			end)
		end)

		describe("SetHeightPicker", function()
			it("should set PlanePosition", function()
				local state = BaseTool(nil, SetHeightPicker(true))
				expect(state).to.be.ok()
				expect(state.heightPicker).to.equal(true)
			end)

			it("should preserve immutability", function()
				local immutabilityPreserved = testImmutability(BaseTool, SetHeightPicker(true))
				expect(immutabilityPreserved).to.equal(true)
			end)
		end)

		describe("SetFixedPlane", function()
			it("should set the current fixedPlane", function()
				local state = BaseTool(nil, SetFixedPlane(true))

				expect(state).to.be.ok()
				expect(state.fixedPlane).to.be.ok()
				expect(state.fixedPlane).to.equal(true)
			end)

			it("should preserve immutability", function()
				local immutabilityPreserved = testImmutability(BaseTool, SetFixedPlane(true))
				expect(immutabilityPreserved).to.equal(true)
			end)
		end)

		describe("ChooseFlattenMode", function()
			it("should set the current flattenMode", function()
				local state = BaseTool(nil, ChooseFlattenMode("hello world"))

				expect(state).to.be.ok()
				expect(state.flattenMode).to.be.ok()
				expect(state.flattenMode).to.equal("hello world")
			end)

			it("should preserve immutability", function()
				local immutabilityPreserved = testImmutability(BaseTool, ChooseFlattenMode("foo"))
				expect(immutabilityPreserved).to.equal(true)
			end)
		end)

		describe("SetReplaceMode", function()
			it("should set the current replaceMode", function()
				local state = BaseTool(nil, SetReplaceMode(ReplaceMode.Brush))

				expect(state).to.be.ok()
				expect(state.ReplaceMode).to.be.ok()
				expect(state.ReplaceMode).to.equal(ReplaceMode.Brush)
			end)

			it("should preserve immutability", function()
				local immutabilityPreserved = testImmutability(BaseTool, SetReplaceMode(ReplaceMode.Brush))
				expect(immutabilityPreserved).to.equal(true)
			end)
		end)

		describe("SetSourceMaterial", function()
			it("should set the current source", function()
				local state = BaseTool(nil, SetSourceMaterial(Enum.Material.Grass))

				expect(state).to.be.ok()
				expect(state.SourceMaterial).to.be.ok()
				expect(state.SourceMaterial).to.equal(Enum.Material.Grass)
			end)

			it("should preserve immutability", function()
				local immutabilityPreserved = testImmutability(BaseTool, SetSourceMaterial(Enum.Material.Grass))
				expect(immutabilityPreserved).to.equal(true)
			end)
		end)

		describe("SetTargetMaterial", function()
			it("should set the current target", function()
				local state = BaseTool(nil, SetTargetMaterial(Enum.Material.Grass))

				expect(state).to.be.ok()
				expect(state.TargetMaterial).to.be.ok()
				expect(state.TargetMaterial).to.equal(Enum.Material.Grass)
			end)

			it("should preserve immutability", function()
				local immutabilityPreserved = testImmutability(BaseTool, SetTargetMaterial(Enum.Material.Grass))
				expect(immutabilityPreserved).to.equal(true)
			end)
		end)
	end
end

return function()
	it("should return its expected default state", function()
		local r = Rodux.Store.new(BaseTool)
		expect(r:getState().planeLockActive).to.equal(true)
	end)

	describe("SetPlaneLockActive", function()
		it("should set the current planeLockActive", function()
			local state = BaseTool(nil, SetPlaneLockActive(false))

			expect(state).to.be.ok()
			expect(state.planeLockActive).to.be.ok()
			expect(state.planeLockActive).to.equal(false)
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(BaseTool, SetPlaneLockActive(false))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)
end
