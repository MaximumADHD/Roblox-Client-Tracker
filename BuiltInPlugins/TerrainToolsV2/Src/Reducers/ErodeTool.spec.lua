local Plugin = script.Parent.Parent.Parent
local TestHelpers = Plugin.Src.TestHelpers
local Packages = Plugin.Packages

local Constants = require(Plugin.Src.Util.Constants)

local ErodeTool = require(script.Parent.ErodeTool)
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

return function()
	it("should return its expected default state", function()
		local r = Rodux.Store.new(ErodeTool)
		expect(r:getState()).to.be.ok()
		expect(r:getState().brushShape).to.equal("Sphere")
		expect(r:getState().baseSize).to.equal(6)

		expect(r:getState().height).to.equal(6)
		expect(r:getState().ignoreWater).to.equal(true)
		expect(r:getState().pivot).to.equal(Constants.PivotType.Center)
		expect(r:getState().planeLock).to.equal(false)
		expect(r:getState().snapToGrid).to.equal(false)
		expect(r:getState().strength).to.equal(1)

	end)

	describe("ChangeBaseSize", function()
		it("should set the current baseSize", function()
			local state = ErodeTool(nil, ChangeBaseSize(99999999))

			expect(state).to.be.ok()
			expect(state.baseSize).to.be.ok()
			expect(state.baseSize).to.equal(99999999)
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(ErodeTool, ChangeBaseSize(11111111))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe("ChooseBrushShape", function()
		it("should set the current brushShape", function()
			local state = ErodeTool(nil, ChooseBrushShape("hello world"))

			expect(state).to.be.ok()
			expect(state.brushShape).to.be.ok()
			expect(state.brushShape).to.equal("hello world")
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(ErodeTool, ChooseBrushShape("foo"))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe("ChangeHeight", function()
		it("should set the current height", function()
			local state = ErodeTool(nil, ChangeHeight(99999999))

			expect(state).to.be.ok()
			expect(state.height).to.be.ok()
			expect(state.height).to.equal(99999999)
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(ErodeTool, ChangeHeight(11111111))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe("SetIgnoreWater", function()
		it("should set the current ignoreWater", function()
			local state = ErodeTool(nil, SetIgnoreWater(true))

			expect(state).to.be.ok()
			expect(state.ignoreWater).to.be.ok()
			expect(state.ignoreWater).to.equal(true)
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(ErodeTool, SetIgnoreWater(true))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe("ChangePivot", function()
		it("should set the current pivot", function()
			local state = ErodeTool(nil, ChangePivot("hello world"))

			expect(state).to.be.ok()
			expect(state.pivot).to.be.ok()
			expect(state.pivot).to.equal("hello world")
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(ErodeTool, ChangePivot("foo"))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe("SetPlaneLock", function()
		it("should set the current planeLock", function()
			local state = ErodeTool(nil, SetPlaneLock(true))

			expect(state).to.be.ok()
			expect(state.planeLock).to.be.ok()
			expect(state.planeLock).to.equal(true)
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(ErodeTool, SetPlaneLock(true))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe("SetSnapToGrid", function()
		it("should set the current snapToGrid", function()
			local state = ErodeTool(nil, SetSnapToGrid(true))

			expect(state).to.be.ok()
			expect(state.snapToGrid).to.be.ok()
			expect(state.snapToGrid).to.equal(true)
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(ErodeTool, SetSnapToGrid(true))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe("ChangeStrength", function()
		it("should set the current strength", function()
			local state = ErodeTool(nil, ChangeStrength(999999))

			expect(state).to.be.ok()
			expect(state.strength).to.be.ok()
			expect(state.strength).to.equal(999999)
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(ErodeTool, ChangeStrength(1111111))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)
end