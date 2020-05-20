local Plugin = script.Parent.Parent.Parent

local Framework = Plugin.Packages.Framework
local Action = require(Framework.Util.Action)

return Action(script.Name, function(axes)
	assert(type(axes) == "table", "Expected x to be a table")
	assert(type(axes.WorldX) == "boolean", "Expected WorldX to be a boolean")
	assert(type(axes.WorldY) == "boolean", "Expected WorldY to be a boolean")
	assert(type(axes.WorldZ) == "boolean", "Expected WorldZ to be a boolean")

	return {
		enabledAxes = {
			WorldX = axes.WorldX,
			WorldY = axes.WorldY,
			WorldZ = axes.WorldZ,
		}
	}
end)
