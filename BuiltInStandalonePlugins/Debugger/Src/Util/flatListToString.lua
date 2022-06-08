--[[
	Converts a flat list to string.
]]
return function(list: { [number]: string })
	local result = ""

	for _, value in ipairs(list) do
		if result ~= "" then
			result = result .. ","
		end
		result = result .. value
	end

	return result
end
