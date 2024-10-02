--!strict

local root = script.Parent.Parent

local Types = require(root.util.Types)

return function(
	instance: Instance,
	fieldName: string,
	editableInstances: any?,
	validationContext: Types.ValidationContext
): (boolean, any?)
	if not editableInstances then
		if validationContext.isServer then
			error(string.format("Failed to load texture data"))
		else
			return false
		end
	end

	local instanceFieldNames = editableInstances[instance]
	if not instanceFieldNames then
		local contentId = (instance :: any)[fieldName]
		if not contentId or contentId == "" then
			return false
		elseif validationContext.isServer then
			error(string.format("Failed to load texture data"))
		end
	end

	local editableInstance = instanceFieldNames[fieldName]
	if not editableInstance or not editableInstance.instance then
		local contentId = (instance :: any)[fieldName]
		if not contentId or contentId == "" then
			return false
		elseif validationContext.isServer then
			error(string.format("Failed to load texture data"))
		else
			return false
		end
	end

	return true, editableInstance.instance
end
