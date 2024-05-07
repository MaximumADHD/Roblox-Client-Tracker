--!strict
local UGCValidationService = game:GetService("UGCValidationService")

local root = script.Parent.Parent

local getFFlagUseUGCValidationContext = require(root.flags.getFFlagUseUGCValidationContext)
local getEngineFeatureUGCValidateEditableMeshAndImage =
	require(root.flags.getEngineFeatureUGCValidateEditableMeshAndImage)

local Types = require(root.util.Types)
local pcallDeferred = require(root.util.pcallDeferred)
local getFFlagUGCValidationShouldYield = require(root.flags.getFFlagUGCValidationShouldYield)

local Analytics = require(root.Analytics)

local function validateMeshVertexColors(
	meshInfo: Types.MeshInfo,
	checkTransparency: boolean,
	validationContext: Types.ValidationContext
): (boolean, { string }?)
	local isServer = validationContext.isServer

	local success, result
	if getEngineFeatureUGCValidateEditableMeshAndImage() and getFFlagUGCValidationShouldYield() then
		success, result = pcallDeferred(function()
			return UGCValidationService:ValidateEditableMeshVertColors(
				meshInfo.editableMesh :: EditableMesh,
				checkTransparency
			) -- ValidateMeshVertColors() checks the color as well as the alpha transparency
		end, validationContext)
	else
		success, result = pcall(function()
			return UGCValidationService:ValidateMeshVertColors(meshInfo.contentId :: string, checkTransparency) -- ValidateMeshVertColors() checks the color as well as the alpha transparency
		end)
	end

	if not success then
		Analytics.reportFailure(Analytics.ErrorType.validateMeshVertexColors_FailedToLoadMesh)
		local message = string.format(
			"Failed to load vertex color map for model mesh %s. Make sure it exists and try again.",
			meshInfo.fullName
		)
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
			{
				string.format(
					"Invalid vertex color found in mesh model '%s'. You need to edit the color map to be all white %s and try again.",
					meshInfo.fullName,
					if checkTransparency then "with no transarency" else ""
				),
			}
	end

	return true
end

local function DEPRECATED_validateMeshVertexColors(
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

return if getFFlagUseUGCValidationContext()
	then validateMeshVertexColors
	else DEPRECATED_validateMeshVertexColors :: never
