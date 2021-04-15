local toRect = require(script.Parent.toRect)
local returnValue = require(script.Parent.returnValue)

return function(a, b, verticalAlignment)
	local aRect = toRect(a)
	local bRect = toRect(b)

	if verticalAlignment == Enum.VerticalAlignment.Top then
		return returnValue(aRect.Min.Y == bRect.Min.Y, "", "")
	elseif verticalAlignment == Enum.VerticalAlignment.Center then
		local aMiddle = (aRect.Min + aRect.Max) / 2
		local bMiddle = (bRect.Min + bRect.Max) / 2
		return returnValue(aMiddle.Y == bMiddle.Y, "", "")
	elseif verticalAlignment == Enum.VerticalAlignment.Bottom then
		return returnValue(aRect.Max.Y == bRect.Max.Y, "", "")
	end

	return returnValue(false, "Invalid VerticalAlignment!")
end
