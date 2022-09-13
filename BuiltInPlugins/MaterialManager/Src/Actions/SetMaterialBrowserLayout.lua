local Plugin = script.Parent.Parent.Parent
local _Types = require(Plugin.Src.Types)
local Framework = require(Plugin.Packages.Framework)
local Util = Framework.Util
local Action = Util.Action

export type Payload = {
	MaterialBrowserLayout: _Types.MaterialBrowserLayout,
}

return Action(script.Name, function(materialBrowserLayout: _Types.MaterialBrowserLayout): Payload
	assert(
		type(materialBrowserLayout) == "table",
		("Expected materialBrowserLayout to be a table, received %s"):format(type(materialBrowserLayout))
	)
	return {
		MaterialBrowserLayout = materialBrowserLayout,
	}
end)
