return function(value)
	if value == nil then
		error("cannot extract values from a nil value")
	end
	local valueType = typeof(value)

	local array = {}
	if valueType == "table" then
		for _, keyValue in pairs(value) do
			table.insert(array, keyValue)
		end
	elseif valueType == "string" then
		for i = 1, value:len() do
			array[i] = value:sub(i, i)
		end
	end

	return array
end
