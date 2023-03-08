local UGCValidationService = game:GetService("UGCValidationService")

local function validateFullBodyCageDeletion(meshId: string, meshType: string): (boolean, {string}?)
	if not game:GetFastFlag("UGCReturnAllValidations") then
		-- we have checked meshId in validateLayeredClothingAccessory, this should be removed when UGCReturnAllValidations is on
		if meshId == "" then
			return false, { "Cage must contain valid MeshId for FullBodyCageDeletion check." }
		end
	end

	local success, result = pcall(function()
		return UGCValidationService:ValidateFullBodyCageDeletion(meshId)
	end)

	if not success then
		return false, { "Failed to execute validateFullBodyCageDeletion check" }
	end

	if not result then
		return false, { string.format("Some %s geometry has been removed. This will result in layering issues.", meshType) }
	end

	return true
end

return validateFullBodyCageDeletion
