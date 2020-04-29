--[[
	Performs a right-fold of the list with the given initial value and callback.
]]
local function foldRight(list, initial, callback)
	local accum = initial

	for i = #list, 1, -1 do
		accum = callback(accum, list[i], i)
	end

	return accum
end

return foldRight