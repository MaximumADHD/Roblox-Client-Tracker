local root = script.Parent.Parent

local Types = require(root.util.Types)
local Analytics = require(root.Analytics)
local Constants = require(root.Constants)

local FailureReasonsAccumulator = require(root.util.FailureReasonsAccumulator)
local prettyPrintVector3 = require(root.util.prettyPrintVector3)
local floatEquals = require(root.util.floatEquals)
local BoundsCalculator = require(root.util.BoundsCalculator)
local BoundsDataUtils = require(root.util.BoundsDataUtils)
local MeshSpaceUtils = require(root.util.MeshSpaceUtils)

local getFStringUGCValidationAttachmentErrorLink = require(root.flags.getFStringUGCValidationAttachmentErrorLink)
local getFFlagRefactorBodyAttachmentOrientationsCheck =
	require(root.flags.getFFlagRefactorBodyAttachmentOrientationsCheck)

-- this function relies on validateMeshIsAtOrigin() in validateDescendantMeshMetrics.lua to catch meshes not built at the origin
local function validateInMeshSpace(
	att: Attachment,
	part: MeshPart,
	boundsInfoMeshSpace: any,
	validationContext: Types.ValidationContext,
	transformData: any
): (boolean, { string }?)
	local world = transformData.cframe * att.CFrame
	local meshCenterOpt = BoundsDataUtils.calculateBoundsCenters(transformData.boundsData)
	local meshDimensionsOpt = BoundsDataUtils.calculateBoundsDimensions(transformData.boundsData)
	if not meshCenterOpt or not meshDimensionsOpt then
		return false, { "Missing mesh data for " .. part.Name }
	end
	local attWorldOffset = (world.Position - (meshCenterOpt :: Vector3))
	local meshHalfSize = (meshDimensionsOpt :: Vector3) / 2
	local posMeshSpace = (attWorldOffset / meshHalfSize) :: any

	local minMeshSpace = boundsInfoMeshSpace.min
	local maxMeshSpace = boundsInfoMeshSpace.max
	for _, dimension in { "X", "Y", "Z" } do
		if
			posMeshSpace[dimension] < (minMeshSpace :: any)[dimension]
			or posMeshSpace[dimension] > (maxMeshSpace :: any)[dimension]
		then
			Analytics.reportFailure(
				Analytics.ErrorType.validateBodyPartChildAttachmentBounds_InvalidAttachmentPosition,
				nil,
				validationContext
			)

			local attachmentClampedCFrame =
				MeshSpaceUtils.clampAttachmentToBounds(att, transformData, boundsInfoMeshSpace, 0.001)

			assert(meshCenterOpt and meshDimensionsOpt, "meshCenterOpt and meshDimensionsOpt must be defined")
			local acceptableCFrameLocal, acceptableDimensions = MeshSpaceUtils.calculateAcceptableBoundsLocalSpace(
				boundsInfoMeshSpace,
				transformData,
				meshDimensionsOpt :: Vector3,
				meshCenterOpt :: Vector3
			)
			local acceptablePosition = acceptableCFrameLocal.Position
			local acceptableOriX, acceptableOriY, acceptableOriZ = acceptableCFrameLocal.Rotation:ToOrientation()
			local acceptableOrientation =
				Vector3.new(math.deg(acceptableOriX), math.deg(acceptableOriY), math.deg(acceptableOriZ))

			return false,
				{
					string.format(
						"Attachment (%s) in %s is placed at position [%s] that is outside the valid range. The closest valid position is [%s]. (the attachment must be within the oriented bounding box - Position: [%s], Orientation: [%s], Size: [%s]%s)",
						att.Name,
						part.Name,
						prettyPrintVector3(att.CFrame.Position, 3),
						prettyPrintVector3(attachmentClampedCFrame.Position, 3),
						prettyPrintVector3(acceptablePosition, 3),
						prettyPrintVector3(acceptableOrientation, 3),
						prettyPrintVector3(acceptableDimensions, 3),
						if getFStringUGCValidationAttachmentErrorLink() ~= ""
							then ". See " .. getFStringUGCValidationAttachmentErrorLink() .. " for further explanation"
							else ""
					),
				}
		end
	end
	return true
end

-- NOTE: All FindFirstChild() calls will succeed based on all expected parts being checked for existance before calling this function
local function checkAll(
	meshHandle: MeshPart,
	_isServer: boolean?,
	partData: any,
	validationContext: Types.ValidationContext,
	transformData: any
): (boolean, { string }?)
	local reasonsAccumulator = FailureReasonsAccumulator.new()

	local rigAttachmentToParent: Attachment? =
		meshHandle:FindFirstChild(partData.rigAttachmentToParent.name) :: Attachment
	assert(rigAttachmentToParent)

	reasonsAccumulator:updateReasons(
		validateInMeshSpace(
			rigAttachmentToParent :: Attachment,
			meshHandle,
			partData.rigAttachmentToParent.bounds,
			validationContext,
			transformData
		)
	)

	for childAttachmentName, childAttachmentInfo in pairs(partData.otherAttachments) do
		local childAttachment: Attachment? = meshHandle:FindFirstChild(childAttachmentName) :: Attachment
		assert(childAttachment)

		reasonsAccumulator:updateReasons(
			validateInMeshSpace(
				childAttachment :: Attachment,
				meshHandle,
				childAttachmentInfo.bounds,
				validationContext,
				transformData
			)
		)
	end
	return reasonsAccumulator:getFinalResults()
end

local function validateAttachmentRotation(
	inst: Instance,
	validationContext: Types.ValidationContext
): (boolean, { string }?)
	-- remove function when cleaning up FFlagRefactorBodyAttachmentOrientationsCheck
	assert(Analytics.ErrorType.validateBodyPartChildAttachmentBounds_AttachmentRotated)
	local reasonsAccumulator = FailureReasonsAccumulator.new()

	for _, desc: Attachment in inst:GetDescendants() :: { any } do
		local isRigAttachment = desc.ClassName == "Attachment" and string.find(desc.Name, "RigAttachment")
		if not isRigAttachment then
			continue
		end

		local x, y, z = desc.CFrame:ToOrientation()
		if not floatEquals(x, 0) or not floatEquals(y, 0) or not floatEquals(z, 0) then
			Analytics.reportFailure(
				Analytics.ErrorType.validateBodyPartChildAttachmentBounds_AttachmentRotated,
				nil,
				validationContext
			)
			reasonsAccumulator:updateReasons(false, {
				string.format(
					"Detected rotation in Attachment '%s'. You must reset all rotation values for this attachment to zero.",
					desc:GetFullName()
				),
			})
		end
	end

	return reasonsAccumulator:getFinalResults()
end

local function validateBodyPartChildAttachmentBounds(
	inst: Instance,
	validationContext: Types.ValidationContext
): (boolean, { string }?)
	local startTime = tick()

	local assetTypeEnum = validationContext.assetTypeEnum
	local isServer = validationContext.isServer
	assert(assetTypeEnum)

	local assetInfo = Constants.ASSET_TYPE_INFO[assetTypeEnum]
	assert(assetInfo)

	local reasonsAccumulator = FailureReasonsAccumulator.new()

	if not getFFlagRefactorBodyAttachmentOrientationsCheck() then
		reasonsAccumulator:updateReasons(validateAttachmentRotation(inst, validationContext))
	end

	local successData, failureReasonsData, boundsTransformDataOpt =
		BoundsCalculator.calculateIndividualAssetPartsData(inst, validationContext)
	if not successData then
		return successData, failureReasonsData
	end
	local boundsTransformData = boundsTransformDataOpt :: { string: any }

	if Enum.AssetType.DynamicHead == assetTypeEnum then
		local boundsTransformDataForPart = boundsTransformData[inst.Name]
		reasonsAccumulator:updateReasons(
			checkAll(inst :: MeshPart, isServer, assetInfo.subParts.Head, validationContext, boundsTransformDataForPart)
		)
	else
		for subPartName, partData in pairs(assetInfo.subParts) do
			local meshHandle: MeshPart? = inst:FindFirstChild(subPartName) :: MeshPart
			assert(meshHandle)

			local boundsTransformDataForPart = boundsTransformData[subPartName]
			reasonsAccumulator:updateReasons(
				checkAll(meshHandle :: MeshPart, isServer, partData, validationContext, boundsTransformDataForPart)
			)
		end
	end

	Analytics.recordScriptTime(script.Name, startTime, validationContext)
	return reasonsAccumulator:getFinalResults()
end

return validateBodyPartChildAttachmentBounds
