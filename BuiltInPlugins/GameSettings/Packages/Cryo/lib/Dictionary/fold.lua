--[[
	Performs a fold over the entries in the given dictionary.
]]
local function fold(dictionary, initialValue, callback)
	local accum = initialValue

	for key, value in pairs(dictionary) do
		accum = callback(accum, key, value)
	end

	return accum
end

return fold