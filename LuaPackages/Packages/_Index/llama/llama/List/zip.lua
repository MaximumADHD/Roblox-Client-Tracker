
local function zip(...)
	local new = {}
	local argc = select('#', ...)
	local minLen = #select(1, ...)

	for i = 2, argc do
		local len = #select(i, ...)

		if len < minLen then
			minLen = len
		end
	end

	for i = 1, minLen do
		new[i] = {}
		
		for j = 1, argc do
			new[i][j] = select(j, ...)[i]
		end
	end

	return new
end

return zip