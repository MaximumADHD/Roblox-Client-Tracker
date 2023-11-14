--!strict
local UGCValidationService = game:GetService("UGCValidationService")

local root = script.Parent.Parent

local Analytics = require(root.Analytics)

local function validateMeshVertexColors(
	meshId: string,
	checkTransparency: boolean,
	isServer: boolean?
): (boolean, { string }?)
	local success, result = pcall(function()
		return UGCValidationService:ValidateMeshVertColors(meshId, checkTransparency) -- ValidateMeshVertColors() checks the color as well as the alpha transparency
	end)

	if not success then
		Analytics.reportFailure(Analytics.ErrorType.validateMeshVertexColors_FailedToLoadMesh)
		local message = "Failed to execute validateMeshVertexColors check"
		if nil ~= isServer and isServer then
			-- there could be many reasons that an error occurred, the asset is not necessarilly incorrect, we just didn't get as
			-- far as testing it, so we throw an error which means the RCC will try testing the asset again, rather than returning false
			-- which would mean the asset failed validation
			error(message)
		end
		return false, { message }
	end

	if not result then
		Analytics.reportFailure(Analytics.ErrorType.validateMeshVertexColors_NonNeutralVertexColors)
		return false,
			{ `Your mesh ({meshId}) has non-neutral vertex color values, which violates UGC upload requirements.` }
	end

	return true
end

return validateMeshVertexColors
