local root = script.Parent.Parent

local Analytics = require(root.Analytics)
local Constants = require(root.Constants)

-- Root instances have a special allowed attribute to make them unique.
-- This is because the validation result is stored on a per asset hash basis.
-- Since validation also depends on who the creator is (for permission to use certain assets)
-- an asset that is a direct copy could fail validation for one person but pass for another.
-- This GUID attribute is set in the transcoding scripts.
local function hasOnlyAllowedAttribute(attributes)
	for attribute, value in attributes do
		if attribute ~= Constants.GUIDAttributeName then
			return false
		end

		if typeof(value) ~= "string" then
			return false
		end

		if string.len(value) > Constants.GUIDAttributeMaxLength then
			return false
		end
	end
	return true
end

-- ensures no descendant of instance has attributes
local function validateAttributes(instance: Instance): (boolean, { string }?)
	local attributesFailures = {}

	if not hasOnlyAllowedAttribute(instance:GetAttributes()) then
		table.insert(attributesFailures, instance:GetFullName())
	end

	for _, descendant in ipairs(instance:GetDescendants()) do
		if next(descendant:GetAttributes()) :: any ~= nil then
			table.insert(attributesFailures, descendant:GetFullName())
		end
	end

	if #attributesFailures > 0 then
		local reasons = {}
		table.insert(reasons, "The following instances contained attributes:")
		for _, name in pairs(attributesFailures) do
			table.insert(reasons, name)
		end
		Analytics.reportFailure(Analytics.ErrorType.validateAttributes)
		return false, reasons
	end

	return true
end

return validateAttributes
