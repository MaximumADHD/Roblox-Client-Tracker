
local None = require(script.Parent.Parent.None)

local function join(...)
	local new = {}

	local index = 1

	for listIndex = 1, select("#", ...) do
		local list = select(listIndex, ...)

		if list then
			for i = 1, #list do
				if list[i] ~= None then
					new[index] = list[i]
					index = index + 1
				end
			end
		end
	end

	return new
end

return join