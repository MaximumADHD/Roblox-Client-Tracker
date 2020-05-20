local Plugin = script.Parent.Parent.Parent

local Framework = Plugin.Packages.Framework
local Action = require(Framework.Util.Action)

return Action(script.Name, function(relativeTo)
	assert(type(relativeTo) == "string", "Expected relativeTo to be a string")
	return {
		relativeTo = relativeTo,
	}
end)
