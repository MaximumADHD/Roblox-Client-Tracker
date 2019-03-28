return function(palette)
	local requiredKeys = {
		"backgroundColor",
		"textColor",
	}

	for _, requiredKey in pairs(requiredKeys) do
		if not palette[requiredKey] then
			return false
		end
	end

	return true
end