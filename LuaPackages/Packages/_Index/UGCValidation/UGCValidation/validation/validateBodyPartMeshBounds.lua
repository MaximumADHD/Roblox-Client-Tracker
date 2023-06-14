--!strict

--[[
	validateBodyPartMeshBounds.lua iterates over all the render and wrap meshes for a body part asset and checks they are
	within size bounding box requirements
]]

local root = script.Parent.Parent

local Constants = require(root.Constants)

local validateMeshBounds = require(root.validation.validateMeshBounds)
local validateMeshComparison = require(root.validation.validateMeshComparison)

local FailureReasonsAccumulator = require(root.util.FailureReasonsAccumulator)

local function getMeshInfo(inst: Instance): (string?, Vector3?)
	if inst:IsA("WrapTarget") then
		return inst.CageMeshId, Vector3.new(1, 1, 1)
	elseif inst:IsA("MeshPart") then
		return inst.MeshId, Vector3.new(1, 1, 1)
	elseif inst:IsA("Part") then
		local specialMesh = inst:FindFirstChildOfClass("SpecialMesh")
		if specialMesh then
			return specialMesh.MeshId, specialMesh.Scale
		end
	end
	return nil, nil
end

local function validateMeshBoundsInternal(
	handle: BasePart,
	wrap: WrapTarget?,
	attachment: Attachment,
	boundsInfo: any
): (boolean, { string }?)
	assert(handle)
	local meshId, meshScale = getMeshInfo(wrap or handle)
	assert(meshId and meshScale, (handle or wrap :: WrapTarget).Name .. " is not the correct Instance type")

	local notUsed = Enum.AssetType.DynamicHead -- IMPORTANT: remove notUsed when FFlagUGCValidateBodyParts is removed
	local success: boolean, failedReason: any = validateMeshBounds(
		handle :: BasePart,
		attachment :: Attachment,
		meshId :: string,
		meshScale :: Vector3,
		notUsed,
		boundsInfo,
		(wrap or handle).Name
	)

	if not success then
		local messageInst = wrap or handle
		local allReasons = { messageInst.Name .. " (" .. messageInst.ClassName .. ") failed!" }
		table.insert(allReasons, table.concat(failedReason, "\n"))
		return false, allReasons
	end
	return true
end

local function validateBodyPartMeshBoundsInternal(meshHandle: BasePart, validationData: any): (boolean, { string }?)
	local attachment: Attachment? = meshHandle:FindFirstChild(validationData.rigAttachmentToParentName) :: Attachment
	assert(attachment)

	local reasonsAccumulator = FailureReasonsAccumulator.new()
	-- check the render mesh size for the body part
	if
		not reasonsAccumulator:updateReasons(
			validateMeshBoundsInternal(meshHandle :: BasePart, nil, attachment :: Attachment, validationData.meshBounds)
		)
	then
		return reasonsAccumulator:getFinalResults()
	end

	-- earlier code means we wouldn't get this far if the WrapTarget was incorrectly named or missing
	local wrapTarget = meshHandle:FindFirstChildWhichIsA("WrapTarget")
	assert(wrapTarget and wrapTarget.Name == meshHandle.Name, "Missing WrapTarget child for " .. meshHandle.Name)

	-- check the wraptarget cage mesh size for the body part
	if
		not reasonsAccumulator:updateReasons(
			validateMeshBoundsInternal(
				meshHandle :: BasePart,
				wrapTarget,
				attachment :: Attachment,
				validationData.meshBounds
			)
		)
	then
		return reasonsAccumulator:getFinalResults()
	end

	return reasonsAccumulator:getFinalResults()
end

local function validateWrapTargetComparison(meshHandle: BasePart)
	local meshId, meshScale = getMeshInfo(meshHandle)
	assert(meshId and meshScale)

	local wrapTarget = meshHandle:FindFirstChildWhichIsA("WrapTarget")
	assert(wrapTarget and wrapTarget.Name == meshHandle.Name, "Missing WrapTarget child for " .. meshHandle.Name)
	local wrapMeshId, wrapMeshScale = getMeshInfo(wrapTarget)

	local mesh = { id = meshId :: string, scale = meshScale :: Vector3, context = meshHandle.Name }
	local otherMesh = {
		id = wrapMeshId :: string,
		scale = wrapMeshScale :: Vector3,
		context = wrapTarget.ClassName,
	}
	return validateMeshComparison(
		mesh,
		otherMesh,
		Constants.RenderVsWrapMeshComparison.lowerTol,
		Constants.RenderVsWrapMeshComparison.upperTol
	)
end

local function validateInternal(meshHandle: BasePart, validationData: any): (boolean, { string }?)
	local reasonsAccumulator = FailureReasonsAccumulator.new()
	if
		not reasonsAccumulator:updateReasons(validateBodyPartMeshBoundsInternal(meshHandle :: BasePart, validationData))
	then
		return reasonsAccumulator:getFinalResults()
	end

	if not reasonsAccumulator:updateReasons(validateWrapTargetComparison(meshHandle :: BasePart)) then
		return reasonsAccumulator:getFinalResults()
	end
	return reasonsAccumulator:getFinalResults()
end

local function validateBodyPartMeshBounds(inst: Instance, assetTypeEnum: Enum.AssetType): (boolean, { string }?)
	local assetInfo = Constants.ASSET_TYPE_INFO[assetTypeEnum]
	if Enum.AssetType.DynamicHead == assetTypeEnum then
		return validateInternal(inst :: BasePart, assetInfo.subParts.Head)
	end

	local reasonsAccumulator = FailureReasonsAccumulator.new()

	for subPartName, validationData in pairs(assetInfo.subParts) do
		local meshHandle: BasePart? = inst:FindFirstChild(subPartName) :: BasePart
		assert(meshHandle) -- expected parts have been checked for existance before calling this function

		if not reasonsAccumulator:updateReasons(validateInternal(meshHandle :: BasePart, validationData)) then
			return reasonsAccumulator:getFinalResults()
		end
	end
	return reasonsAccumulator:getFinalResults()
end

return validateBodyPartMeshBounds
