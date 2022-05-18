local root = script.Parent.Parent

local Constants = require(root.Constants)
local validateWithSchema = require(root.util.validateWithSchema)

-- validates a given instance based on a schema
local function validateInstanceTree(schema: any, instance: Instance): (boolean, {string}?)
	-- validate using hat schema
	local validationResult = validateWithSchema(schema, instance)
	if validationResult.success == false then
		return false, { validationResult.message }
	end

	-- fallback case for if validateWithSchema breaks
	local invalidDescendantsReasons = {}
	if Constants.BANNED_NAMES[instance.Name] then
		table.insert(invalidDescendantsReasons, string.format("%s has an invalid name", instance:GetFullName()))
	end

	for _, descendant in pairs(instance:GetDescendants()) do
		for _, className in pairs(Constants.BANNED_CLASS_NAMES) do
			if descendant:IsA(className) then
				table.insert(invalidDescendantsReasons, string.format(
					"%s is of type %s which is not allowed",
					descendant:GetFullName(),
					className
				))
			end
		end
		if Constants.BANNED_NAMES[descendant.Name] then
			table.insert(invalidDescendantsReasons, string.format("%s has an invalid name", descendant:GetFullName()))
		end
	end

	if #invalidDescendantsReasons > 0 then
		return false, invalidDescendantsReasons
	end

	return true
end

return validateInstanceTree
