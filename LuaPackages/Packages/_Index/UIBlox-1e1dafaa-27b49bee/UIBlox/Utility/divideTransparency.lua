--[[
	Divides a transparency value by a value, as if it were opacity.
	divideTransparency(0, 2) -> 0.5
	divideTransparency(0.3, 2) -> 0.65
]]

return function(transparency, divisor)
	return 1 - (1 - transparency) / divisor
end