local function deepEqual(a: { [any]: any }, b: { [any]: any }): boolean
	for aKey, aValue in pairs(a) do
		local aValueType = typeof(aValue)
		local bValue = b[aKey]
		local bValueType = typeof(bValue)

		if aValueType ~= bValueType then
			return false
		end

		if aValue ~= bValue then
			if aValueType == "table" then
				return deepEqual(aValue, bValue)
			else
				return false
			end
		end
	end

	for bKey in pairs(b) do
		if a[bKey] == nil then
			return false
		end
	end

	return true
end

return deepEqual
