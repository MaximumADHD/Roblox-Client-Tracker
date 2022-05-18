local Plugin = script.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local Action = Framework.Util.Action

return Action(script.Name, function(relativeTo)
	assert(type(relativeTo) == "string", "Expected relativeTo to be a string")
	return {
		relativeTo = relativeTo,
	}
end)
