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
		sourceKind = "CoreGui",
		targets = {
			UniversalAppRoact = {
				id = "UniversalAppRoact",
				name = "UniversalApp roact tree",
				fromBridgeId = 20,
				sourceName = "UniversalApp"
			},
			UniversalAppRodux = {
				id = "UniversalAppRodux",
				name = "UniversalApp rodux store",
				fromBridgeId = 20,
				sourceName = "UniversalApp"
			}
		}
	}
end

local function getToolboxTargets()
	return {
		sourceId = 2,
		sourceKind = "Plugin",
		targets = {
			ToolboxRoact = {
				id = "ToolboxRoact",
				name = "Toolbox roact tree",
				fromBridgeId = 25,
				sourceName = "Toolbox"
			},
			ToolboxRodux = {
				id = "ToolboxRodux",
				name = "Toolbox rodux store",
				fromBridgeId = 25,
				sourceName = "Toolbox"
			}
		}
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
			local serialized = pretty(state.targets, {depth = 100, multiline = true, omit = {"GetChildren", "GetDebugId"}})
			expect(serialized).to.equal([[{
	{
		Children = {
			2 = {
				Children = {
					ToolboxRoact = {
						Children = {},
						ClassName = "Frame",
						Id = "ToolboxRoact",
						Name = "Toolbox roact tree"
					},
					ToolboxRodux = {
						Children = {},
						ClassName = "Frame",
						Id = "ToolboxRodux",
						Name = "Toolbox rodux store"
					}
				},
				ClassName = "Plugin"
			}
		},
		ClassName = "Folder",
		Name = "BuiltInPlugins"
	},
	{
		Children = {
			5 = {
				Children = {
					UniversalAppRoact = {
						Children = {},
						ClassName = "Frame",
						Id = "UniversalAppRoact",
						Name = "UniversalApp roact tree"
					},
					UniversalAppRodux = {
						Children = {},
						ClassName = "Frame",
						Id = "UniversalAppRodux",
						Name = "UniversalApp rodux store"
					}
				},
				ClassName = "Plugin"
			}
		},
		ClassName = "CoreGui",
		Name = "CoreGui"
	},
	{
		Children = {},
		ClassName = "ReplicatedStorage",
		Name = "Libraries"
	},
	{
		Children = {},
		ClassName = "CorePackages",
		Name = "StandaloneBuiltInPlugins"
	}
}]])
		end)

		describe("ClearTargets", function()
			it("should update state as expected", function()
				local store = Rodux.Store.new(TargetReducer)
				local state = TargetReducer(store:getState(), AddTargets(getUniversalAppTargets()))
				state = TargetReducer(state, AddTargets(getToolboxTargets()))
				state = TargetReducer(state, ClearTargets())
				local serialized = pretty(state.targets, {depth = 100, multiline = true, omit = {"GetChildren", "GetDebugId"}})
				expect(serialized).to.equal([[{
	{
		Children = {},
		ClassName = "Folder",
		Name = "BuiltInPlugins"
	},
	{
		Children = {},
		ClassName = "CoreGui",
		Name = "CoreGui"
	},
	{
		Children = {},
		ClassName = "ReplicatedStorage",
		Name = "Libraries"
	},
	{
		Children = {},
		ClassName = "CorePackages",
		Name = "StandaloneBuiltInPlugins"
	}
}]])
			end)
		end)
	end)
end