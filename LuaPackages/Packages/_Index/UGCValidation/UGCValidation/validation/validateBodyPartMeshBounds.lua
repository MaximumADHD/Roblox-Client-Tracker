--!strict

--[[
	validateBodyPartMeshBounds.lua iterates over all the render and wrap meshes for body parts in the asset and checks they are similar in size
]]

local root = script.Parent.Parent

local Analytics = require(root.Analytics)
local Constants = require(root.Constants)

local validateMeshComparison = require(root.validation.validateMeshComparison)
local getMeshSize = require(root.util.getMeshSize)

local FailureReasonsAccumulator = require(root.util.FailureReasonsAccumulator)

local function getMeshInfo(inst: Instance): string?
	if inst:IsA("WrapTarget") then
		return inst.CageMeshId
	elseif inst:IsA("MeshPart") then
		return inst.MeshId
	end
	return nil
end

local function validateWrapTargetComparison(meshScale: Vector3, meshHandle: MeshPart, isServer: boolean?)
	local meshId = getMeshInfo(meshHandle)
	assert(meshId)

	local wrapTarget = meshHandle:FindFirstChildWhichIsA("WrapTarget")
	assert(wrapTarget, "Missing WrapTarget child for " .. meshHandle.Name)
	local wrapMeshId = getMeshInfo(wrapTarget)

	local mesh = { id = meshId :: string, scale = meshScale, context = meshHandle.Name }
	local otherMesh = {
		id = wrapMeshId :: string,
		scale = meshScale,
		context = wrapTarget.ClassName,
	}
	return validateMeshComparison(mesh, otherMesh, Constants.RenderVsWrapMeshMaxDiff, isServer)
end

local function calculateMeshSize(meshHandle: MeshPart, isServer: boolean?): (boolean, { string }?, Vector3?)
	local success, meshSize = pcall(getMeshSize, meshHandle.MeshId)
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

local function validateInternal(meshHandle: MeshPart, _validationData: any, isServer: boolean?): (boolean, { string }?)
	local success, failureReasons, meshSize = calculateMeshSize(meshHandle, isServer)
	if (not success) or not meshSize then
		return success, failureReasons
	end
	local meshScale = meshHandle.Size / meshSize :: Vector3

	local reasonsAccumulator = FailureReasonsAccumulator.new()
	reasonsAccumulator:updateReasons(validateWrapTargetComparison(meshScale, meshHandle, isServer))
	return reasonsAccumulator:getFinalResults()
end

local function validateBodyPartMeshBounds(
	inst: Instance,
	assetTypeEnum: Enum.AssetType,
	isServer: boolean?
): (boolean, { string }?)
	local assetInfo = Constants.ASSET_TYPE_INFO[assetTypeEnum]
	if Enum.AssetType.DynamicHead == assetTypeEnum then
		return validateInternal(inst :: MeshPart, assetInfo.subParts.Head, isServer)
	end

	local reasonsAccumulator = FailureReasonsAccumulator.new()

	for subPartName, validationData in pairs(assetInfo.subParts) do
		local meshHandle: MeshPart? = inst:FindFirstChild(subPartName) :: MeshPart
		assert(meshHandle) -- expected parts have been checked for existance before calling this function

		reasonsAccumulator:updateReasons(validateInternal(meshHandle :: MeshPart, validationData, isServer))
	end
	return reasonsAccumulator:getFinalResults()
end

return validateBodyPartMeshBounds
