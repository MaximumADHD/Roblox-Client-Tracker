local Plugin = script.Parent.Parent.Parent

local Framework = Plugin.Packages.Framework
local Action = require(Framework.Util.Action)

return Action(script.Name, function(enabled)
	assert(type(enabled) == "boolean", "Expected enabled to be a boolean")

	return {
		toolEnabled = enabled,
	}
end)
