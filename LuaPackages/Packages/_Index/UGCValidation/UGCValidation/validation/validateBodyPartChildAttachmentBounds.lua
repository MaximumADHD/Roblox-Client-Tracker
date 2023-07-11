--!strict

local root = script.Parent.Parent

local Constants = require(root.Constants)

local FailureReasonsAccumulator = require(root.util.FailureReasonsAccumulator)
local prettyPrintVector3 = require(root.util.prettyPrintVector3)
local getMeshMinMax = require(root.util.getMeshMinMax)

local function validateInMeshSpace(
	att: Attachment,
	part: MeshPart,
	meshMin: Vector3,
	meshMax: Vector3,
	boundsInfoMeshSpace: any
): (boolean, { string }?)
	local meshHalfSize = (meshMax - meshMin) / 2
	--meshCenter needs to be 0,0,0 for this function to work correctly, if it's not 0, 0, 0 then `validateMeshIsAtOrigin() in validateDescendantMeshMetrics.lua will catch it
	local meshCenter = meshMin + meshHalfSize

	local minMeshSpace = boundsInfoMeshSpace.min
	local maxMeshSpace = boundsInfoMeshSpace.max

	local posMeshSpace = ((att.CFrame.Position - meshCenter) / meshHalfSize) :: any
	for _, dimension in { "X", "Y", "Z" } do
		if
			posMeshSpace[dimension] < (minMeshSpace :: any)[dimension]
			or posMeshSpace[dimension] > (maxMeshSpace :: any)[dimension]
		then
			return false,
				{
					string.format(
						"Attachment (%s) in %s, must be within [%s] to [%s]",
						att.Name,
						part.Name,
						prettyPrintVector3(minMeshSpace * meshHalfSize),
						prettyPrintVector3(maxMeshSpace * meshHalfSize)
					),
				}
		end
	end
	return true
end

-- NOTE: All FindFirstChild() calls will succeed based on all expected parts being checked for existance before calling this function
local function checkAll(meshHandle: MeshPart, isServer: boolean, partData: any): (boolean, { string }?)
	local success, failureReasons, meshMinOpt, meshMaxOpt = getMeshMinMax(meshHandle.MeshId, isServer)
	if not success then
		return success, failureReasons
	end

	local meshMin = meshMinOpt :: Vector3
	local meshMax = meshMaxOpt :: Vector3
	local meshSize = Vector3.new(meshMax.X - meshMin.X, meshMax.Y - meshMin.Y, meshMax.Z - meshMin.Z)
	meshMin = meshMin * (meshHandle.Size / meshSize)
	meshMax = meshMax * (meshHandle.Size / meshSize)

	local reasonsAccumulator = FailureReasonsAccumulator.new()

	local rigAttachmentToParent: Attachment? =
		meshHandle:FindFirstChild(partData.rigAttachmentToParent.name) :: Attachment
	assert(rigAttachmentToParent)

	if
		not reasonsAccumulator:updateReasons(
			validateInMeshSpace(
				rigAttachmentToParent :: Attachment,
				meshHandle,
				meshMin,
				meshMax,
				partData.rigAttachmentToParent.bounds
			)
		)
	then
		return reasonsAccumulator:getFinalResults()
	end

	for childAttachmentName, childAttachmentInfo in pairs(partData.otherAttachments) do
		local childAttachment: Attachment? = meshHandle:FindFirstChild(childAttachmentName) :: Attachment
		assert(childAttachment)

		if
			not reasonsAccumulator:updateReasons(
				validateInMeshSpace(
					childAttachment :: Attachment,
					meshHandle,
					meshMin,
					meshMax,
					childAttachmentInfo.bounds
				)
			)
		then
			return reasonsAccumulator:getFinalResults()
		end
	end
	return reasonsAccumulator:getFinalResults()
end

local function validateBodyPartChildAttachmentBounds(
	inst: Instance,
	assetTypeEnum: Enum.AssetType,
	isServer: boolean
): (boolean, { string }?)
	local assetInfo = Constants.ASSET_TYPE_INFO[assetTypeEnum]
	assert(assetInfo)

	local reasonsAccumulator = FailureReasonsAccumulator.new()

	if Enum.AssetType.DynamicHead == assetTypeEnum then
		if not reasonsAccumulator:updateReasons(checkAll(inst :: MeshPart, isServer, assetInfo.subParts.Head)) then
			return reasonsAccumulator:getFinalResults()
		end
	else
		for subPartName, partData in pairs(assetInfo.subParts) do
			local meshHandle: MeshPart? = (inst:FindFirstChild(subPartName) :: MeshPart)
			assert(meshHandle)

			if not reasonsAccumulator:updateReasons(checkAll(meshHandle :: MeshPart, isServer, partData)) then
				return reasonsAccumulator:getFinalResults()
			end
		end
	end
	return reasonsAccumulator:getFinalResults()
end

return validateBodyPartChildAttachmentBounds
