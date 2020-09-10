local Plugin = script.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local Rodux = require(Plugin.Packages.Rodux)

local testImmutability = Framework.TestHelpers.testImmutability

local Tools = require(script.Parent.Tools)

local TerrainEnums = require(Plugin.Src.Util.TerrainEnums)
local TabId = TerrainEnums.TabId
local ToolId = TerrainEnums.ToolId

local Actions = Plugin.Src.Actions
local ChangeTab = require(Actions.ChangeTab)
local ChangeTool = require(Actions.ChangeTool)

return function()
	it("should return its expected default state", function()
		local r = Rodux.Store.new(Tools)
		expect(r:getState()).to.be.ok()
		expect(r:getState().currentTab).to.equal(TabId.Create)
		expect(r:getState().currentTool).to.equal(ToolId.None)
		expect(type(r:getState().lastToolPerTab)).to.equal("table")
		expect(next(r:getState().lastToolPerTab)).to.never.be.ok()
	end)

	describe("ChangeTab", function()
		it("should set the current tab", function()
			local state = Tools(nil, ChangeTab(TabId.Region))
			expect(state).to.be.ok()
			expect(state.currentTab).to.be.ok()
			expect(state.currentTab).to.equal(TabId.Region)
		end)

		it("should set the current tool to none when first changing tab", function()
			local state = Tools(nil, ChangeTab(TabId.Region))
			expect(state).to.be.ok()
			expect(state.currentTool).to.be.ok()
			expect(state.currentTool).to.equal(ToolId.None)
		end)

		it("should restore your selected tool from the new tab", function()
			-- Swap from create to region tab and select "select" tool
			local state = Tools(nil, ChangeTab(TabId.Region))
			state = Tools(state, ChangeTool(ToolId.Select))

			-- Change back to create tab
			state = Tools(state, ChangeTab(TabId.Create))
			expect(state.currentTool).to.equal(ToolId.None)

			-- Change to region tab, "select" tool should be selected
			state = Tools(state, ChangeTab(TabId.Region))
			expect(state.currentTool).to.be.ok()
			expect(state.currentTool).to.equal(ToolId.Select)
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(Tools, ChangeTab(TabId.Region))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe("ChangeTool", function()
		it("should set currentTool", function()
			local state = Tools(nil, ChangeTool(ToolId.Generate))
			expect(state).to.be.ok()
			expect(state.currentTool).to.be.ok()
			expect(state.currentTool).to.equal(ToolId.Generate)
		end)

		it("should update lastToolPerTab", function()
			local state = Tools(nil, ChangeTool(ToolId.Generate))
			expect(state).to.be.ok()
			expect(state.lastToolPerTab).to.be.ok()
			expect(state.lastToolPerTab[TabId.Create]).to.equal(ToolId.Generate)
		end)

		it("should deselect when selecting twice", function()
			local state = Tools(nil, ChangeTool(ToolId.Generate))
			state = Tools(state, ChangeTool(ToolId.Generate))
			expect(state).to.be.ok()
			expect(state.currentTool).to.be.ok()
			expect(state.currentTool).to.equal(ToolId.None)
			expect(state.lastToolPerTab).to.be.ok()
			expect(state.lastToolPerTab[TabId.Create]).to.equal(ToolId.None)
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(Tools, ChangeTool("foo"))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)
end
