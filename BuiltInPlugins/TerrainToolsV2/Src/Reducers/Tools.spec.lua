local Plugin = script.Parent.Parent.Parent
local TestHelpers = Plugin.Src.TestHelpers
local Packages = Plugin.Packages

local Tools = require(script.Parent.Tools)
local testImmutability = require(TestHelpers.testImmutability)
local Rodux = require(Packages.Rodux)

local Actions = Plugin.Src.Actions
local ChangeTool = require(Actions.ChangeTool)

local TerrainEnums = require(Plugin.Src.Util.TerrainEnums)
local ToolId = TerrainEnums.ToolId

return function()
	it("should return its expected default state", function()
		local r = Rodux.Store.new(Tools)
		expect(r:getState()).to.be.ok()
		expect(r:getState().currentTool).to.equal(ToolId.None)
		expect(r:getState().activator).to.equal(nil)
	end)

	describe("ChangeTool", function()
		it("should set currentTool", function()
			local state = Tools(nil, ChangeTool("hello world"))

			expect(state).to.be.ok()
			expect(state.currentTool).to.be.ok()
			expect(state.currentTool).to.equal("hello world")
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(Tools, ChangeTool("foo"))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)
end
