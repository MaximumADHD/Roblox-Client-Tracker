local Plugin = script.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local Action = Framework.Util.Action

return Action(script.Name, function(axes)
	assert(type(axes) == "table", "Expected axes to be a table")
	assert(type(axes.X) == "boolean", "Expected X to be a boolean")
	assert(type(axes.Y) == "boolean", "Expected Y to be a boolean")
	assert(type(axes.Z) == "boolean", "Expected Z to be a boolean")

	return {
		enabledAxes = {
			X = axes.X,
			Y = axes.Y,
			Z = axes.Z,
		}
	}
end)
