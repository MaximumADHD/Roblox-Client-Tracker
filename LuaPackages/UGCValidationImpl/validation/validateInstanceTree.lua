local root = script.Parent.Parent

local Constants = require(root.Constants)
local createAccessorySchema = require(root.util.createAccessorySchema)
local validateWithSchema = require(root.util.validateWithSchema)

-- validates a given instance based on a schema
local function validateInstanceTree(instance, assetTypeEnum)
	local assetInfo = Constants.ASSET_TYPE_INFO[assetTypeEnum]
	if not assetInfo then
		return false, { "Could not validate" }
	end

	local schema = createAccessorySchema(assetInfo.attachmentNames)

	-- validate using hat schema
	local validationResult = validateWithSchema(schema, instance)
	if validationResult.success == false then
		return false, { validationResult.message }
	end

	-- fallback case for if validateWithSchema breaks
	local invalidDescendantsReasons = {}
	if Constants.BANNED_NAMES[instance.Name] then
		local reason = string.format("%s has an invalid name", instance:GetFullName())
		invalidDescendantsReasons[#invalidDescendantsReasons + 1] = reason
	end

	for _, descendant in pairs(instance:GetDescendants()) do
		for _, className in pairs(Constants.BANNED_CLASS_NAMES) do
			if descendant:IsA(className) then
				local reason = string.format(
					"%s is of type %s which is not allowed",
					descendant:GetFullName(),
					className
				)
				invalidDescendantsReasons[#invalidDescendantsReasons + 1] = reason
			end
		end
		if Constants.BANNED_NAMES[descendant.Name] then
			local reason = string.format("%s has an invalid name", descendant:GetFullName())
			invalidDescendantsReasons[#invalidDescendantsReasons + 1] = reason
		end
	end

	if #invalidDescendantsReasons > 0 then
		return false, invalidDescendantsReasons
	end

	return true
end

return validateInstanceTree