local root = script.Parent.Parent

local Analytics = require(root.Analytics)

local function validateAccessoryName(accessory: Instance)
	if string.match(accessory.Name, "Accessory %(.+%)$") then
		return true
	else
		Analytics.reportFailure(Analytics.ErrorType.validateAccessoryName)
		return false, { 'Accessory.Name must match pattern "Accessory (Name)"' }
	end
end

return validateAccessoryName
