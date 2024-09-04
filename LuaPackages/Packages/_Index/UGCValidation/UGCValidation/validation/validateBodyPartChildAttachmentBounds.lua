--!strict

local root = script.Parent.Parent

local Types = require(root.util.Types)
local Analytics = require(root.Analytics)
local Constants = require(root.Constants)

local FailureReasonsAccumulator = require(root.util.FailureReasonsAccumulator)
local prettyPrintVector3 = require(root.util.prettyPrintVector3)
local floatEquals = require(root.util.floatEquals)
local getDiffBetweenOrientations = require(root.util.getDiffBetweenOrientations)
local ANGLE_EPSILON = 0.01

local getFFlagCheckOrientationOnAllAttachments = require(root.flags.getFFlagCheckOrientationOnAllAttachments)

local maxOrientationOffsets = {
	["RootAttachment"] = game:DefineFastInt("UGCValidationRootAttachmentThreshold", 0),
	["LeftGripAttachment"] = game:DefineFastInt("UGCValidationLeftGripAttachmentThreshold", 0),
	["RightGripAttachment"] = game:DefineFastInt("UGCValidationRightGripAttachmentThreshold", 0),
	["FaceFrontAttachment"] = game:DefineFastInt("UGCValidationFaceFrontAttachmentThreshold", 90),
	["HatAttachment"] = game:DefineFastInt("UGCValidationHatAttachmentThreshold", 90),
	["HairAttachment"] = game:DefineFastInt("UGCValidationHairAttachmentThreshold", 90),
	["FaceCenterAttachment"] = game:DefineFastInt("UGCValidationFaceCenterAttachmentThreshold", 90),
	["RightFootAttachment"] = game:DefineFastInt("UGCValidationRightFootAttachmentThreshold", 90),
	["LeftFootAttachment"] = game:DefineFastInt("UGCValidationLeftFootAttachmentThreshold", 90),
	["BodyFrontAttachment"] = game:DefineFastInt("UGCValidationBodyFrontAttachmentThreshold", 90),
	["BodyBackAttachment"] = game:DefineFastInt("UGCValidationBodyBackAttachmentThreshold", 90),
	["LeftCollarAttachment"] = game:DefineFastInt("UGCValidationLeftCollarAttachmentThreshold", 90),
	["RightCollarAttachment"] = game:DefineFastInt("UGCValidationRightCollarAttachmentThreshold", 90),
	["NeckAttachment"] = game:DefineFastInt("UGCValidationNeckAttachmentThreshold", 90),
	["WaistCenterAttachment"] = game:DefineFastInt("UGCValidationWaistCenterAttachmentThreshold", 90),
	["WaistFrontAttachment"] = game:DefineFastInt("UGCValidationWaistFrontAttachmentThreshold", 90),
	["WaistBackAttachment"] = game:DefineFastInt("UGCValidationWaistBackAttachmentThreshold", 90),
	["LeftShoulderAttachment"] = game:DefineFastInt("UGCValidationLeftShoulderAttachmentThreshold", 90),
	["RightShoulderAttachment"] = game:DefineFastInt("UGCValidationRightShoulderAttachmentThreshold", 90),
}

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

			local isRigAttachment = string.find(desc.Name, "RigAttachment")
			if isRigAttachment then
				local x, y, z = desc.CFrame:ToOrientation()
				if not floatEquals(x, 0) or not floatEquals(y, 0) or not floatEquals(z, 0) then
					Analytics.reportFailure(Analytics.ErrorType.validateBodyPartChildAttachmentBounds_AttachmentRotated)
					reasonsAccumulator:updateReasons(false, {
						string.format(
							"Detected rotation in Attachment '%s'. You must reset all rotation values for this attachment to zero.",
							desc:GetFullName()
						),
					})
				end
			elseif maxOrientationOffsets[desc.Name] ~= nil then
				local isGrip = string.find(desc.Name, "Grip") -- Left and Right arm grips have a unique orientation (-90, 0, 0)
				local requiredOrientation = isGrip and CFrame.Angles(math.rad(-90), 0, 0) or CFrame.Angles(0, 0, 0)

				local orientationOffset = getDiffBetweenOrientations(requiredOrientation, desc.CFrame)
				local maxOffset: number = maxOrientationOffsets[desc.Name]
				if orientationOffset > maxOffset + ANGLE_EPSILON then
					Analytics.reportFailure(Analytics.ErrorType.validateBodyPartChildAttachmentBounds_AttachmentRotated)
					reasonsAccumulator:updateReasons(false, {
						string.format(
							"Detected invalid orientation for '%s'. Attachment orientation should be %s, but can be rotated up to %d degrees in total",
							desc.Name,
							prettyPrintVector3(Vector3.new(isGrip and -90 or 0, 0, 0)),
							math.floor(maxOffset)
						),
					})
				end
			end
		else
			local isRigAttachment = desc.ClassName == "Attachment" and string.find(desc.Name, "RigAttachment")
			if not isRigAttachment then
				continue
			end

			local x, y, z = desc.CFrame:ToOrientation()
			if not floatEquals(x, 0) or not floatEquals(y, 0) or not floatEquals(z, 0) then
				Analytics.reportFailure(Analytics.ErrorType.validateBodyPartChildAttachmentBounds_AttachmentRotated)
				reasonsAccumulator:updateReasons(false, {
					string.format(
						"Detected rotation in Attachment '%s'. You must reset all rotation values for this attachment to zero.",
						desc:GetFullName()
					),
				})
			end
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

	Analytics.recordScriptTime(script.Name, startTime, validationContext)
	return reasonsAccumulator:getFinalResults()
end

return validateBodyPartChildAttachmentBounds
