-- TEMPORARY: Uses getAttachmentCFrameInPartSpace to fix HRD bone-nested attachment CFrame interpretation.
-- All bounds/transform calculation in this file must be refactored in the new validation system.

--[[
	validateBodyPartExtentsRelativeToParent.lua checks that the relative parts do not extend beyond each other
	This is done by checking that the order of bounding boxes is correct.

	For legs: we also compute the space above/below the corresponding attachment, with the assumption of 0 rotation
	This mimicks the way we compute hip height in engine, which heavily relies on attachment Y values
]]

local root = script.Parent.Parent

local Types = require(root.util.Types)

local Analytics = require(root.Analytics)
local Constants = require(root.Constants)
local FailureReasonsAccumulator = require(root.util.FailureReasonsAccumulator)
local getExpectedPartSize = require(root.util.getExpectedPartSize)
local BoundsCalculator = require(root.util.BoundsCalculator)
local R15plusUtils = require(root.util.R15plusUtils)
local getAttachmentCFrameInPartSpace = require(root.util.getAttachmentCFrameInPartSpace)

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

local function reportFailure_lowerAboveUpper(
	upperPart: MeshPart,
	lowerPart: MeshPart,
	attName: string,
	validationContext: Types.ValidationContext
)
	Analytics.reportFailure(
		Analytics.ErrorType.validateBodyAttPosRelativeToParent_PartAboveParent,
		nil,
		validationContext
	)

	return false,
		{
			string.format(
				"%s cannot extend above %s. You can adjust how the parts are put together by moving %s",
				lowerPart.Name,
				upperPart.Name,
				attName
			),
		}
end

local function reportFailure_upperBelowLower(
	upperPart: MeshPart,
	lowerPart: MeshPart,
	attName: string,
	validationContext: Types.ValidationContext
)
	Analytics.reportFailure(
		Analytics.ErrorType.validateBodyAttPosRelativeToParent_ParentBelowPart,
		nil,
		validationContext
	)
	return false,
		{
			string.format(
				"%s cannot extend below %s. You can adjust how the parts are put together by moving %s",
				upperPart.Name,
				lowerPart.Name,
				attName
			),
		}
end

local validateBodyPartExtentsRelativeToParent = {}
function validateBodyPartExtentsRelativeToParent.validateSinglePartBasedOnBBoxes(
	upperPart: MeshPart,
	lowerPart: MeshPart,
	boundsTransformData: { string: any },
	attName: string,
	validationContext: Types.ValidationContext
)
	local reasonsAccumulator = FailureReasonsAccumulator.new()
	local upperData = boundsTransformData[upperPart.Name].boundsData :: Types.BoundsData
	local lowerData = boundsTransformData[lowerPart.Name].boundsData :: Types.BoundsData

	if lowerData.maxOverall and upperData.maxOverall and lowerData.maxOverall.Y > upperData.maxOverall.Y then
		reasonsAccumulator:updateReasons(
			reportFailure_lowerAboveUpper(upperPart, lowerPart, attName, validationContext)
		)
	end

	if upperData.minOverall and lowerData.minOverall and upperData.minOverall.Y < lowerData.minOverall.Y then
		reasonsAccumulator:updateReasons(
			reportFailure_upperBelowLower(upperPart, lowerPart, attName, validationContext)
		)
	end

	return reasonsAccumulator:getFinalResults()
end

function validateBodyPartExtentsRelativeToParent.validateSinglePartBasedOnAttachmentYPos(
	upperPart: MeshPart,
	lowerPart: MeshPart,
	attName: string,
	validationContext: Types.ValidationContext
)
	local reasonsAccumulator = FailureReasonsAccumulator.new()
	local attInPart = lowerPart:FindFirstChild(attName, R15plusUtils.checkFlagEnabledForAllowHrd()) :: Attachment
	local attInParent = upperPart:FindFirstChild(attName, R15plusUtils.checkFlagEnabledForAllowHrd()) :: Attachment
	assert(attInPart)
	assert(attInParent)

	local sizeLowerPart = getExpectedPartSize(lowerPart, validationContext)
	local sizeUpperPart = getExpectedPartSize(upperPart, validationContext)

	local attInPartPos = getAttachmentCFrameInPartSpace(attInPart).Position
	local attInParentPos = getAttachmentCFrameInPartSpace(attInParent).Position

	local spaceAbovePart = (sizeLowerPart / 2.0 - attInPartPos).Y
	local spaceBelowPart = (sizeLowerPart / 2.0 + attInPartPos).Y
	local spaceAboveParent = (sizeUpperPart / 2.0 - attInParentPos).Y
	local spaceBelowParent = (sizeUpperPart / 2.0 + attInParentPos).Y

	if spaceAbovePart > spaceAboveParent then
		reasonsAccumulator:updateReasons(
			reportFailure_lowerAboveUpper(upperPart, lowerPart, attName, validationContext)
		)
	end

	if spaceBelowParent > spaceBelowPart then
		reasonsAccumulator:updateReasons(
			reportFailure_upperBelowLower(upperPart, lowerPart, attName, validationContext)
		)
	end

	return reasonsAccumulator:getFinalResults()
end

function validateBodyPartExtentsRelativeToParent.runValidation(
	inst: Instance,
	validationContext: Types.ValidationContext
): (boolean, { string }?)
	local startTime = tick()

	local assetTypeEnum = validationContext.assetTypeEnum :: Enum.AssetType
	assert(assetTypeEnum)
	local assetInfo = Constants.ASSET_TYPE_INFO[assetTypeEnum]
	assert(assetInfo)

	if not checkSubPartRelativeBBoxOrderings[assetTypeEnum] then
		return true
	end

	local successData, failureReasonsData, boundsTransformDataOpt: { string: any }? =
		BoundsCalculator.calculateIndividualAssetPartsData(inst, validationContext)
	if not successData then
		return false, failureReasonsData
	end

	assert(boundsTransformDataOpt)
	local boundsTransformData: { string: any } = boundsTransformDataOpt

	local reasonsAccumulator = FailureReasonsAccumulator.new()

	for subPartName: string, partInfo in pairs(assetInfo.subParts) do
		local expectedParent = Constants["BODYPART_TO_PARENT"][subPartName]
		if expectedParent == nil then
			continue
		end

		local bodyPart: MeshPart? = inst:FindFirstChild(subPartName) :: MeshPart
		local parentPart: MeshPart? = inst:FindFirstChild(expectedParent) :: MeshPart
		assert(bodyPart)
		assert(parentPart)

		local upperPart: MeshPart, lowerPart: MeshPart = parentPart, bodyPart
		if BODYPART_IS_PLACED_ABOVE_PARENT[subPartName] then
			upperPart, lowerPart = bodyPart, parentPart
		end

		local attName = partInfo["rigAttachmentToParent"].name
		local validationSuccess, validationIssues =
			validateBodyPartExtentsRelativeToParent.validateSinglePartBasedOnBBoxes(
				upperPart,
				lowerPart,
				boundsTransformData,
				attName,
				validationContext
			)
		reasonsAccumulator:updateReasons(validationSuccess, validationIssues)

		if validationSuccess and APPLY_PRIMATIVE_BBOX_CHECK[assetTypeEnum] then
			-- Secondary check based on just part size.Y and att pos.Y
			-- This is done to guarentee humanoid scaling doesn't break
			reasonsAccumulator:updateReasons(
				validateBodyPartExtentsRelativeToParent.validateSinglePartBasedOnAttachmentYPos(
					upperPart,
					lowerPart,
					attName,
					validationContext
				)
			)
		end
	end

	Analytics.recordScriptTime(script.Name, startTime, validationContext)
	return reasonsAccumulator:getFinalResults()
end

return validateBodyPartExtentsRelativeToParent
