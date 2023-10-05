local UGCValidationService = game:GetService("UGCValidationService")

local root = script.Parent.Parent

local Analytics = require(root.Analytics)
local Constants = require(root.Constants)

local getFFlagUGCValidateBodyParts = require(root.flags.getFFlagUGCValidateBodyParts)
local getFFlagUGCValidateBodyPartsExtendedMeshTests = require(root.flags.getFFlagUGCValidateBodyPartsExtendedMeshTests)

-- ensures accessory mesh does not have more triangles than Constants.MAX_HAT_TRIANGLES
local function validateMeshTriangles(meshId: string, maxTriangles: number?, isServer: boolean?): (boolean, { string }?)
	if game:GetFastFlag("UGCLCQualityReplaceLua") and getFFlagUGCValidateBodyPartsExtendedMeshTests() then
		local success, result = pcall(function()
			return UGCValidationService:ValidateMeshTriangles(meshId)
		end)

		if not success then
			Analytics.reportFailure(Analytics.ErrorType.validateMeshTriangles_FailedToExecute)
			if getFFlagUGCValidateBodyParts() then
				if nil ~= isServer and isServer then
					-- there could be many reasons that an error occurred, the asset is not necessarilly incorrect, we just didn't get as
					-- far as testing it, so we throw an error which means the RCC will try testing the asset again, rather than returning false
					-- which would mean the asset failed validation
					error("Failed to execute validateMeshTriangles check")
				end
			end
			return false, { "Failed to execute validateMeshTriangles check" }
		end

		if not result then
			Analytics.reportFailure(Analytics.ErrorType.validateMeshTriangles_TooManyTriangles)
			return false, { "Your mesh exceeds the max triangle limit for UGC upload requirements." }
		end
	else
		local success, triangles = pcall(function()
			return UGCValidationService:GetMeshTriCount(meshId)
		end)

		maxTriangles = if getFFlagUGCValidateBodyParts() and nil ~= maxTriangles
			then maxTriangles
			else Constants.MAX_HAT_TRIANGLES
		if not success then
			Analytics.reportFailure(Analytics.ErrorType.validateMeshTriangles_FailedToLoadMesh)
			if getFFlagUGCValidateBodyParts() then
				if nil ~= isServer and isServer then
					-- there could be many reasons that an error occurred, the asset is not necessarilly incorrect, we just didn't get as
					-- far as testing it, so we throw an error which means the RCC will try testing the asset again, rather than returning false
					-- which would mean the asset failed validation
					error("Failed to load mesh data")
				end
			end
			return false, { "Failed to load mesh data" }
		elseif triangles > maxTriangles :: number then
			Analytics.reportFailure(Analytics.ErrorType.validateMeshTriangles_TooManyTriangles)
			return false,
				{
					string.format("Mesh has %d triangles, but the limit is %d", triangles, maxTriangles :: number),
				}
		end
	end

	return true
end

return validateMeshTriangles
