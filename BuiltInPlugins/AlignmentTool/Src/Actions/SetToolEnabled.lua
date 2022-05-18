local Plugin = script.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local Action = Framework.Util.Action

return Action(script.Name, function(enabled)
	assert(type(enabled) == "boolean", "Expected enabled to be a boolean")

	return {
		toolEnabled = enabled,
	}
end)
