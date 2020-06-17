--[[
	Performs a left-fold of the list with the given initial value and callback.
]]
local function foldLeft(list, initial, callback)
	local accum = initial

	for i = 1, #list do
		accum = callback(accum, list[i], i)
	end

	return accum
end

return foldLeft