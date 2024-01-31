local UGCValidationService = game:GetService("UGCValidationService")
local FFlagTruncateMeshBoundsErrorMessage = game:DefineFastFlag("TruncateMeshBoundsErrorMessage", false)

local root = script.Parent.Parent

local Types = require(root.util.Types)

local getFFlagUseUGCValidationContext = require(root.flags.getFFlagUseUGCValidationContext)
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

local function getErrors(name: string, v: Vector3, attachment: Attachment): { string }
	if FFlagTruncateMeshBoundsErrorMessage then
		return {
			"Mesh is too large!",
			string.format(
				"Max size for type %s is [%.2f, %.2f, %.2f] from %s",
				name,
				truncate(v.X),
				truncate(v.Y),
				truncate(v.Z),
				attachment.Name
			),
			"Use SpecialMesh.Scale if using SpecialMeshes",
		}
	end
	return {
		"Mesh is too large!",
		string.format("Max size for type %s is [%.2f, %.2f, %.2f] from %s", name, v.X, v.Y, v.Z, attachment.Name),
		"Use SpecialMesh.Scale if using SpecialMeshes",
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

	if game:GetFastFlag("UGCLCQualityReplaceLua") then
		local success, result
		if getEngineFeatureUGCValidateEditableMeshAndImage() then
			success, result = pcall(function()
				return UGCValidationService:ValidateEditableMeshBounds(
					meshInfo.editableMesh,
					meshScale,
					boundsOffset,
					attachment.CFrame,
					handle.CFrame
				)
			end)
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
			return false, getErrors(name, boundsSize, attachment)
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
				error("Failed to read mesh")
			end
			return false, { "Failed to read mesh" }
		end

		for _, vertPos in pairs(verts) do
			local worldPos = handle.CFrame:PointToWorldSpace(vertPos * meshScale)
			if not pointInBounds(worldPos, boundsCF, boundsSize) then
				Analytics.reportFailure(Analytics.ErrorType.validateMeshBounds_TooLarge)
				return false, getErrors(name, boundsSize, attachment)
			end
		end
	end

	return true
end

local function DEPRECATED_validateMeshBounds(
	handle: BasePart,
	attachment: Attachment,
	meshId: string,
	meshScale: Vector3,
	boundsInfo: any,
	name: string,
	isServer: boolean?
): (boolean, { string }?)
	local boundsSize = boundsInfo.size
	local boundsOffset = boundsInfo.offset or DEFAULT_OFFSET
	local boundsCF = handle.CFrame * attachment.CFrame * CFrame.new(boundsOffset)

	if game:GetFastFlag("UGCLCQualityReplaceLua") then
		local success, result = pcall(function()
			return UGCValidationService:ValidateMeshBounds(
				meshId,
				meshScale,
				boundsOffset,
				attachment.CFrame,
				handle.CFrame
			)
		end)

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
			return false, getErrors(name, boundsSize, attachment)
		end
	else
		local success, verts = pcall(function()
			return UGCValidationService:GetMeshVerts(meshId)
		end)

		if not success then
			Analytics.reportFailure(Analytics.ErrorType.validateMeshBounds_FailedToLoadMesh)
			if nil ~= isServer and isServer then
				-- there could be many reasons that an error occurred, the asset is not necessarilly incorrect, we just didn't get as
				-- far as testing it, so we throw an error which means the RCC will try testing the asset again, rather than returning false
				-- which would mean the asset failed validation
				error("Failed to read mesh")
			end
			return false, { "Failed to read mesh" }
		end

		for _, vertPos in pairs(verts) do
			local worldPos = handle.CFrame:PointToWorldSpace(vertPos * meshScale)
			if not pointInBounds(worldPos, boundsCF, boundsSize) then
				Analytics.reportFailure(Analytics.ErrorType.validateMeshBounds_TooLarge)
				return false, getErrors(name, boundsSize, attachment)
			end
		end
	end

	return true
end

return if getFFlagUseUGCValidationContext() then validateMeshBounds else DEPRECATED_validateMeshBounds :: never
