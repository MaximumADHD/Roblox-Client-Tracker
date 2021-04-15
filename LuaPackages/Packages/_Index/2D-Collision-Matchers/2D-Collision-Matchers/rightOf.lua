local toRect = require(script.Parent.toRect)
local returnValue = require(script.Parent.returnValue)

return function(a, b, distance)
	local aRect = toRect(a)
	local bRect = toRect(b)

	local distanceFromSide = aRect.Min - bRect.Max
	if distance then
		if typeof(distance) == "number" then
			distance = NumberRange.new(distance)
		end

		return returnValue(
			distance.Min <= distanceFromSide.X and distance.Max >= distanceFromSide.X,
			"Was within range",
			"Was not within range ( " .. tostring(distance) .. ")"
		)
	else
		return returnValue(
			distanceFromSide.X >= 0,
			"Was not left of the element",
			"Was to the left of the element"
		)
	end
end
