local UGCValidationService = game:GetService("UGCValidationService")

local root = script.Parent.Parent

local floatEquals = require(root.util.floatEquals)
local valueToString = require(root.util.valueToString)

local function validateMeshVertexColors(meshId: string): (boolean, {string}?)
	if not game:GetFastFlag("UGCReturnAllValidations") then
		-- we have checked meshId in validateLayeredClothingAccessory, this should be removed when UGCReturnAllValidations is on
		if meshId == "" then
			return false, { "Mesh must contain valid MeshId" }
		end
	end

	if game:GetFastFlag("UGCLCQualityReplaceLua") then
		local success, result = pcall(function()
			return UGCValidationService:ValidateMeshVertColors(meshId)
		end)

		if not success then
			return false, { "Failed to execute validateMeshVertexColors check" }
		end

		if not result then
			return false, { "Your mesh has non-neutral vertex color values, which violates UGC upload requirements." }
		end
	else
		local success, vertColors = pcall(function()
			return UGCValidationService:GetMeshVertColors(meshId)
		end)

		if not success then
			return false, { "Failed to load mesh data" }
		end

		for _, color in ipairs(vertColors) do
			if not floatEquals(color.R, 1) or not floatEquals(color.G, 1) or not floatEquals(color.B, 1) then
				return false, {
					string.format("Mesh cannot have non-neutral vertex colors. Found color: %s", valueToString(color))
				}
			end
		end
	end

	return true
end

return validateMeshVertexColors
