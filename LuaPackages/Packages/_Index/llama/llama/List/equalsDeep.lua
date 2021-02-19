
local equalObjects = require(script.Parent.Parent.equalObjects)

local function equalsDeepOneWay(object, comparison)
	if type(object) == "table" and type(comparison) == "table" then
		for i = 1, #object do
			if not equalsDeepOneWay(object[i], comparison[i]) then
				return false
			end
		end
	else
		if object ~= comparison then
			return false
		end
	end

	return true
end

local function equalsDeep(...)
	if equalObjects(...) then
		return true
	end

	local argc = select('#', ...)

	for i = 1, argc do
		local dictionary = select(i, ...)

		for j = 1, argc do
			if j ~= i then
				local compare = select(j, ...)
				
				if not equalsDeepOneWay(dictionary, compare) then
					return false
				end
			end
		end
	end

	return true
end

return equalsDeep