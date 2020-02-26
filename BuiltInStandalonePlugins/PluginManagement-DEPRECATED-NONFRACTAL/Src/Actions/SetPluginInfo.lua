local Plugin = script.Parent.Parent.Parent
local Action = require(Plugin.Packages.Action)

return Action(script.Name, function(plugins, data)
	return {
		plugins = plugins,
		data = data,
	}
end)
