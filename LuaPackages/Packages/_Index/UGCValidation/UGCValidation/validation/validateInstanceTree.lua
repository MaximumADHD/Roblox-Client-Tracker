local root = script.Parent.Parent

local Analytics = require(root.Analytics)
local Constants = require(root.Constants)
local validateWithSchema = require(root.util.validateWithSchema)
local Types = require(root.util.Types)

-- validates a given instance based on a schema
local function validateInstanceTree(
	schema: any,
	instance: Instance,
	validationContext: Types.ValidationContext
): (boolean, { string }?)
	-- validate using hat schema
	local validationResult = validateWithSchema(schema, instance, validationContext)
	if validationResult.success == false then
		Analytics.reportFailure(Analytics.ErrorType.validateInstanceTree)
		return false, {
			"Detected the following error(s): " .. validationResult.message,
		}
	end

	-- fallback case for if validateWithSchema breaks
	local invalidDescendantsReasons = {}
	if Constants.BANNED_NAMES[instance.Name] then
		table.insert(invalidDescendantsReasons, string.format("%s has an invalid name", instance:GetFullName()))
	end

	for _, descendant in pairs(instance:GetDescendants()) do
		for _, className in pairs(Constants.BANNED_CLASS_NAMES) do
			if descendant:IsA(className) then
				table.insert(
					invalidDescendantsReasons,
					string.format("%s is of type %s which is not allowed", descendant:GetFullName(), className)
				)
			end
		end
		if Constants.BANNED_NAMES[descendant.Name] then
			table.insert(invalidDescendantsReasons, string.format("%s has an invalid name", descendant:GetFullName()))
		end
	end

	if #invalidDescendantsReasons > 0 then
		Analytics.reportFailure(Analytics.ErrorType.validateInstanceTree_InvalidDescendants)
		return false, invalidDescendantsReasons
	end

	return true
end

return validateInstanceTree
