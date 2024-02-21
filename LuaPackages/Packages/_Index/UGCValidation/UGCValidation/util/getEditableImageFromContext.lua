--!strict

local root = script.Parent.Parent

local Types = require(root.util.Types)

return function(instance: Instance, fieldName: string, validationContext: Types.ValidationContext): (boolean, any?)
	if not validationContext.editableImages then
		if validationContext.isServer then
			error(string.format("Failed to load texture data"))
		else
			return false
		end
	end

	local editableImages = validationContext.editableImages :: Types.EditableImages
	local instanceFieldNames = editableImages[instance]
	assert(instanceFieldNames)

	local editableImage = instanceFieldNames[fieldName]
	if not editableImage or not editableImage.instance then
		if validationContext.isServer then
			error(string.format("Failed to load texture data"))
		else
			return false
		end
	end

	return true, editableImage.instance
end
