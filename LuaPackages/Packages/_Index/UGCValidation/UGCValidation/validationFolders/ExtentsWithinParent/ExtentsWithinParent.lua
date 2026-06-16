local root = script.Parent.Parent.Parent

local Constants = require(root.Constants)
local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)
local BoundsCalculator = require(root.util.BoundsCalculator)
local R15plusUtils = require(root.util.R15plusUtils)
local getAttachmentCFrameInPartSpace = require(root.util.getAttachmentCFrameInPartSpace)

local getFFlagUGCValidateMigrateBodyPartBounds = require(root.flags.getFFlagUGCValidateMigrateBodyPartBounds)

local ExtentsWithinParent = {}

ExtentsWithinParent.categories = {
	ValidationEnums.UploadCategory.TORSO_AND_LIMBS,
}
ExtentsWithinParent.requiredData = {
	ValidationEnums.SharedDataMember.rootInstance,
	ValidationEnums.SharedDataMember.uploadEnum,
}
ExtentsWithinParent.conditionalData = {
	ValidationEnums.SharedDataMember.renderMeshesData,
}
ExtentsWithinParent.fflag = getFFlagUGCValidateMigrateBodyPartBounds
ExtentsWithinParent.expectedFailures = {}

local checkSubPartRelativeBBoxOrderings = {
	[Enum.AssetType.Torso] = true,
	[Enum.AssetType.LeftArm] = true,
	[Enum.AssetType.RightArm] = true,
	[Enum.AssetType.RightLeg] = true,
	[Enum.AssetType.LeftLeg] = true,
}

local BODYPART_IS_PLACED_ABOVE_PARENT = {
	["UpperTorso"] = true,
}

local APPLY_PRIMATIVE_BBOX_CHECK = {
	[Enum.AssetType.LeftLeg] = true,
	[Enum.AssetType.RightLeg] = true,
}

local function validateBasedOnBBoxes(
	upperPart: MeshPart,
	lowerPart: MeshPart,
	boundsTransformData: { [string]: any },
	attName: string,
	reporter: Types.ValidationReporter
): boolean
	local upperData = boundsTransformData[upperPart.Name].boundsData :: Types.BoundsData
	local lowerData = boundsTransformData[lowerPart.Name].boundsData :: Types.BoundsData
	local passed = true

	if lowerData.maxOverall and upperData.maxOverall and lowerData.maxOverall.Y > upperData.maxOverall.Y then
		reporter:fail(ErrorSourceStrings.Keys.Extents_PartAboveParent, {
			lowerPart = lowerPart.Name,
			upperPart = upperPart.Name,
			attachmentName = attName,
		}, lowerPart)
		passed = false
	end

	if upperData.minOverall and lowerData.minOverall and upperData.minOverall.Y < lowerData.minOverall.Y then
		reporter:fail(ErrorSourceStrings.Keys.Extents_ParentBelowPart, {
			upperPart = upperPart.Name,
			lowerPart = lowerPart.Name,
			attachmentName = attName,
		}, upperPart)
		passed = false
	end

	return passed
end

local function validateBasedOnAttachmentYPos(
	upperPart: MeshPart,
	lowerPart: MeshPart,
	attName: string,
	reporter: Types.ValidationReporter
)
	local attInPart = lowerPart:FindFirstChild(attName, R15plusUtils.checkFlagEnabledForAllowHrd()) :: Attachment
	local attInParent = upperPart:FindFirstChild(attName, R15plusUtils.checkFlagEnabledForAllowHrd()) :: Attachment
	if not attInPart or not attInParent then
		return
	end

	local sizeLowerPart = lowerPart.Size
	local sizeUpperPart = upperPart.Size

	local attInPartPos = getAttachmentCFrameInPartSpace(attInPart).Position
	local attInParentPos = getAttachmentCFrameInPartSpace(attInParent).Position

	local spaceAbovePart = (sizeLowerPart / 2.0 - attInPartPos).Y
	local spaceBelowPart = (sizeLowerPart / 2.0 + attInPartPos).Y
	local spaceAboveParent = (sizeUpperPart / 2.0 - attInParentPos).Y
	local spaceBelowParent = (sizeUpperPart / 2.0 + attInParentPos).Y

	if spaceAbovePart > spaceAboveParent then
		reporter:fail(ErrorSourceStrings.Keys.Extents_PartAboveParent, {
			lowerPart = lowerPart.Name,
			upperPart = upperPart.Name,
			attachmentName = attName,
		}, lowerPart)
	end

	if spaceBelowParent > spaceBelowPart then
		reporter:fail(ErrorSourceStrings.Keys.Extents_ParentBelowPart, {
			upperPart = upperPart.Name,
			lowerPart = lowerPart.Name,
			attachmentName = attName,
		}, upperPart)
	end
end

ExtentsWithinParent.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	local instance = data.rootInstance
	local assetTypeEnum = data.uploadEnum.assetType

	if not checkSubPartRelativeBBoxOrderings[assetTypeEnum] then
		return
	end

	local assetInfo = Constants.ASSET_TYPE_INFO[assetTypeEnum]
	if not assetInfo then
		return
	end

	local renderMeshesData = (data :: any).renderMeshesData
	if not renderMeshesData then
		return
	end

	local successData, _, boundsTransformDataOpt: { [string]: any }? =
		BoundsCalculator.calculateIndividualAssetPartsDataFromData(instance, assetTypeEnum, renderMeshesData)
	if not successData then
		reporter:fetchError("Failed to calculate asset bounds data for extents check on " .. assetTypeEnum.Name)
		return
	end

	local boundsTransformData: { [string]: any } = boundsTransformDataOpt :: { [string]: any }

	for subPartName: string, partInfo in pairs(assetInfo.subParts) do
		local expectedParent = Constants["BODYPART_TO_PARENT"][subPartName]
		if expectedParent == nil then
			continue
		end

		local bodyPart: MeshPart? = instance:FindFirstChild(subPartName) :: MeshPart
		local parentPart: MeshPart? = instance:FindFirstChild(expectedParent) :: MeshPart
		if not bodyPart or not parentPart then
			continue
		end

		local upperPart: MeshPart, lowerPart: MeshPart = parentPart :: MeshPart, bodyPart :: MeshPart
		if BODYPART_IS_PLACED_ABOVE_PARENT[subPartName] then
			upperPart, lowerPart = bodyPart :: MeshPart, parentPart :: MeshPart
		end

		local attName = partInfo["rigAttachmentToParent"].name

		-- Primary check: bounding box comparison
		local bboxPassed = true
		if boundsTransformData[upperPart.Name] and boundsTransformData[lowerPart.Name] then
			bboxPassed = validateBasedOnBBoxes(upperPart, lowerPart, boundsTransformData, attName, reporter)
		end

		-- Secondary check for legs: attachment Y position comparison
		-- Only runs when the primary bbox check passed (matches legacy behavior)
		if bboxPassed and APPLY_PRIMATIVE_BBOX_CHECK[assetTypeEnum] then
			validateBasedOnAttachmentYPos(upperPart, lowerPart, attName, reporter)
		end
	end
end

return ExtentsWithinParent :: Types.ValidationModule
