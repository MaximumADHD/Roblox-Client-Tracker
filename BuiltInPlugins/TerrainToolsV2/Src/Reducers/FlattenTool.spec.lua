local Plugin = script.Parent.Parent.Parent
local TestHelpers = Plugin.Src.TestHelpers
local Packages = Plugin.Packages

local ReducerToolFlatten = require(script.Parent.ReducerToolFlatten)
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
local SetAutoMaterial = require(Actions.SetAutoMaterial)
local ChooseFlattenMode = require(Actions.ChooseFlattenMode)
local ChangePlanePositionY = require(Actions.ChangePlanePositionY)
local SetHeightPicker = require(Actions.SetHeightPicker)

return function()
	it("should return its expected default state", function()
		local r = Rodux.Store.new(ReducerToolFlatten)
		expect(r:getState()).to.be.ok()
		expect(r:getState().baseSize).to.equal(20)
		expect(r:getState().brushShape).to.equal("Circle")
		expect(r:getState().flattenMode).to.equal("Both")
		expect(r:getState().height).to.equal(20)
		expect(r:getState().ignoreWater).to.equal(false)
		expect(r:getState().pivot).to.equal("Cen")
		expect(r:getState().planeLock).to.equal(false)
		expect(r:getState().snapToGrid).to.equal(false)
		expect(r:getState().strength).to.equal(20)
		expect(r:getState().autoMaterial).to.equal(true)

	end)

	describe("ChangeBaseSize", function()
		it("should set the current baseSize", function()
			local state = ReducerToolFlatten(nil, ChangeBaseSize(99999999))

			expect(state).to.be.ok()
			expect(state.baseSize).to.be.ok()
			expect(state.baseSize).to.equal(99999999)
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(ReducerToolFlatten, ChangeBaseSize(11111111))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe("ChooseBrushShape", function()
		it("should set the current brushShape", function()
			local state = ReducerToolFlatten(nil, ChooseBrushShape("hello world"))

			expect(state).to.be.ok()
			expect(state.brushShape).to.be.ok()
			expect(state.brushShape).to.equal("hello world")
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(ReducerToolFlatten, ChooseBrushShape("foo"))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe("ChooseFlattenMode", function()
		it("should set the current flattenMode", function()
			local state = ReducerToolFlatten(nil, ChooseFlattenMode("hello world"))

			expect(state).to.be.ok()
			expect(state.flattenMode).to.be.ok()
			expect(state.flattenMode).to.equal("hello world")
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(ReducerToolFlatten, ChooseFlattenMode("foo"))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe("ChangeHeight", function()
		it("should set the current height", function()
			local state = ReducerToolFlatten(nil, ChangeHeight(99999999))

			expect(state).to.be.ok()
			expect(state.height).to.be.ok()
			expect(state.height).to.equal(99999999)
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(ReducerToolFlatten, ChangeHeight(11111111))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe("ChangePlanePositionY", function()
		it("should set the current plane position Y", function()
			local state = ReducerToolFlatten(nil, ChangePlanePositionY(99999999))

			expect(state).to.be.ok()
			expect(state.planePositionY).to.be.ok()
			expect(state.planePositionY).to.equal(99999999)
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(ReducerToolFlatten, ChangePlanePositionY(11111111))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe("SetIgnoreWater", function()
		it("should set the current ignoreWater", function()
			local state = ReducerToolFlatten(nil, SetIgnoreWater(true))

			expect(state).to.be.ok()
			expect(state.ignoreWater).to.be.ok()
			expect(state.ignoreWater).to.equal(true)
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(ReducerToolFlatten, SetIgnoreWater(true))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe("ChangePivot", function()
		it("should set the current pivot", function()
			local state = ReducerToolFlatten(nil, ChangePivot("hello world"))

			expect(state).to.be.ok()
			expect(state.pivot).to.be.ok()
			expect(state.pivot).to.equal("hello world")
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(ReducerToolFlatten, ChangePivot("foo"))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe("SetPlaneLock", function()
		it("should set the current planeLock", function()
			local state = ReducerToolFlatten(nil, SetPlaneLock(true))

			expect(state).to.be.ok()
			expect(state.planeLock).to.be.ok()
			expect(state.planeLock).to.equal(true)
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(ReducerToolFlatten, SetPlaneLock(true))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe("SetSnapToGrid", function()
		it("should set the current snapToGrid", function()
			local state = ReducerToolFlatten(nil, SetSnapToGrid(true))

			expect(state).to.be.ok()
			expect(state.snapToGrid).to.be.ok()
			expect(state.snapToGrid).to.equal(true)
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(ReducerToolFlatten, SetSnapToGrid(true))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe("ChangeStrength", function()
		it("should set the current strength", function()
			local state = ReducerToolFlatten(nil, ChangeStrength(999999))

			expect(state).to.be.ok()
			expect(state.strength).to.be.ok()
			expect(state.strength).to.equal(999999)
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(ReducerToolFlatten, ChangeStrength(1111111))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)


	describe("SetHeightPicker", function()
		it("should set the current height picker", function()
			local state = ReducerToolFlatten(nil, SetHeightPicker(true))

			expect(state).to.be.ok()
			expect(state.heightPicker).to.be.ok()
			expect(state.heightPicker).to.equal(true)
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(ReducerToolFlatten, SetHeightPicker(true))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)
end