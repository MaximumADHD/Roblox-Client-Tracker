local Plugin = script.Parent.Parent.Parent
local Action = require(Plugin.Packages.Action)

return Action(script.Name, function(permissions)
	assert(type(permissions) == "table", "Expected permissions to be a table")

	return {
		permissions = permissions,
	}
end)
