--!strict

local root = script.Parent.Parent

local Types = require(root.util.Types)
local getEditableInstanceFromContext = require(root.util.getEditableInstanceFromContext)

return function(instance: Instance, fieldName: string, validationContext: Types.ValidationContext): (boolean, any?)
	local success, result =
		getEditableInstanceFromContext(instance, fieldName, validationContext.editableMeshes, validationContext)
	if not success then
		return false
	end

	return true, result :: EditableMesh
end
