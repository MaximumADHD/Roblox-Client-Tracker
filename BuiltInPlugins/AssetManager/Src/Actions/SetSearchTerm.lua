local Plugin = script.Parent.Parent.Parent

local Action = require(Plugin.Packages.Framework.Util.Action)

return Action(script.Name, function(searchTerm)
	assert(type(searchTerm) == "string", string.format("SetSearchTerm requires a string, not %s", type(searchTerm)))

	return {
		searchTerm = searchTerm,
	}
end)