local function shallowEqual(a, b)
	for key, value in pairs(a) do
		if value ~= b[key] then
			return false
		end
	end

	for key, value in pairs(b) do
		if value ~= a[key] then
			return false
		end
	end

	return true
end

return shallowEqual