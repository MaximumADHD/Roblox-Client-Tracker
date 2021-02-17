
local None = require(script.Parent.Parent.None)
local copyDeep = require(script.Parent.copyDeep)

local function joinDeep(...)
	local new = {}

	local index = 1

	for listIndex = 1, select("#", ...) do
		local list = select(listIndex, ...)

		if list then
			for i = 1, #list do
				if type(list[i]) == "table" then
					if new[index] == nil or type(new[index] ~= "table") then
						new[index] = copyDeep(list[i])
					else
						new[index] = joinDeep(new[index], list[i])
					end
				elseif list[i] ~= None then
					new[index] = list[i]
				end

				index = index + 1
			end
		end
	end

	return new
end

return joinDeep