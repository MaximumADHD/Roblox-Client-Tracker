local function getLinesFromStr(str)
	local results = {}
	for match in string.gmatch(str, "[^\n]+") do
		results[#results + 1] = match
	end
	return results
end

return getLinesFromStr