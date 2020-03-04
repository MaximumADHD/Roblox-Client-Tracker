local Plugin = script.Parent.Parent.Parent
local Action = require(Plugin.Packages.Action)

return Action(script.Name, function(pluginId)
	return {
		pluginId = pluginId,
	}
end)