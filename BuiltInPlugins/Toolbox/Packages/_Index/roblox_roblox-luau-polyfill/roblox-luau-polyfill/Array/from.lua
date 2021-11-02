local Array = script.Parent
local isArray = require(Array.isArray)

return function(value, mapFn)
	if value == nil then
		error("cannot create array from a nil value")
	end
	local valueType = typeof(value)

	local array = {}

	if valueType == "table" and isArray(value) then
		if mapFn then
			for i = 1, #value do
				array[i] = mapFn(value[i], i)
			end
		else
			for i = 1, #value do
				array[i] = value[i]
			end
		end
	elseif valueType == "string" then
		if mapFn then
			for i = 1, value:len() do
				array[i] = mapFn(value:sub(i, i), i)
			end
		else
			for i = 1, value:len() do
				array[i] = value:sub(i, i)
			end
		end
	end

	return array
end
