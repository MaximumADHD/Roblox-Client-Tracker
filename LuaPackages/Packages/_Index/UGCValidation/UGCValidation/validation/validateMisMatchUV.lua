local UGCValidationService = game:GetService("UGCValidationService")

local function validateMisMatchUV(innerCageMeshId: string, outerCageMeshId: string): (boolean, { string }?)
	if not game:GetFastFlag("UGCReturnAllValidations") then
		-- we have checked inner/outer cage id in validateLayeredClothingAccessory, this should be removed when UGCReturnAllValidations is on
		if innerCageMeshId == "" or outerCageMeshId == "" then
			return false, { "Cage must contain valid MeshId" }
		end
	end

	local success, result = pcall(function()
		return UGCValidationService:ValidateMisMatchUV(innerCageMeshId, outerCageMeshId)
	end)

	if not success then
		return false, { "Failed to execute validateMisMatchUV check" }
	end

	if not result then
		return false,
			{
				"Inner and Outer cage UV mismatched. Original cage template should be used and no modification to the UV map.",
			}
	end

	return true
end

return validateMisMatchUV
