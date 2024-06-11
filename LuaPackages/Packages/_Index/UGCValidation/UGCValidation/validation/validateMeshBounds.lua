local UGCValidationService = game:GetService("UGCValidationService")

local root = script.Parent.Parent

local Types = require(root.util.Types)
local pcallDeferred = require(root.util.pcallDeferred)
local getFFlagUGCValidationShouldYield = require(root.flags.getFFlagUGCValidationShouldYield)
local getFFlagUGCLCQualityReplaceLua = require(root.flags.getFFlagUGCLCQualityReplaceLua)
local getEngineFeatureUGCValidateEditableMeshAndImage =
	require(root.flags.getEngineFeatureUGCValidateEditableMeshAndImage)

local Analytics = require(root.Analytics)

local DEFAULT_OFFSET = Vector3.new(0, 0, 0)

local function pointInBounds(worldPos, boundsCF, boundsSize)
	local objectPos = boundsCF:PointToObjectSpace(worldPos)
	return objectPos.X >= -boundsSize.X / 2
		and objectPos.X <= boundsSize.X / 2
		and objectPos.Y >= -boundsSize.Y / 2
		and objectPos.Y <= boundsSize.Y / 2
		and objectPos.Z >= -boundsSize.Z / 2
		and objectPos.Z <= boundsSize.Z / 2
end

local function truncate(number)
	return math.floor(number * 100) / 100
end

local function getErrors(name: string, assetType: string, v: Vector3): { string }
	return {
		string.format(
			"%s has size larger than max allowed bounding size. The max size for type %s is [%.2f, %.2f, %.2f]",
			name,
			assetType,
			truncate(v.X),
			truncate(v.Y),
			truncate(v.Z)
		),
	}
end

local function validateMeshBounds(
	handle: BasePart,
	attachment: Attachment,
	meshInfo: Types.MeshInfo,
	meshScale: Vector3,
	boundsInfo: any,
	name: string,
	validationContext: Types.ValidationContext
): (boolean, { string }?)
	local isServer = validationContext.isServer
	local boundsSize = boundsInfo.size
	local boundsOffset = boundsInfo.offset or DEFAULT_OFFSET
	local boundsCF = handle.CFrame * attachment.CFrame * CFrame.new(boundsOffset)

	if getFFlagUGCLCQualityReplaceLua() then
		local success, result
		if getEngineFeatureUGCValidateEditableMeshAndImage() and getFFlagUGCValidationShouldYield() then
			success, result = pcallDeferred(function()
				return UGCValidationService:ValidateEditableMeshBounds(
					meshInfo.editableMesh,
					meshScale,
					boundsOffset,
					attachment.CFrame,
					handle.CFrame
				)
			end, validationContext)
		else
			success, result = pcall(function()
				return UGCValidationService:ValidateMeshBounds(
					meshInfo.contentId,
					meshScale,
					boundsOffset,
					attachment.CFrame,
					handle.CFrame
				)
			end)
		end

		if not success then
			if nil ~= isServer and isServer then
				-- there could be many reasons that an error occurred, the asset is not necessarilly incorrect, we just didn't get as
				-- far as testing it, so we throw an error which means the RCC will try testing the asset again, rather than returning false
				-- which would mean the asset failed validation
				error("Failed to execute validateMeshBounds check")
			end
			Analytics.reportFailure(Analytics.ErrorType.validateMeshBounds_FailedToExecute)
			return false, { "Failed to execute validateMeshBounds check" }
		end

		if not result then
			Analytics.reportFailure(Analytics.ErrorType.validateMeshBounds_TooLarge)
			return false, getErrors(meshInfo.context :: string, name, boundsSize)
		end
	else
		local success, verts
		if getEngineFeatureUGCValidateEditableMeshAndImage() then
			success, verts = pcall(function()
				return UGCValidationService:GetEditableMeshVerts(meshInfo.editableMesh)
			end)
		else
			success, verts = pcall(function()
				return UGCValidationService:GetMeshVerts(meshInfo.contentId)
			end)
		end

		if not success then
			Analytics.reportFailure(Analytics.ErrorType.validateMeshBounds_FailedToLoadMesh)
			if nil ~= isServer and isServer then
				-- there could be many reasons that an error occurred, the asset is not necessarilly incorrect, we just didn't get as
				-- far as testing it, so we throw an error which means the RCC will try testing the asset again, rather than returning false
				-- which would mean the asset failed validation
				error(
					string.format(
						"Failed to load body part mesh %s. Make sure body part exists and try again.",
						meshInfo.fullName
					)
				)
			end
			return false,
				{
					string.format(
						"Failed to load body part mesh %s. Make sure body part exists and try again.",
						meshInfo.fullName
					),
				}
		end

		for _, vertPos in pairs(verts) do
			local worldPos = handle.CFrame:PointToWorldSpace(vertPos * meshScale)
			if not pointInBounds(worldPos, boundsCF, boundsSize) then
				Analytics.reportFailure(Analytics.ErrorType.validateMeshBounds_TooLarge)
				return false, getErrors(meshInfo.context :: string, name, boundsSize)
			end
		end
	end

	return true
end

return validateMeshBounds
