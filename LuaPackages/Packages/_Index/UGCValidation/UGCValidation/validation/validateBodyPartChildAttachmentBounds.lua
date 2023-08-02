--!strict

local root = script.Parent.Parent

local Constants = require(root.Constants)

local FailureReasonsAccumulator = require(root.util.FailureReasonsAccumulator)
local prettyPrintVector3 = require(root.util.prettyPrintVector3)
local floatEquals = require(root.util.floatEquals)

-- this function relies on validateMeshIsAtOrigin() in validateDescendantMeshMetrics.lua to catch meshes not built at the origin
local function validateInMeshSpace(att: Attachment, part: MeshPart, boundsInfoMeshSpace: any): (boolean, { string }?)
	local meshHalfSize = part.Size / 2
	local posMeshSpace = (att.CFrame.Position / meshHalfSize) :: any

	local minMeshSpace = boundsInfoMeshSpace.min
	local maxMeshSpace = boundsInfoMeshSpace.max
	for _, dimension in { "X", "Y", "Z" } do
		if
			posMeshSpace[dimension] < (minMeshSpace :: any)[dimension]
			or posMeshSpace[dimension] > (maxMeshSpace :: any)[dimension]
		then
			return false,
				{
					string.format(
						"Attachment (%s) in %s, is at [%s] but must be within [%s] to [%s]",
						att.Name,
						part.Name,
						prettyPrintVector3(att.CFrame.Position),
						prettyPrintVector3(minMeshSpace * meshHalfSize),
						prettyPrintVector3(maxMeshSpace * meshHalfSize)
					),
				}
		end
	end
	return true
end

-- NOTE: All FindFirstChild() calls will succeed based on all expected parts being checked for existance before calling this function
local function checkAll(meshHandle: MeshPart, _isServer: boolean, partData: any): (boolean, { string }?)
	local reasonsAccumulator = FailureReasonsAccumulator.new()

	local rigAttachmentToParent: Attachment? =
		meshHandle:FindFirstChild(partData.rigAttachmentToParent.name) :: Attachment
	assert(rigAttachmentToParent)

	if
		not reasonsAccumulator:updateReasons(
			validateInMeshSpace(rigAttachmentToParent :: Attachment, meshHandle, partData.rigAttachmentToParent.bounds)
		)
	then
		return reasonsAccumulator:getFinalResults()
	end

	for childAttachmentName, childAttachmentInfo in pairs(partData.otherAttachments) do
		local childAttachment: Attachment? = meshHandle:FindFirstChild(childAttachmentName) :: Attachment
		assert(childAttachment)

		if
			not reasonsAccumulator:updateReasons(
				validateInMeshSpace(childAttachment :: Attachment, meshHandle, childAttachmentInfo.bounds)
			)
		then
			return reasonsAccumulator:getFinalResults()
		end
	end
	return reasonsAccumulator:getFinalResults()
end

local function validateAttachmentRotation(inst: Instance): (boolean, { string }?)
	local reasonsAccumulator = FailureReasonsAccumulator.new()

	for _, desc in inst:GetDescendants() do
		local isRigAttachment = desc.ClassName == "Attachment" and string.find(desc.Name, "RigAttachment")
		if not isRigAttachment then
			continue
		end

		local x, y, z = desc.CFrame:ToOrientation()
		if not floatEquals(x, 0) or not floatEquals(y, 0) or not floatEquals(z, 0) then
			if
				not reasonsAccumulator:updateReasons(
					false,
					{ `RigAttachment {(desc.Parent :: Instance).Name}.{desc.Name} should not be rotated!` }
				)
			then
				return reasonsAccumulator:getFinalResults()
			end
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

	if not reasonsAccumulator:updateReasons(validateAttachmentRotation(inst)) then
		return reasonsAccumulator:getFinalResults()
	end

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
