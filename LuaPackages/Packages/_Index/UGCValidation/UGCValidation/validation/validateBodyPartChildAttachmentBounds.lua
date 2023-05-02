--!strict

local root = script.Parent.Parent

local Constants = require(root.Constants)

local FailureReasonsAccumulator = require(root.util.FailureReasonsAccumulator)

local function checkBounds(
	meshHandle: BasePart,
	rigAttachmentToParent: Attachment,
	childAttachment: Attachment,
	boundsInfo: any
): (boolean, { string }?)
	local DEFAULT_OFFSET = Vector3.new(0, 0, 0)

	local boundsOffset = boundsInfo.offset or DEFAULT_OFFSET
	local rigAttachmentToParentCFrameInWorldSpace = meshHandle.CFrame * rigAttachmentToParent.CFrame
	local boundsCFrame = rigAttachmentToParentCFrameInWorldSpace * CFrame.new(boundsOffset)

	local childAttachmentCFrameInWorldSpace = meshHandle.CFrame * childAttachment.CFrame

	local function pointInBounds(worldPos, boundsCF, boundsSize)
		local objectPos = boundsCF:PointToObjectSpace(worldPos)
		return objectPos.X >= -boundsSize.X / 2
			and objectPos.X <= boundsSize.X / 2
			and objectPos.Y >= -boundsSize.Y / 2
			and objectPos.Y <= boundsSize.Y / 2
			and objectPos.Z >= -boundsSize.Z / 2
			and objectPos.Z <= boundsSize.Z / 2
	end

	if not pointInBounds(childAttachmentCFrameInWorldSpace.Position, boundsCFrame, boundsInfo.size) then
		return false, { "Attachment " .. childAttachment.Name .. " is out of bounds in " .. meshHandle.Name }
	end
	return true
end

local function validateBodyPartChildAttachmentBounds(
	inst: Instance,
	assetTypeEnum: Enum.AssetType
): (boolean, { string }?)
	local assetInfo = Constants.ASSET_TYPE_INFO[assetTypeEnum]
	assert(assetInfo)

	local reasonsAccumulator = FailureReasonsAccumulator.new()

	-- NOTE: All FindFirstChild() calls will succeed based on all expected parts being checked for existance before calling this function
	local function checkAll(meshHandle: BasePart, partData: any): boolean
		local rigAttachmentToParent: Attachment? =
			meshHandle:FindFirstChild(partData.rigAttachmentToParentName) :: Attachment
		assert(rigAttachmentToParent)

		for childAttachmentName, childAttachmentInfo in pairs(partData.otherAttachments) do
			local childAttachment: Attachment? = meshHandle:FindFirstChild(childAttachmentName) :: Attachment
			assert(childAttachment)

			if
				not reasonsAccumulator:updateReasons(
					checkBounds(
						meshHandle,
						rigAttachmentToParent :: Attachment,
						childAttachment :: Attachment,
						childAttachmentInfo.bounds
					)
				)
			then
				return false
			end
		end
		return true
	end

	if Enum.AssetType.DynamicHead == assetTypeEnum then
		checkAll(inst :: BasePart, assetInfo.subParts.Head)
	else
		for subPartName, partData in pairs(assetInfo.subParts) do
			local meshHandle: BasePart? = (inst:FindFirstChild(subPartName) :: BasePart)
			assert(meshHandle)
			if not checkAll(meshHandle :: BasePart, partData) then
				break
			end
		end
	end
	return reasonsAccumulator:getFinalResults()
end

return validateBodyPartChildAttachmentBounds
