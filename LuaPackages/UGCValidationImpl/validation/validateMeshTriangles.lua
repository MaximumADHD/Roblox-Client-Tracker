local UGCValidationService = game:GetService("UGCValidationService")

local root = script.Parent.Parent

local Constants = require(root.Constants)

-- ensures accessory mesh does not have more triangles than Constants.MAX_HAT_TRIANGLES
local function validateMeshTriangles(meshId: string): (boolean, {string}?)
	if meshId == "" then
		return false, { "Mesh must contain valid MeshId" }
	end

	local success, triangles = pcall(function()
		return UGCValidationService:GetMeshTriCount(meshId)
	end)

	if not success then
		return false, { "Failed to load mesh data" }
	elseif triangles > Constants.MAX_HAT_TRIANGLES then
		return false, {
			string.format(
				"Mesh has %d triangles, but the limit is %d",
				triangles,
				Constants.MAX_HAT_TRIANGLES
			)
		}
	end

	return true
end

return validateMeshTriangles
