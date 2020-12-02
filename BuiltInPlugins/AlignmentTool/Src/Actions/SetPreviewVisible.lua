local Plugin = script.Parent.Parent.Parent

local Framework = Plugin.Packages.Framework
local Action = require(Framework.Util.Action)

return Action(script.Name, function(visible)
	assert(type(visible) == "boolean", "Expected visible to be a boolean")
	return {
		visible = visible,
	}
end)
