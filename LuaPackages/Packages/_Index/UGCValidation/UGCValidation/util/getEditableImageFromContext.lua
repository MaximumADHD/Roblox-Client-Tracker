--!strict

local root = script.Parent.Parent

local Types = require(root.util.Types)

return function(instance: Instance, fieldName: string, validationContext: Types.ValidationContext): (boolean, any?)
	local instanceFieldNames = validationContext.editableImages[instance]
	assert(instanceFieldNames)

	local editableImage = instanceFieldNames[fieldName]
	if not editableImage then
		if validationContext.isServer then
			error(string.format("Failed to load texture data"))
		else
			return false
		end
	end

	return true, editableImage
end
