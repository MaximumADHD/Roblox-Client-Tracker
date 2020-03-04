local Plugin = script.Parent.Parent.Parent
local Action = require(Plugin.Packages.Action)

return Action(script.Name, function(pluginId)
	assert(type(pluginId) == "string", "Expected pluginId to be a string")

	return {
		pluginId = pluginId
	}
end)