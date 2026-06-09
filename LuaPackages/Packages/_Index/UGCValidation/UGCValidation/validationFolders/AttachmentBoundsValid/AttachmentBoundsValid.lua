local root = script.Parent.Parent.Parent

local Types = require(root.util.Types)
local Constants = require(root.Constants)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)
local BoundsCalculator = require(root.util.BoundsCalculator)
local BoundsDataUtils = require(root.util.BoundsDataUtils)
local MeshSpaceUtils = require(root.util.MeshSpaceUtils)
local prettyPrintVector3 = require(root.util.prettyPrintVector3)
local R15plusUtils = require(root.util.R15plusUtils)
local getAttachmentCFrameInPartSpace = require(root.util.getAttachmentCFrameInPartSpace)

local getFFlagUGCValidateMigrateSchemaProperties = require(root.flags.getFFlagUGCValidateMigrateSchemaProperties)
local getFStringUGCValidationAttachmentErrorLink = require(root.flags.getFStringUGCValidationAttachmentErrorLink)

local AttachmentBoundsValid = {}

AttachmentBoundsValid.categories = {
	ValidationEnums.UploadCategory.TORSO_AND_LIMBS,
	ValidationEnums.UploadCategory.DYNAMIC_HEAD,
}
AttachmentBoundsValid.requiredData = {
	ValidationEnums.SharedDataMember.rootInstance,
	ValidationEnums.SharedDataMember.uploadEnum,
	ValidationEnums.SharedDataMember.consumerConfig,
}
AttachmentBoundsValid.conditionalData = {
	ValidationEnums.SharedDataMember.renderMeshesData,
}
AttachmentBoundsValid.fflag = getFFlagUGCValidateMigrateSchemaProperties
AttachmentBoundsValid.expectedFailures = {}

local function validateInMeshSpace(
	att: Attachment,
	part: MeshPart,
	boundsInfoMeshSpace: any,
	transformData: any,
	reporter: Types.ValidationReporter
)
	local world = transformData.cframe * getAttachmentCFrameInPartSpace(att)
	local meshCenterOpt = BoundsDataUtils.calculateBoundsCenters(transformData.boundsData)
	local meshDimensionsOpt = BoundsDataUtils.calculateBoundsDimensions(transformData.boundsData)
	if not meshCenterOpt or not meshDimensionsOpt then
		reporter:fail(ErrorSourceStrings.Keys.AttachmentBoundsCalculationFailed, {
			AttachmentName = att.Name,
			PartName = part.Name,
		})
		return
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
			local attachmentClampedCFrame =
				MeshSpaceUtils.clampAttachmentToBounds(att, transformData, boundsInfoMeshSpace, 0.001)

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

			reporter:fail(ErrorSourceStrings.Keys.AttachmentOutOfBounds, {
				AttachmentName = att.Name,
				PartName = part.Name,
				CurrentPosition = prettyPrintVector3(att.CFrame.Position, 3),
				ClosestValidPosition = prettyPrintVector3(attachmentClampedCFrame.Position, 3),
				BoundsPosition = prettyPrintVector3(acceptablePosition, 3),
				BoundsOrientation = prettyPrintVector3(acceptableOrientation, 3),
				BoundsSize = prettyPrintVector3(acceptableDimensions, 3),
				HelpLink = getFStringUGCValidationAttachmentErrorLink(),
			})
			return
		end
	end
end

local function checkAll(meshHandle: MeshPart, partData: any, transformData: any, reporter: Types.ValidationReporter)
	local rigAttachmentToParent: Attachment? = meshHandle:FindFirstChild(
		partData.rigAttachmentToParent.name,
		R15plusUtils.checkFlagEnabledForAllowHrd()
	) :: Attachment
	if not rigAttachmentToParent then
		return
	end

	validateInMeshSpace(
		rigAttachmentToParent :: Attachment,
		meshHandle,
		partData.rigAttachmentToParent.bounds,
		transformData,
		reporter
	)

	for childAttachmentName, childAttachmentInfo in pairs(partData.otherAttachments) do
		local childAttachment: Attachment? =
			meshHandle:FindFirstChild(childAttachmentName, R15plusUtils.checkFlagEnabledForAllowHrd()) :: Attachment
		if not childAttachment then
			continue
		end

		validateInMeshSpace(
			childAttachment :: Attachment,
			meshHandle,
			childAttachmentInfo.bounds,
			transformData,
			reporter
		)
	end
end

AttachmentBoundsValid.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	local instance = data.rootInstance
	local assetTypeEnum = data.uploadEnum.assetType

	local assetInfo = Constants.ASSET_TYPE_INFO[assetTypeEnum]
	if not assetInfo then
		return
	end

	local editableMeshes: { [Instance]: { [string]: { instance: EditableMesh, created: boolean } } } = {}
	if data.renderMeshesData then
		local allInstances = instance:GetDescendants()
		table.insert(allInstances, instance)
		for _, inst in allInstances do
			local meshData = data.renderMeshesData[inst.Name]
			if meshData and meshData.editable then
				editableMeshes[inst] = { MeshId = { instance = meshData.editable, created = false } }
			end
		end
	end

	local validationContext = {
		assetTypeEnum = assetTypeEnum,
		isServer = data.consumerConfig.consumerEnv == ValidationEnums.ConsumerEnv.Backend,
		editableMeshes = editableMeshes,
	} :: any

	local successData, _, boundsTransformDataOpt =
		BoundsCalculator.calculateIndividualAssetPartsData(instance, validationContext)
	if not successData then
		reporter:fail(ErrorSourceStrings.Keys.AttachmentBoundsAssetCalculationFailed, {
			InstancePath = instance:GetFullName(),
		})
		return
	end
	local boundsTransformData = boundsTransformDataOpt :: { [string]: any }

	if Enum.AssetType.DynamicHead == assetTypeEnum then
		local boundsTransformDataForPart = boundsTransformData[instance.Name]
		if boundsTransformDataForPart then
			checkAll(instance :: MeshPart, assetInfo.subParts.Head, boundsTransformDataForPart, reporter)
		end
	else
		for subPartName, partData in pairs(assetInfo.subParts) do
			local meshHandle: MeshPart? = instance:FindFirstChild(subPartName) :: MeshPart
			if not meshHandle then
				continue
			end

			local boundsTransformDataForPart = boundsTransformData[subPartName]
			if boundsTransformDataForPart then
				checkAll(meshHandle :: MeshPart, partData, boundsTransformDataForPart, reporter)
			end
		end
	end
end

return AttachmentBoundsValid :: Types.ValidationModule
