local toRect = require(script.Parent.toRect)
local returnValue = require(script.Parent.returnValue)

return function(a, b)
	local aRect = toRect(a)
	local bRect = toRect(b)

	return returnValue(
		math.abs(aRect.Min.X - bRect.Min.X) * 2 < (aRect.Width + bRect.Width)
		and math.abs(aRect.Min.Y - bRect.Min.Y) * 2 < (aRect.Height + bRect.Height),
		"Intersects the element",
		"Does not intersect the element"
	)
end
