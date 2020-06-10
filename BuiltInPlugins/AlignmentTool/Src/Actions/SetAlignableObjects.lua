local Plugin = script.Parent.Parent.Parent

local Framework = Plugin.Packages.Framework
local Action = require(Framework.Util.Action)

return Action(script.Name, function(objects)
	assert(type(objects) == "table", "Expected objects to be a table")

	return {
		alignableObjects = objects or {},
	}
end)
