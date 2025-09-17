local root = script.Parent.Parent

local Types = require(root.util.Types)
local getExpectedPartSize = require(root.util.getExpectedPartSize)

-- input:
--  partNames: the names of the MeshParts you want to calculate the underlying mesh scale for
--  getMesh: a function that takes a part name and returns a MeshPart
-- returns a table of vector3s each MeshPart's editable mesh must be scaled by in order for the size to equal MeshPart.Size
return function(
	partNames: { string },
	getMesh: (string) -> MeshPart,
	validationContext: Types.ValidationContext
): { string: Vector3 }
	local validationMeshScales = {}
	for _, partName in partNames do
		local meshPart = getMesh(partName)
		local scale = getExpectedPartSize(meshPart, validationContext)
			/ getExpectedPartSize(meshPart, validationContext, true)
		validationMeshScales[partName] = scale
	end

	return validationMeshScales
end
