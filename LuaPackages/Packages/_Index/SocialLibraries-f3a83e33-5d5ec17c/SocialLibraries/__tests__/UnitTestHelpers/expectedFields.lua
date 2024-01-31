local function expectedFields(table, arrayOfFields)
	local expectedKeys = {}
	for _, field in ipairs(arrayOfFields) do
		expectedKeys[field] = true
	end

	for key in pairs(expectedKeys) do
		assert(table[key] ~= nil, string.format("Expected field %q", key))
	end

	for key in pairs(table) do
		assert(expectedKeys[key] ~= nil, string.format("Did not expect field %q", key))
	end
end

return expectedFields
