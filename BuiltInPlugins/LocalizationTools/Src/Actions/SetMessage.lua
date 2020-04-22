local Plugin = script.Parent.Parent.Parent
local Action = require(Plugin.Packages.Framework.Util).Action

return Action(script.Name, function(message)
	assert(type(message) == "string", "Expected message to be a string")
	return {
		message = message,
	}
end)