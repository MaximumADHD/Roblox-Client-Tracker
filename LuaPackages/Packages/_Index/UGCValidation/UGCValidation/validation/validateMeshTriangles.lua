local UGCValidationService = game:GetService("UGCValidationService")

local root = script.Parent.Parent

local Constants = require(root.Constants)

-- ensures accessory mesh does not have more triangles than Constants.MAX_HAT_TRIANGLES
local function validateMeshTriangles(meshId: string): (boolean, {string}?)
	if not game:GetFastFlag("UGCReturnAllValidations") then
		-- we have checked meshId in validateLayeredClothingAccessory, this should be removed when UGCReturnAllValidations is on
		if meshId == "" then
			return false, { "Mesh must contain valid MeshId" }
		end
	end

	if game:GetFastFlag("UGCLCQualityReplaceLua") then
		local success, result = pcall(function()
			return UGCValidationService:ValidateMeshTriangles(meshId)
		end)

		if not success then
			return false, { "Failed to execute validateMeshTriangles check" }
		end

		if not result then
			return false, { "Your mesh exceeds the max triangle limit for UGC upload requirements." }
		end
	else
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
	end

	return true
end

return validateMeshTriangles
