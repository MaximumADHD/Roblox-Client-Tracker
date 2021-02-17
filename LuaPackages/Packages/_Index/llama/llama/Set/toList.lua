
local function toList(set)
	local new = {}
	local index = 1

	for k, _ in pairs(set) do
		new[index] = k
		index = index + 1
	end

	return new
end

return toList