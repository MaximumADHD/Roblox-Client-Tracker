local equalObjects = require(script.Parent.Parent.equalObjects)

local function compare(a, b)
	if type(a) ~= "table" or type(b) ~= "table" then
		return a == b
	end

	if #a ~= #b then
		return false
	end

	for i = 1, #a do
		if a[i] ~= b[i] then
			return false
		end
	end

	return true
end

local function equals<T>(...: { T })
	if equalObjects(...) then
		return true
	end

	local argCount = select("#", ...)
	local firstObject = select(1, ...)

	for i = 2, argCount do
		local object = select(i, ...)

		if not compare(firstObject, object) then
			return false
		end
	end

	return true
end

return equals
