
local equalObjects = require(script.Parent.Parent.equalObjects)

local function equals(...)
	if equalObjects(...) then
		return true
	end

	local argc = select('#', ...)

	for i = 1, argc do
		local dictionary = select(i, ...)

		for j = 1, argc do
			if j ~= i then
				local compare = select(j, ...)

				for key, value in pairs(dictionary) do
					if value ~= compare[key] then
						return false
					end
				end
			end
		end
	end

	return true
end

return equals