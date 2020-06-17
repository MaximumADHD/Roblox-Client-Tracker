--[[
	Sets the contents of the Components reducer.

	table components: A table of all component names and their documentation.
	table scripts: A table of all component ModuleScripts.
	table tests: A table of all component .spec ModuleScripts.
]]

local Plugin = script.Parent.Parent.Parent
local Util = require(Plugin.Packages.Framework).Util
local Action = Util.Action

return Action(script.Name, function(components, scripts, tests)
	return {
		components = components,
		scripts = scripts,
		tests = tests,
	}
end)
