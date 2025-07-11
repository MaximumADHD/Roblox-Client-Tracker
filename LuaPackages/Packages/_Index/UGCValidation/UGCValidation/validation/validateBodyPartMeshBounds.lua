--[[
	validateBodyPartMeshBounds.lua iterates over all the render and wrap meshes for body parts in the asset and checks they are similar in size
]]

local root = script.Parent.Parent

local Types = require(root.util.Types)
local pcallDeferred = require(root.util.pcallDeferred)

local Analytics = require(root.Analytics)
local Constants = require(root.Constants)

local validateMeshComparison = require(root.validation.validateMeshComparison)
local getMeshSize = require(root.util.getMeshSize)
local getEditableMeshFromContext = require(root.util.getEditableMeshFromContext)
local getExpectedPartSize = require(root.util.getExpectedPartSize)
local getMeshInfo = require(root.util.getMeshInfo)

local FailureReasonsAccumulator = require(root.util.FailureReasonsAccumulator)

local getFFlagUGCValidationConsolidateGetMeshInfos = require(root.flags.getFFlagUGCValidationConsolidateGetMeshInfos)

-- TODO: Remove with FFlagConsolidateGetMeshInfos
local function DEPRECATED_getMeshInfoHelper(
	inst: Instance,
	fieldName: string,
	contentId: string,
	meshScale: Vector3,
	contextName: string,
	validationContext: Types.ValidationContext
): (boolean, Types.MeshInfo)
	local meshInfo = {
		fullName = inst:GetFullName(),
		contentId = contentId,
		fieldName = fieldName,
		context = contextName,
		scale = meshScale,
	} :: Types.MeshInfo

	local success, editableMesh = getEditableMeshFromContext(inst, fieldName, validationContext)
	if not success then
		return false, meshInfo
	end

	meshInfo.editableMesh = editableMesh :: EditableMesh

	return true, meshInfo
end

-- TODO: Remove with FFlagConsolidateGetMeshInfos
local function DEPRECATED_getMeshInfo(
	inst: Instance,
	meshScale: Vector3,
	validationContext: Types.ValidationContext
): (boolean, Types.MeshInfo?)
	if inst:IsA("WrapTarget") then
		return DEPRECATED_getMeshInfoHelper(
			inst,
			"CageMeshId",
			(inst :: WrapTarget).CageMeshId,
			meshScale,
			inst.ClassName,
			validationContext
		)
	elseif inst:IsA("MeshPart") then
		return DEPRECATED_getMeshInfoHelper(
			inst,
			"MeshId",
			(inst :: MeshPart).MeshId,
			meshScale,
			inst.Name,
			validationContext
		)
	end

	return false
end

local function validateWrapTargetComparison(
	meshScale: Vector3,
	meshHandle: MeshPart,
	validationContext: Types.ValidationContext
): (boolean, { string }?)
	local getMeshInfoSuccess, meshInfoErrors, meshInfo
	if getFFlagUGCValidationConsolidateGetMeshInfos() then
		getMeshInfoSuccess, meshInfoErrors, meshInfo =
			getMeshInfo(meshHandle, Constants.MESH_CONTENT_TYPE.RENDER_MESH, validationContext)
	else
		getMeshInfoSuccess, meshInfo = DEPRECATED_getMeshInfo(meshHandle, meshScale, validationContext)
	end
	if not getMeshInfoSuccess then
		return false,
			if getFFlagUGCValidationConsolidateGetMeshInfos() then meshInfoErrors else { "Failed to load mesh data" }
	end

	local wrapTarget = meshHandle:FindFirstChildWhichIsA("WrapTarget")
	assert(wrapTarget, "Missing WrapTarget child for " .. meshHandle.Name)
	local getOtherMeshInfoSuccess, wrapMeshInfoErrors, wrapMeshInfo
	if getFFlagUGCValidationConsolidateGetMeshInfos() then
		getOtherMeshInfoSuccess, wrapMeshInfoErrors, wrapMeshInfo =
			getMeshInfo(wrapTarget, Constants.MESH_CONTENT_TYPE.OUTER_CAGE, validationContext)
	else
		getOtherMeshInfoSuccess, wrapMeshInfo = DEPRECATED_getMeshInfo(wrapTarget, meshScale, validationContext)
	end
	if not getOtherMeshInfoSuccess then
		return false,
			if getFFlagUGCValidationConsolidateGetMeshInfos()
				then wrapMeshInfoErrors
				else { "Failed to load mesh data" }
	end

	if getFFlagUGCValidationConsolidateGetMeshInfos() then
		(meshInfo :: Types.MeshInfo).scale = meshScale;
		(wrapMeshInfo :: Types.MeshInfo).scale = meshScale
	end

	return validateMeshComparison(
		meshInfo :: Types.MeshInfo,
		wrapMeshInfo :: Types.MeshInfo,
		Constants.RenderVsWrapMeshMaxDiff,
		validationContext
	)
end

local function calculateMeshSize(
	meshHandle: MeshPart,
	validationContext: Types.ValidationContext
): (boolean, { string }?, Vector3?)
	local meshInfo = {
		fullName = meshHandle:GetFullName(),
		fieldName = "MeshId",
		contentId = meshHandle.MeshId,
		context = meshHandle.Name,
	} :: Types.MeshInfo

	local getEditableMeshSuccess, editableMesh = getEditableMeshFromContext(meshHandle, "MeshId", validationContext)
	if not getEditableMeshSuccess then
		return false,
			{
				string.format(
					"Mesh for '%s' failed to load. Make sure the mesh exists and try again.",
					meshInfo.fullName
				),
			}
	end

	meshInfo.editableMesh = editableMesh :: EditableMesh

	local success, meshSize = pcallDeferred(function()
		return getMeshSize(meshInfo)
	end, validationContext)

	if not success then
		Analytics.reportFailure(Analytics.ErrorType.validateBodyPartMeshBounds_FailedToLoadMesh, nil, validationContext)
		local errorMessage = "Failed to read mesh"
		if validationContext.isServer then
			-- there could be many reasons that an error occurred, the asset is not necessarilly incorrect, we just didn't get as
			-- far as testing it, so we throw an error which means the RCC will try testing the asset again, rather than returning false
			-- which would mean the asset failed validation
			error(errorMessage)
		end
		return false, { errorMessage }
	end
	return true, nil, meshSize
end

local function validateInternal(
	meshHandle: MeshPart,
	validationContext: Types.ValidationContext
): (boolean, { string }?)
	local startTime = tick()

	local success, failureReasons, meshSize = calculateMeshSize(meshHandle, validationContext)
	if (not success) or not meshSize then
		return success, failureReasons
	end

	local meshScale = getExpectedPartSize(meshHandle, validationContext) / meshSize

	local reasonsAccumulator = FailureReasonsAccumulator.new()

	reasonsAccumulator:updateReasons(validateWrapTargetComparison(meshScale, meshHandle, validationContext))

	Analytics.recordScriptTime(script.Name, startTime, validationContext)
	return reasonsAccumulator:getFinalResults()
end

local function validateBodyPartMeshBounds(
	inst: Instance,
	validationContext: Types.ValidationContext
): (boolean, { string }?)
	local assetTypeEnum = validationContext.assetTypeEnum

	local assetInfo = Constants.ASSET_TYPE_INFO[assetTypeEnum]
	if Enum.AssetType.DynamicHead == assetTypeEnum then
		return validateInternal(inst :: MeshPart, validationContext)
	end

	local reasonsAccumulator = FailureReasonsAccumulator.new()

	for subPartName in pairs(assetInfo.subParts) do
		local meshHandle: MeshPart? = inst:FindFirstChild(subPartName) :: MeshPart
		assert(meshHandle) -- expected parts have been checked for existance before calling this function

		reasonsAccumulator:updateReasons(validateInternal(meshHandle :: MeshPart, validationContext))
	end
	return reasonsAccumulator:getFinalResults()
end

return validateBodyPartMeshBounds
