local function isEmpty(dictionary)
	return next(dictionary) == nil
end

local function isEqualCheck(current, changed)
	if current == nil or changed == nil then
		return current == changed
	end
	if isEmpty(current) ~= isEmpty(changed) then
		return false
	end

	local equal = true
	for key, value in pairs(current) do
		if changed[key] ~= value then
			equal = false
			break
		end
	end
	for key, value in pairs(changed) do
		if current[key] ~= value then
			equal = false
			break
		end
	end
	return equal
end

return isEqualCheck