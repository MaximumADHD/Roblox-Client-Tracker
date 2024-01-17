--!strict
local UGCValidationService = game:GetService("UGCValidationService")

local root = script.Parent.Parent

local getFFlagUseUGCValidationContext = require(root.flags.getFFlagUseUGCValidationContext)

local Types = require(root.util.Types)

local Analytics = require(root.Analytics)

local function validateMeshVertexColors(
	editableMesh: EditableMesh,
	checkTransparency: boolean,
	validationContext: Types.ValidationContext
): (boolean, { string }?)
	local isServer = validationContext.isServer

	local success, result = pcall(function()
		return UGCValidationService:ValidateEditableMeshVertColors(editableMesh, checkTransparency) -- ValidateMeshVertColors() checks the color as well as the alpha transparency
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
			{
				string.format(
					"%s.%s ( %s ) Your mesh has non-neutral vertex color values, which violates UGC upload requirements.",
					editableMesh:GetAttribute("SourceFullName"),
					editableMesh:GetAttribute("FieldName"),
					editableMesh:GetAttribute("ContentId")
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

if getFFlagUseUGCValidationContext() then
	return validateMeshVertexColors :: any
else
	return DEPRECATED_validateMeshVertexColors :: any
end
