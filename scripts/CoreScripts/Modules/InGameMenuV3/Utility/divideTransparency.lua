--[[
	Divides a transparency value by a value, as if it were opacity.
	divideTransparency(0, 2) -> 0.5
	divideTransparency(0.3, 2) -> 0.65

	This function is primarily used in buttons, where the press state cuts the
	opacity of the button in half. To do this, we have to convert transparency
	to opacity, divide by the divisor, then convert back to transparency.
]]

local function divideTransparency(value, divisor)
	return 1 - (1 - value) / divisor
end

return divideTransparency