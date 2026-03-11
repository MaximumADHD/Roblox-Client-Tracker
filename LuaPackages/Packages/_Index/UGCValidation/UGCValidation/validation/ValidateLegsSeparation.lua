--[[
	ValidateLegsSeparation.lua checks the leg attachments to the hip and the bounding boxes of the legs to ensure the legs are separated
]]

local root = script.Parent.Parent

local Analytics = require(root.Analytics)
local Constants = require(root.Constants)

local flags = root.flags
local getFFlagUGCValidateLegFullBodySeparation = require(flags.getFFlagUGCValidateLegFullBodySeparation)
local GetFStringUGCValidateLegHipAttachmentRange = require(flags.GetFStringUGCValidateLegHipAttachmentRange)
local GetFStringUGCValidateAllowedLegOverlapMultiplier = require(flags.GetFStringUGCValidateAllowedLegOverlapMultiplier)

local util = root.util
local Types = require(util.Types)
local FailureReasonsAccumulator = require(util.FailureReasonsAccumulator)
local BoundsDataUtils = require(util.BoundsDataUtils)
local BoundsCalculator = require(util.BoundsCalculator)

local ValidateLegsSeparation = {}

local function validateAttachmentPosition(inst: Instance, assetTypeEnum: Enum.AssetType): (boolean, { string }?)
	if assetTypeEnum == Enum.AssetType.RightLeg then
		-- here we're checking if the hip attachment position would push the right leg too far to the left
		local cutoff = ((inst :: any).RightUpperLeg.Size.X * GetFStringUGCValidateLegHipAttachmentRange.asNumber())
		if (inst :: any).RightUpperLeg.RightHipRigAttachment.CFrame.Position.X > cutoff then
			return false,
				{
					string.format(
						"RightUpperLeg.RightHipRigAttachment.CFrame.Position.X is %.2f and cannot be greater than %.2f. Please fix the Attachment.",
						(inst :: any).RightUpperLeg.RightHipRigAttachment.CFrame.Position.X,
						cutoff
					),
				}
		end
	elseif assetTypeEnum == Enum.AssetType.LeftLeg then
		-- here we're checking if the hip attachment position would push the left leg too far to the right
		local cutoff = (-(inst :: any).LeftUpperLeg.Size.X * GetFStringUGCValidateLegHipAttachmentRange.asNumber())
		if (inst :: any).LeftUpperLeg.LeftHipRigAttachment.CFrame.Position.X < cutoff then
			return false,
				{
					string.format(
						"LeftUpperLeg.LeftHipRigAttachment.CFrame.Position.X is %.2f and cannot be less than %.2f. Please fix the Attachment.",
						(inst :: any).LeftUpperLeg.LeftHipRigAttachment.CFrame.Position.X,
						cutoff
					),
				}
		end
	end
	return true
end

function ValidateLegsSeparation.validateAsset(
	inst: Instance,
	validationContext: Types.ValidationContext
): (boolean, { string }?)
	local startTime = tick()

	local assetTypeEnum = validationContext.assetTypeEnum :: Enum.AssetType
	assert(assetTypeEnum)

	if assetTypeEnum ~= Enum.AssetType.RightLeg and assetTypeEnum ~= Enum.AssetType.LeftLeg then
		return true
	end

	local reasonsAccumulator = FailureReasonsAccumulator.new()

	reasonsAccumulator:updateReasons(validateAttachmentPosition(inst, assetTypeEnum))

	if not (reasonsAccumulator:getFinalResults()) then
		Analytics.reportFailure(
			Analytics.ErrorType.validateLegsSeparation_InvalidAttachmentPosition,
			nil,
			validationContext
		)
	end

	Analytics.recordScriptTime(script.Name, startTime, validationContext)
	return reasonsAccumulator:getFinalResults()
end

local function calculateBounds(allPartsMetrics: { string: any }, bodyPartNames: { string }): Types.BoundsData
	local bounds: Types.BoundsData = {}
	for _, partName in bodyPartNames do
		bounds = BoundsDataUtils.combineBounds(bounds, allPartsMetrics[partName].boundsData)
	end
	return bounds
end

local function validateFullBodyInternal(
	fullBodyAssets: Types.AllBodyParts,
	validationContext: Types.ValidationContext
): (boolean, { string }?)
	local partsMetricsSuccess, partsMetricsErrors, allPartsMetricsOpt =
		BoundsCalculator.calculateIndividualFullBodyPartsData(fullBodyAssets, validationContext, nil, false)
	if not partsMetricsSuccess then
		return false, partsMetricsErrors
	end
	local allPartsMetrics = allPartsMetricsOpt :: { string: any }

	local leftLegBounds = calculateBounds(allPartsMetrics, {
		Constants.NAMED_R15_BODY_PARTS.LeftUpperLeg,
		Constants.NAMED_R15_BODY_PARTS.LeftLowerLeg,
		Constants.NAMED_R15_BODY_PARTS.LeftFoot,
	})
	local leftMeshCenterPos = BoundsDataUtils.calculateBoundsCenters(leftLegBounds)
	local leftMeshDimensions = BoundsDataUtils.calculateBoundsDimensions(leftLegBounds)

	local rightLegBounds = calculateBounds(allPartsMetrics, {
		Constants.NAMED_R15_BODY_PARTS.RightUpperLeg,
		Constants.NAMED_R15_BODY_PARTS.RightLowerLeg,
		Constants.NAMED_R15_BODY_PARTS.RightFoot,
	})
	local rightMeshCenterPos = BoundsDataUtils.calculateBoundsCenters(rightLegBounds)
	local rightMeshDimensions = BoundsDataUtils.calculateBoundsDimensions(rightLegBounds)

	if not (leftMeshCenterPos and leftMeshDimensions and rightMeshCenterPos and rightMeshDimensions) then
		return true
	end

	local xDiff = rightMeshCenterPos.X - leftMeshCenterPos.X
	local minXDiff = (leftMeshDimensions.X + rightMeshDimensions.X) * 0.5
	local overlap = minXDiff - xDiff
	if overlap <= 0 then
		return true
	end
	local leftLegAllowedOverlap = leftMeshDimensions.X * GetFStringUGCValidateAllowedLegOverlapMultiplier.asNumber()
	local rightLegAllowedOverlap = rightMeshDimensions.X * GetFStringUGCValidateAllowedLegOverlapMultiplier.asNumber()
	if overlap > leftLegAllowedOverlap or overlap > rightLegAllowedOverlap then
		return false,
			{
				string.format(
					"The legs overlap by %.2f studs on the x axis. %.2f is the left leg maximum. %.2f is the right leg maximum. Please adjust the legs to reduce overlap.",
					overlap,
					leftLegAllowedOverlap,
					rightLegAllowedOverlap
				),
			}
	end
	return true
end

function ValidateLegsSeparation.validateFullBody(
	fullBodyAssets: Types.AllBodyParts,
	validationContext: Types.ValidationContext
): (boolean, { string }?)
	if not getFFlagUGCValidateLegFullBodySeparation() then
		return true
	end

	local startTime = tick()

	local reasonsAccumulator = FailureReasonsAccumulator.new()

	reasonsAccumulator:updateReasons(validateFullBodyInternal(fullBodyAssets, validationContext))

	if not (reasonsAccumulator:getFinalResults()) then
		Analytics.reportFailure(Analytics.ErrorType.validateLegsSeparation_LegsOverlap, nil, validationContext)
	end
	Analytics.recordScriptTime(script.Name, startTime, validationContext)
	return reasonsAccumulator:getFinalResults()
end

return ValidateLegsSeparation
