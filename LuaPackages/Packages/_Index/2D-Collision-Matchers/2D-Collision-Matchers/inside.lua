local toRect = require(script.Parent.toRect)
local returnValue = require(script.Parent.returnValue)

local function isPointInside(vector2, rect)
	return vector2.X >= rect.Min.X and vector2.X <= rect.Max.X
		and vector2.Y >= rect.Min.Y and vector2.Y <= rect.Max.Y
end

return function(a, b)
	local aRect = toRect(a)
	local bRect = toRect(b)

	return returnValue(
		isPointInside(aRect.Min, bRect) and isPointInside(aRect.Max, bRect),
		"Is inside the element",
		"Is not inside the element"
	)
end
