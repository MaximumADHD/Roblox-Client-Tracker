--!strict

local root = script.Parent.Parent

local Types = require(root.util.Types)

return function(instance: Instance, fieldName: string, validationContext: Types.ValidationContext): (boolean, any?)
	if not validationContext.editableMeshes then
		if validationContext.isServer then
			error(string.format("Failed to load texture data"))
		else
			return false
		end
	end

	local editableMeshes = validationContext.editableMeshes :: Types.EditableMeshes
	local instanceFieldNames = editableMeshes[instance]
	assert(instanceFieldNames)

	local editableMesh = instanceFieldNames[fieldName]
	if not editableMesh or not editableMesh.instance then
		if validationContext.isServer then
			error(string.format("Failed to load mesh data"))
		else
			return false
		end
	end

	return true, editableMesh.instance
end
