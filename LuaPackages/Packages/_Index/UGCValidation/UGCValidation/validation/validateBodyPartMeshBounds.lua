--!strict

local root = script.Parent.Parent

local Constants = require(root.Constants)

local validateMeshBounds = require(root.validation.validateMeshBounds)
local FailureReasonsAccumulator = require(root.util.FailureReasonsAccumulator)

local function getMeshInfo(meshHandle: Instance): (string?, Vector3?)
	if meshHandle:IsA("MeshPart") then
		return meshHandle.MeshId, Vector3.new(1, 1, 1)
	elseif meshHandle:IsA("Part") then
		local specialMesh = meshHandle:FindFirstChildOfClass("SpecialMesh")
		if specialMesh then
			return specialMesh.MeshId, specialMesh.Scale
		end
	end
	return nil, nil
end

local function validateBodyPartMeshBoundsInternal(meshHandle: BasePart, validationData: any): (boolean, { string }?)
	local attachment: Attachment? = meshHandle:FindFirstChild(validationData.rigAttachmentToParentName) :: Attachment
	if not attachment then
		return false,
			{ "Rig Attachment " .. validationData.rigAttachmentToParentName .. ", not found under " .. meshHandle.Name }
	end

	local meshId, meshScale = getMeshInfo(meshHandle)
	if not meshId or not meshScale then
		return false, { meshHandle.Name .. " is not the correct Instance type" }
	end

	local notUsed = Enum.AssetType.DynamicHead -- IMPORTANT: remove notUsed when FFlagUGCValidateBodyParts is removed
	local success: boolean, failedReason: any = validateMeshBounds(
		meshHandle :: BasePart,
		attachment :: Attachment,
		meshId :: string,
		meshScale :: Vector3,
		notUsed,
		validationData.meshBounds,
		meshHandle.Name
	)

	if not success then
		local allReasons = { meshHandle.Name .. " failed!" }
		table.insert(allReasons, table.concat(failedReason, "\n"))
		return false, allReasons
	end
	return true
end

local function validateBodyPartMeshBounds(inst: Instance, assetTypeEnum: Enum.AssetType): (boolean, { string }?)
	local assetInfo = Constants.ASSET_TYPE_INFO[assetTypeEnum]
	if Enum.AssetType.DynamicHead == assetTypeEnum then
		return validateBodyPartMeshBoundsInternal(inst :: BasePart, assetInfo.subParts.Head)
	end

	local reasonsAccumulator = FailureReasonsAccumulator.new()

	for subPartName, validationData in pairs(assetInfo.subParts) do
		local meshHandle: BasePart? = inst:FindFirstChild(subPartName) :: BasePart
		assert(meshHandle) -- expected parts have been checked for existance before calling this function

		if
			not reasonsAccumulator:updateReasons(
				validateBodyPartMeshBoundsInternal(meshHandle :: BasePart, validationData)
			)
		then
			return reasonsAccumulator:getFinalResults()
		end
	end
	return reasonsAccumulator:getFinalResults()
end

return validateBodyPartMeshBounds
