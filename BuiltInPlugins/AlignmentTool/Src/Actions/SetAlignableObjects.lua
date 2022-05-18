local Plugin = script.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local Action = Framework.Util.Action

return Action(script.Name, function(objects)
	assert(type(objects) == "table", "Expected objects to be a table")

	return {
		alignableObjects = objects or {},
	}
end)
