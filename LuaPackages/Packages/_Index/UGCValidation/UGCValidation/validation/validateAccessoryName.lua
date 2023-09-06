local function validateAccessoryName(accessory: Instance)
	if string.match(accessory.Name, "Accessory %(.+%)$") then
		return true
	else
		return false, { 'Accessory.Name must match pattern "Accessory (Name)"' }
	end
end

return validateAccessoryName
