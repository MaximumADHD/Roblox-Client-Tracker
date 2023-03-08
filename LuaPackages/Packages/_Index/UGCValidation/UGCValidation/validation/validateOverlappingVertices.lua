local UGCValidationService = game:GetService("UGCValidationService")

local function validateOverlappingVertices(meshId: string, meshType: string): (boolean, {string}?)
	if not game:GetFastFlag("UGCReturnAllValidations") then
		-- we have checked meshId in validateLayeredClothingAccessory, this should be removed when UGCReturnAllValidations is on
		if meshId == "" then
			return false, { "Cage must contain valid MeshId" }
		end
	end

	local success, result = pcall(function()
		return UGCValidationService:ValidateOverlappingVertices(meshId)
	end)

	if not success then
		return false, { string.format("Failed to execute validateOverlappingVertices check for %s", meshType) }
	end

	if not result then
		return false, { string.format("%s has multiple vertices sharing identical or near-identical positions.", meshType) }
	end

	return true
end

return validateOverlappingVertices
