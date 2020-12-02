local Plugin = script.Parent.Parent.Parent

local getFFlagAlignInLocalSpace = require(Plugin.Src.Flags.getFFlagAlignInLocalSpace)

local Framework = Plugin.Packages.Framework
local Action = require(Framework.Util.Action)

return Action(script.Name, function(axes)
	assert(type(axes) == "table", "Expected axes to be a table")
	if getFFlagAlignInLocalSpace() then
		assert(type(axes.X) == "boolean", "Expected X to be a boolean")
		assert(type(axes.Y) == "boolean", "Expected Y to be a boolean")
		assert(type(axes.Z) == "boolean", "Expected Z to be a boolean")
	else
		assert(type(axes.WorldX) == "boolean", "Expected WorldX to be a boolean")
		assert(type(axes.WorldY) == "boolean", "Expected WorldY to be a boolean")
		assert(type(axes.WorldZ) == "boolean", "Expected WorldZ to be a boolean")
	end

	return {
		enabledAxes = getFFlagAlignInLocalSpace() and {
			X = axes.X,
			Y = axes.Y,
			Z = axes.Z,
		} or {
			WorldX = axes.WorldX,
			WorldY = axes.WorldY,
			WorldZ = axes.WorldZ,
		}
	}
end)
