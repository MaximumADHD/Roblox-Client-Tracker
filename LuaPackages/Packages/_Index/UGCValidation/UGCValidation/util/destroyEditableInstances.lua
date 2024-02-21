--!nonstrict

local root = script.Parent.Parent
local Types = require(root.util.Types)

local function destroyHelper(editableInstances: { [Instance]: { [string]: any } })
	for _, fieldNames in editableInstances do
		for _, editableInstance in fieldNames do
			if editableInstance.created and editableInstance.instance then
				editableInstance.instance:Destroy()
			end
		end
	end

	editableInstances = {}
end

return function(editableMeshes: Types.EditableMeshes, editableImages: Types.EditableImages)
	destroyHelper(editableMeshes)
	destroyHelper(editableImages)
end
