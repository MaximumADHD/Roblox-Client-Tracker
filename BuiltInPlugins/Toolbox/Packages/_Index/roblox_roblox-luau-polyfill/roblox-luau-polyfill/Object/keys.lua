return function(value)
	if value == nil then
		error("cannot extract keys from a nil value")
	end

	local valueType = typeof(value)

	local keys = {}
	if valueType == "table" then
		for key in pairs(value) do
			table.insert(keys, key)
		end
	elseif valueType == "string" then
		local length = value:len()
		keys = table.create(length)
		for i = 1, length do
			keys[i] = tostring(i)
		end
	end

	return keys
end
