--!strict

local root = script.Parent.Parent

local Types = require(root.util.Types)

return function(instance: Instance, fieldName: string, validationContext: Types.ValidationContext): (boolean, any?)
	local instanceFieldNames = validationContext.editableMeshes[instance]
	assert(instanceFieldNames)

	local editableMesh = instanceFieldNames[fieldName]
	if not editableMesh then
		if validationContext.isServer then
			error(string.format("Failed to load mesh data"))
		else
			return false
		end
	end

	return true, editableMesh
end
