local UGCValidationService = game:GetService("UGCValidationService")

local root = script.Parent.Parent

local getFFlagUGCValidateBodyParts = require(root.flags.getFFlagUGCValidateBodyParts)

local Analytics = require(root.Analytics)

local function validateOverlappingVertices(meshId: string, meshType: string, isServer: boolean?): (boolean, { string }?)
	local success, result = pcall(function()
		return UGCValidationService:ValidateOverlappingVertices(meshId)
	end)

	if not success then
		if getFFlagUGCValidateBodyParts() then
			if nil ~= isServer and isServer then
				-- there could be many reasons that an error occurred, the asset is not necessarilly incorrect, we just didn't get as
				-- far as testing it, so we throw an error which means the RCC will try testing the asset again, rather than returning false
				-- which would mean the asset failed validation
				error(string.format("Failed to execute validateOverlappingVertices check for %s", meshType))
			end
		end
		Analytics.reportFailure(Analytics.ErrorType.validateOverlappingVertices_FailedToExecute)
		return false, { string.format("Failed to execute validateOverlappingVertices check for %s", meshType) }
	end

	if not result then
		Analytics.reportFailure(Analytics.ErrorType.validateOverlappingVertices_OverlappingVertices)
		return false,
			{ string.format("%s has multiple vertices sharing identical or near-identical positions.", meshType) }
	end

	return true
end

return validateOverlappingVertices
