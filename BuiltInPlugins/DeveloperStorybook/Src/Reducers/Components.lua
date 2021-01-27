--[[
	Holds on to a reference of components in the DevFramework.
	Also stores the ModuleScript instances for components and their tests.
]]

local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)

local SetComponents = require(Plugin.Src.Actions.SetComponents)

return Rodux.createReducer({
	Components = {},
	Scripts = {},
	Tests = {},
}, {
	[SetComponents.name] = function(_, action)
		return {
			Components = action.components,
			Scripts = action.scripts,
			Tests = action.tests,
		}
	end,
})
