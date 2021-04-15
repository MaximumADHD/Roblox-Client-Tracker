local toRect = require(script.Parent.toRect)
local returnValue = require(script.Parent.returnValue)

return function(a, b, horizontalAlignment)
	local aRect = toRect(a)
	local bRect = toRect(b)

	if horizontalAlignment == Enum.HorizontalAlignment.Left then
		return returnValue(aRect.Min.X == bRect.Min.X, "", "")
	elseif horizontalAlignment == Enum.HorizontalAlignment.Center then
		local aMiddle = (aRect.Min + aRect.Max) / 2
		local bMiddle = (bRect.Min + bRect.Max) / 2
		return returnValue(aMiddle.X == bMiddle.X, "", "")
	elseif horizontalAlignment == Enum.HorizontalAlignment.Right then
		return returnValue(aRect.Max.X == bRect.Max.X, "", "")
	end

	return returnValue(false, "Invalid horizontal alignment!")
end
