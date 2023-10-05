local root = script.Parent.Parent

local Analytics = require(root.Analytics)

-- ensures no descendant of instance has attributes
local function validateAttributes(instance: Instance): (boolean, { string }?)
	local attributesFailures = {}

	if next(instance:GetAttributes()) :: any ~= nil then
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
