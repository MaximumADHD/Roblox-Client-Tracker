local Plugin = script.Parent.Parent.Parent

local Framework = Plugin.Packages.Framework
local Action = require(Framework.Util.Action)

return Action(script.Name, function(statusMessage)
	assert(type(statusMessage) == "string")
	return {
		statusMessage = statusMessage,
	}
end)