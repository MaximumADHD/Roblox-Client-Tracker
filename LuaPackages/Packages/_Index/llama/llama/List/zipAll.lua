
local None = require(script.Parent.Parent.None)

local function zipAll(...)
	local new = {}
	local argc = select('#', ...)
	local maxLen = #select(1, ...)

	for i = 2, argc do
		local len = #select(i, ...)

		if len > maxLen then
			maxLen = len
		end
	end

	for i = 1, maxLen do
		new[i] = {}
		
		for j = 1, argc do
			local value = select(j, ...)[i]

			if value == nil then
				new[i][j] = None
			else
				new[i][j] = select(j, ...)[i]
			end
		end
	end

	return new
end

return zipAll