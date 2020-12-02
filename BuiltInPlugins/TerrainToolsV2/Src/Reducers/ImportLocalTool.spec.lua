local Plugin = script.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local Rodux = require(Plugin.Packages.Rodux)

local testImmutability = Framework.TestHelpers.testImmutability

local ImportLocalTool = require(script.Parent.ImportLocalTool)

local Actions = Plugin.Src.Actions
local ChangePosition = require(Actions.ChangePosition)
local ChangeSize = require(Actions.ChangeSize)
local SelectColormap = require(Actions.SelectColormap)
local SelectHeightmap = require(Actions.SelectHeightmap)
local SetUseColorMap = require(Actions.SetUseColorMap)

return function()
	it("should return its expected default state", function()
		local r = Rodux.Store.new(ImportLocalTool)
		expect(r:getState()).to.be.ok()

		expect(r:getState().position).to.be.ok()
		expect(r:getState().position.X).to.equal(0)
		expect(r:getState().position.Y).to.equal(0)
		expect(r:getState().position.Z).to.equal(0)

		expect(r:getState().size).to.be.ok()
		expect(r:getState().size.X).to.equal(1024)
		expect(r:getState().size.Y).to.equal(512)
		expect(r:getState().size.Z).to.equal(1024)

		expect(r:getState().useColorMap).to.equal(false)
		expect(type(r:getState().heightmap)).to.equal("table")
		expect((next(r:getState().heightmap))).to.never.be.ok()
		expect(type(r:getState().colormap)).to.equal("table")
		expect((next(r:getState().colormap))).to.never.be.ok()
	end)

	describe("ChangePosition", function()
		it("should set position", function()
			local state = ImportLocalTool(nil, ChangePosition({
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
			local immutabilityPreserved = testImmutability(ImportLocalTool, ChangePosition({
				X = 321,
				Y = 654,
				Z = 987,
			}))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe("ChangeSize", function()
		it("should set size", function()
			local state = ImportLocalTool(nil, ChangeSize({
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
			local immutabilityPreserved = testImmutability(ImportLocalTool, ChangeSize({
				X = 123,
				Y = 456,
				Z = 789,
			}))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe("SetUseColorMap", function()
		it("should set useColorMap", function()
			local state = ImportLocalTool(nil, SetUseColorMap(false))

			expect(state).to.be.ok()
			expect(state.useColorMap).to.be.ok()
			expect(state.useColorMap).to.equal(false)
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(ImportLocalTool, SetUseColorMap(false))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe("SelectHeightmap", function()
		it("should select the heightmap", function()
			local heightmap = {file = "foo"}
			local state = ImportLocalTool(nil, SelectHeightmap(heightmap))

			expect(state).to.be.ok()
			expect(state.heightmap).to.be.ok()
			expect(state.heightmap).to.equal(heightmap)
		end)

		it("should be clearable", function()
			local heightmap = {file = "foo"}
			local state = ImportLocalTool(nil, SelectHeightmap(heightmap))

			expect(state.heightmap).to.equal(heightmap)
			state = ImportLocalTool(state, SelectHeightmap(nil))
			expect(state.heightmap).to.be.ok()
			expect(type(state.heightmap)).to.equal("table")
			expect((next(state.heightmap))).to.never.be.ok()
		end)

		it("should preserve immutability", function()
			local heightmap = {file = "foo"}
			local immutabilityPreserved = testImmutability(ImportLocalTool, SelectHeightmap(heightmap))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe("SelectColormap", function()
		it("should select the colormap", function()
			local colormap = {file = "foo"}
			local state = ImportLocalTool(nil, SelectColormap(colormap))

			expect(state).to.be.ok()
			expect(state.colormap).to.be.ok()
			expect(state.colormap).to.equal(colormap)
		end)

		it("should be clearable", function()
			local colormap = {file = "foo"}
			local state = ImportLocalTool(nil, SelectColormap(colormap))

			expect(state.colormap).to.equal(colormap)
			state = ImportLocalTool(state, SelectColormap(nil))
			expect(state.colormap).to.be.ok()
			expect(type(state.colormap)).to.equal("table")
			expect((next(state.colormap))).to.never.be.ok()
		end)

		it("should preserve immutability", function()
			local colormap = {file = "foo"}
			local immutabilityPreserved = testImmutability(ImportLocalTool, SelectColormap(colormap))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)
end
