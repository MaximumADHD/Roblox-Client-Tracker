local UGCValidationService = game:GetService("UGCValidationService")

local function validateUVSpace(meshId: string): (boolean, {string}?)
	if not game:GetFastFlag("UGCReturnAllValidations") then
		-- we have checked meshId in validateLayeredClothingAccessory, this should be removed when UGCReturnAllValidations is on
		if meshId == "" then
			return false, { "Mesh must contain valid MeshId" }
		end
	end

	local success, result = pcall(function()
		return UGCValidationService:ValidateUVSpace(meshId)
	end)

	if not success then
		return false, { "Failed to execute validateUVSpace check" }
	end

	if not result then
		return false, { "Your mesh has UVs defined outside 0-1 space. This can lead to texturing discrepancies and violates UGC upload requirements." }
	end

	return true
end

return validateUVSpace
