local Plugin = script.Parent.Parent.Parent
local Action = require(Plugin.Packages.Action)

return Action(script.Name, function(pluginId, statusCode, message)
	assert(type(pluginId) == "string", "Expected pluginId to be a string")
	assert(type(statusCode) == "number", "Expected statusCode to be a number")
	assert(type(message) == "string", "Expected message to be a string")

	return {
		pluginId = pluginId,
		statusCode = statusCode,
		message = message,
	}
end)