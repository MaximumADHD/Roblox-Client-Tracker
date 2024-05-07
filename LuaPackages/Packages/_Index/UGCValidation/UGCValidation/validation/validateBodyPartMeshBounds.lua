--!strict

--[[
	validateBodyPartMeshBounds.lua iterates over all the render and wrap meshes for body parts in the asset and checks they are similar in size
]]

local root = script.Parent.Parent

local Types = require(root.util.Types)
local pcallDeferred = require(root.util.pcallDeferred)
local getFFlagUGCValidationShouldYield = require(root.flags.getFFlagUGCValidationShouldYield)

local Analytics = require(root.Analytics)
local Constants = require(root.Constants)

local validateMeshComparison = require(root.validation.validateMeshComparison)
local getMeshSize = require(root.util.getMeshSize)
local getEditableMeshFromContext = require(root.util.getEditableMeshFromContext)

local FailureReasonsAccumulator = require(root.util.FailureReasonsAccumulator)

local getFFlagUseUGCValidationContext = require(root.flags.getFFlagUseUGCValidationContext)
local getEngineFeatureUGCValidateEditableMeshAndImage =
	require(root.flags.getEngineFeatureUGCValidateEditableMeshAndImage)

local function getMeshInfoHelper(
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

	if getEngineFeatureUGCValidateEditableMeshAndImage() then
		local success, editableMesh = getEditableMeshFromContext(inst, fieldName, validationContext)
		if not success then
			return false, meshInfo
		end

		meshInfo.editableMesh = editableMesh
	end

	return true, meshInfo
end

local function getMeshInfo(
	inst: Instance,
	meshScale: Vector3,
	validationContext: Types.ValidationContext
): (boolean, Types.MeshInfo?)
	if inst:IsA("WrapTarget") then
		return getMeshInfoHelper(
			inst,
			"CageMeshId",
			(inst :: WrapTarget).CageMeshId,
			meshScale,
			inst.ClassName,
			validationContext
		)
	elseif inst:IsA("MeshPart") then
		return getMeshInfoHelper(inst, "MeshId", (inst :: MeshPart).MeshId, meshScale, inst.Name, validationContext)
	end

	return false
end

local function DEPRECATED_getMeshInfo(inst: Instance): string?
	if inst:IsA("WrapTarget") then
		return inst.CageMeshId
	elseif inst:IsA("MeshPart") then
		return inst.MeshId
	end
	return nil
end

local function validateWrapTargetComparison(
	meshScale: Vector3,
	meshHandle: MeshPart,
	validationContext: Types.ValidationContext
): (boolean, { string }?)
	local getMeshInfoSuccess, meshInfo = getMeshInfo(meshHandle, meshScale, validationContext)
	if not getMeshInfoSuccess then
		return false, { "Failed to load mesh data" }
	end

	local wrapTarget = meshHandle:FindFirstChildWhichIsA("WrapTarget")
	assert(wrapTarget, "Missing WrapTarget child for " .. meshHandle.Name)
	local getOtherMeshInfoSuccess, wrapMeshInfo = getMeshInfo(wrapTarget, meshScale, validationContext)
	if not getOtherMeshInfoSuccess then
		return false, { "Failed to load mesh data" }
	end

	return validateMeshComparison(
		meshInfo :: Types.MeshInfo,
		wrapMeshInfo :: Types.MeshInfo,
		Constants.RenderVsWrapMeshMaxDiff,
		validationContext
	)
end

local function DEPRECATED_validateWrapTargetComparison(meshScale: Vector3, meshHandle: MeshPart, isServer: boolean?)
	local meshId = DEPRECATED_getMeshInfo(meshHandle)
	assert(meshId)

	local wrapTarget = meshHandle:FindFirstChildWhichIsA("WrapTarget")
	assert(wrapTarget, "Missing WrapTarget child for " .. meshHandle.Name)
	local wrapMeshId = DEPRECATED_getMeshInfo(wrapTarget)

	local mesh = { id = meshId :: string, scale = meshScale, context = meshHandle.Name }
	local otherMesh = {
		id = wrapMeshId :: string,
		scale = meshScale,
		context = wrapTarget.ClassName,
	}
	return (validateMeshComparison :: any)(mesh, otherMesh, Constants.RenderVsWrapMeshMaxDiff, isServer)
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

	if getEngineFeatureUGCValidateEditableMeshAndImage() then
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

		meshInfo.editableMesh = editableMesh
	end

	local success, meshSize
	if getFFlagUGCValidationShouldYield() then
		success, meshSize = pcallDeferred(function()
			return getMeshSize(meshInfo)
		end, validationContext)
	else
		success, meshSize = pcall(getMeshSize, meshInfo)
	end

	if not success then
		Analytics.reportFailure(Analytics.ErrorType.validateBodyPartMeshBounds_FailedToLoadMesh)
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

local function DEPRECATED_calculateMeshSize(meshHandle: MeshPart, isServer: boolean?): (boolean, { string }?, Vector3?)
	local success, meshSize = pcall(getMeshSize :: any, meshHandle.MeshId)
	if not success then
		Analytics.reportFailure(Analytics.ErrorType.validateBodyPartMeshBounds_FailedToLoadMesh)
		local errorMessage = "Failed to read mesh"
		if isServer then
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
	local success, failureReasons, meshSize = calculateMeshSize(meshHandle, validationContext)
	if (not success) or not meshSize then
		return success, failureReasons
	end
	local meshScale = meshHandle.Size / meshSize :: Vector3

	local reasonsAccumulator = FailureReasonsAccumulator.new()
	reasonsAccumulator:updateReasons(validateWrapTargetComparison(meshScale, meshHandle, validationContext))
	return reasonsAccumulator:getFinalResults()
end

local function DEPRECATED_validateInternal(
	meshHandle: MeshPart,
	_validationData: any,
	isServer: boolean?
): (boolean, { string }?)
	local success, failureReasons, meshSize = DEPRECATED_calculateMeshSize(meshHandle, isServer)
	if (not success) or not meshSize then
		return success, failureReasons
	end
	local meshScale = meshHandle.Size / meshSize :: Vector3

	local reasonsAccumulator = FailureReasonsAccumulator.new()
	reasonsAccumulator:updateReasons(DEPRECATED_validateWrapTargetComparison(meshScale, meshHandle, isServer))
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

local function DEPRECATED_validateBodyPartMeshBounds(
	inst: Instance,
	assetTypeEnum: Enum.AssetType,
	isServer: boolean?
): (boolean, { string }?)
	local assetInfo = Constants.ASSET_TYPE_INFO[assetTypeEnum]
	if Enum.AssetType.DynamicHead == assetTypeEnum then
		return DEPRECATED_validateInternal(inst :: MeshPart, assetInfo.subParts.Head, isServer)
	end

	local reasonsAccumulator = FailureReasonsAccumulator.new()

	for subPartName, validationData in pairs(assetInfo.subParts) do
		local meshHandle: MeshPart? = inst:FindFirstChild(subPartName) :: MeshPart
		assert(meshHandle) -- expected parts have been checked for existance before calling this function

		reasonsAccumulator:updateReasons(DEPRECATED_validateInternal(meshHandle :: MeshPart, validationData, isServer))
	end
	return reasonsAccumulator:getFinalResults()
end

return if getFFlagUseUGCValidationContext()
	then validateBodyPartMeshBounds
	else DEPRECATED_validateBodyPartMeshBounds :: never
