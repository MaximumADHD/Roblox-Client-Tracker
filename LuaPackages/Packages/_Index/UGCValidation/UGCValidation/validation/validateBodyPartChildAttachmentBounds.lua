--!strict

local root = script.Parent.Parent

local Types = require(root.util.Types)
local Analytics = require(root.Analytics)
local Constants = require(root.Constants)

local FailureReasonsAccumulator = require(root.util.FailureReasonsAccumulator)
local prettyPrintVector3 = require(root.util.prettyPrintVector3)
local floatEquals = require(root.util.floatEquals)

local getFFlagUseUGCValidationContext = require(root.flags.getFFlagUseUGCValidationContext)
local getFFlagCheckOrientationOnAllAttachments = require(root.flags.getFFlagCheckOrientationOnAllAttachments)

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
			Analytics.reportFailure(Analytics.ErrorType.validateBodyPartChildAttachmentBounds_InvalidAttachmentPosition)
			if getFFlagUseUGCValidationContext() then
				return false,
					{
						string.format(
							"Attachment (%s) in %s is placed at a position [%s] that is outside the valid range of ([%s] to [%s]). You need to adjust the attachment position.",
							att.Name,
							part.Name,
							prettyPrintVector3(att.CFrame.Position),
							prettyPrintVector3(minMeshSpace * meshHalfSize),
							prettyPrintVector3(maxMeshSpace * meshHalfSize)
						),
					}
			else
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
	end
	return true
end

-- NOTE: All FindFirstChild() calls will succeed based on all expected parts being checked for existance before calling this function
local function checkAll(meshHandle: MeshPart, _isServer: boolean?, partData: any): (boolean, { string }?)
	local reasonsAccumulator = FailureReasonsAccumulator.new()

	local rigAttachmentToParent: Attachment? =
		meshHandle:FindFirstChild(partData.rigAttachmentToParent.name) :: Attachment
	assert(rigAttachmentToParent)

	reasonsAccumulator:updateReasons(
		validateInMeshSpace(rigAttachmentToParent :: Attachment, meshHandle, partData.rigAttachmentToParent.bounds)
	)

	for childAttachmentName, childAttachmentInfo in pairs(partData.otherAttachments) do
		local childAttachment: Attachment? = meshHandle:FindFirstChild(childAttachmentName) :: Attachment
		assert(childAttachment)

		reasonsAccumulator:updateReasons(
			validateInMeshSpace(childAttachment :: Attachment, meshHandle, childAttachmentInfo.bounds)
		)
	end
	return reasonsAccumulator:getFinalResults()
end

local function validateAttachmentRotation(inst: Instance): (boolean, { string }?)
	local reasonsAccumulator = FailureReasonsAccumulator.new()

	for _, desc in inst:GetDescendants() do
		if getFFlagCheckOrientationOnAllAttachments() then
			local isAttachment = desc.ClassName == "Attachment"
			if not isAttachment then
				continue
			end
		else
			local isRigAttachment = desc.ClassName == "Attachment" and string.find(desc.Name, "RigAttachment")
			if not isRigAttachment then
				continue
			end
		end

		local x, y, z = desc.CFrame:ToOrientation()
		if not floatEquals(x, 0) or not floatEquals(y, 0) or not floatEquals(z, 0) then
			Analytics.reportFailure(Analytics.ErrorType.validateBodyPartChildAttachmentBounds_AttachmentRotated)
			if getFFlagUseUGCValidationContext() then
				reasonsAccumulator:updateReasons(false, {
					string.format(
						"Detected rotation in Attachment '%s'. You must reset all rotation values for this attachment to zero.",
						desc:GetFullName()
					),
				})
			else
				reasonsAccumulator:updateReasons(
					false,
					{ `Attachment {(desc.Parent :: Instance).Name}.{desc.Name} should not be rotated!` }
				)
			end
		end
	end

	return reasonsAccumulator:getFinalResults()
end

local function validateBodyPartChildAttachmentBounds(
	inst: Instance,
	validationContext: Types.ValidationContext
): (boolean, { string }?)
	local assetTypeEnum = validationContext.assetTypeEnum
	local isServer = validationContext.isServer

	local assetInfo = Constants.ASSET_TYPE_INFO[assetTypeEnum]
	assert(assetInfo)

	local reasonsAccumulator = FailureReasonsAccumulator.new()

	reasonsAccumulator:updateReasons(validateAttachmentRotation(inst))

	if Enum.AssetType.DynamicHead == assetTypeEnum then
		reasonsAccumulator:updateReasons(checkAll(inst :: MeshPart, isServer, assetInfo.subParts.Head))
	else
		for subPartName, partData in pairs(assetInfo.subParts) do
			local meshHandle: MeshPart? = inst:FindFirstChild(subPartName) :: MeshPart
			assert(meshHandle)

			reasonsAccumulator:updateReasons(checkAll(meshHandle :: MeshPart, isServer, partData))
		end
	end
	return reasonsAccumulator:getFinalResults()
end

local function DEPRECATED_validateBodyPartChildAttachmentBounds(
	inst: Instance,
	assetTypeEnum: Enum.AssetType,
	isServer: boolean?
): (boolean, { string }?)
	local assetInfo = Constants.ASSET_TYPE_INFO[assetTypeEnum]
	assert(assetInfo)

	local reasonsAccumulator = FailureReasonsAccumulator.new()

	reasonsAccumulator:updateReasons(validateAttachmentRotation(inst))

	if Enum.AssetType.DynamicHead == assetTypeEnum then
		reasonsAccumulator:updateReasons(checkAll(inst :: MeshPart, isServer, assetInfo.subParts.Head))
	else
		for subPartName, partData in pairs(assetInfo.subParts) do
			local meshHandle: MeshPart? = inst:FindFirstChild(subPartName) :: MeshPart
			assert(meshHandle)

			reasonsAccumulator:updateReasons(checkAll(meshHandle :: MeshPart, isServer, partData))
		end
	end
	return reasonsAccumulator:getFinalResults()
end

return if getFFlagUseUGCValidationContext()
	then validateBodyPartChildAttachmentBounds
	else DEPRECATED_validateBodyPartChildAttachmentBounds :: never
