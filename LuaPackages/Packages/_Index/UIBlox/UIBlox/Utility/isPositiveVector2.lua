local UtilityRoot = script.Parent
local UIBloxRoot = UtilityRoot.Parent

local t = require(UIBloxRoot.Parent.t)

local positiveVector2 = t.intersection(
	t.Vector2,
	function(value)
		if value.X < 0 or value.Y < 0 then
			return false,
				("each component of the Vector2 must be >= 0; component values are: %d, %d"):format(value.X, value.Y)
		end

		return true
	end
)

return positiveVector2