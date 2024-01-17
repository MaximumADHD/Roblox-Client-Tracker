--!nonstrict

local root = script.Parent.Parent
local Types = require(root.util.Types)

local function destroyHelper(editableInstances: { [Instance]: { [string]: any } })
	for _, fieldNames in editableInstances do
		for _, editableInstance in fieldNames do
			editableInstance:Destroy()
		end
	end
end

return function(validationContext: Types.ValidationContext)
	destroyHelper(validationContext.editableMeshes)
	destroyHelper(validationContext.editableImages)
end
