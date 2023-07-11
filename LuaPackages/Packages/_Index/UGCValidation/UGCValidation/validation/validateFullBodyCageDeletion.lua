local UGCValidationService = game:GetService("UGCValidationService")

local root = script.Parent.Parent
local getFFlagUGCValidateBodyParts = require(root.flags.getFFlagUGCValidateBodyParts)

local function validateFullBodyCageDeletion(
	meshId: string,
	meshType: string,
	isServer: boolean?
): (boolean, { string }?)
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
		if getFFlagUGCValidateBodyParts() then
			if nil ~= isServer and isServer then
				-- there could be many reasons that an error occurred, the asset is not necessarilly incorrect, we just didn't get as
				-- far as testing it, so we throw an error which means the RCC will try testing the asset again, rather than returning false
				-- which would mean the asset failed validation
				error("Failed to execute validateFullBodyCageDeletion check")
			end
		end
		return false, { "Failed to execute validateFullBodyCageDeletion check" }
	end

	if not result then
		return false,
			{ string.format("Some %s geometry has been removed. This will result in layering issues.", meshType) }
	end

	return true
end

return validateFullBodyCageDeletion
