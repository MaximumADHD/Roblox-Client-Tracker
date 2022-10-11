local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)

local TargetReducer = require(script.Parent.TargetReducer)

local Dash = require(Plugin.Packages.Dash)
local pretty = Dash.pretty

local Actions = Plugin.Src.Actions
local AddTargets = require(Actions.AddTargets)
local ClearTargets = require(Actions.ClearTargets)

local function getUniversalAppTargets()
	return {
		sourceId = 5,
		sourceName = "UniversalApp",
		sourceKind = "CoreGui",
		targets = {
			UniversalAppRoact = {
				id = "UniversalAppRoact",
				name = "UniversalApp roact tree",
				fromBridgeId = 20,
				sourceName = "UniversalApp",
			},
			UniversalAppRodux = {
				id = "UniversalAppRodux",
				name = "UniversalApp rodux store",
				fromBridgeId = 20,
				sourceName = "UniversalApp",
			},
		},
	}
end

local function getToolboxTargets()
	return {
		sourceId = 2,
		sourceName = "Toolbox",
		sourceKind = "Plugin",
		targets = {
			ToolboxRoact = {
				id = "ToolboxRoact",
				name = "Toolbox roact tree",
				fromBridgeId = 25,
				sourceName = "Toolbox",
			},
			ToolboxRodux = {
				id = "ToolboxRodux",
				name = "Toolbox rodux store",
				fromBridgeId = 25,
				sourceName = "Toolbox",
			},
		},
	}
end

return function()
	it("should return its expected default state", function()
		local store = Rodux.Store.new(TargetReducer)
		expect(store:getState()).to.be.ok()
	end)
	describe("AddTargets", function()
		it("should update state as expected", function()
			local store = Rodux.Store.new(TargetReducer)
			local state = TargetReducer(store:getState(), AddTargets(getUniversalAppTargets()))
			state = TargetReducer(state, AddTargets(getToolboxTargets()))
			local serialized =
				pretty(state.targets, { depth = 100, multiline = true, omit = { "GetChildren", "GetDebugId" } })
			expect(serialized).to.equal([[{
	ToolboxRoact = {
		Children = {},
		ClassName = "Plugin",
		Id = "ToolboxRoact",
		Name = "Toolbox - Toolbox roact tree"
	},
	ToolboxRodux = {
		Children = {},
		ClassName = "Plugin",
		Id = "ToolboxRodux",
		Name = "Toolbox - Toolbox rodux store"
	},
	UniversalAppRoact = {
		Children = {},
		ClassName = "CoreGui",
		Id = "UniversalAppRoact",
		Name = "UniversalApp - UniversalApp roact tree"
	},
	UniversalAppRodux = {
		Children = {},
		ClassName = "CoreGui",
		Id = "UniversalAppRodux",
		Name = "UniversalApp - UniversalApp rodux store"
	}
}]])
		end)

		describe("ClearTargets", function()
			it("should update state as expected", function()
				local store = Rodux.Store.new(TargetReducer)
				local state = TargetReducer(store:getState(), AddTargets(getUniversalAppTargets()))
				state = TargetReducer(state, AddTargets(getToolboxTargets()))
				state = TargetReducer(state, ClearTargets())
				local serialized =
					pretty(state.targets, { depth = 100, multiline = true, omit = { "GetChildren", "GetDebugId" } })
				expect(serialized).to.equal([[{}]])
			end)
		end)
	end)
end
