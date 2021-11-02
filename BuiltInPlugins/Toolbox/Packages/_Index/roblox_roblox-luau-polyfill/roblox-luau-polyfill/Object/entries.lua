return function(value)
	if value == nil then
		error("cannot get entries from a nil value")
	end
	local valueType = typeof(value)

	local entries = {}
	if valueType == "table" then
		for key, keyValue in pairs(value) do
			table.insert(entries, {key, keyValue})
		end
	elseif valueType == "string" then
		for i = 1, value:len() do
			entries[i] = {tostring(i), value:sub(i, i)}
		end
	end

	return entries
end
