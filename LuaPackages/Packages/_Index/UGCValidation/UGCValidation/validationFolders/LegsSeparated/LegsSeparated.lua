--[[
	LegsSeparated checks leg attachments to the hip and bounding boxes of the legs
	to ensure the legs are properly separated.
	Migrated from src/validation/ValidateLegsSeparation.lua.
]]

local root = script.Parent.Parent.Parent

local Constants = require(root.Constants)
local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)

local BoundsDataUtils = require(root.util.BoundsDataUtils)
local BoundsCalculator = require(root.util.BoundsCalculator)

local getFFlagUGCValidateMigratePoseBlocking = require(root.flags.getFFlagUGCValidateMigratePoseBlocking)
local getFFlagUGCValidateLegFullBodySeparation = require(root.flags.getFFlagUGCValidateLegFullBodySeparation)
local GetFStringUGCValidateLegHipAttachmentRange = require(root.flags.GetFStringUGCValidateLegHipAttachmentRange)
local GetFStringUGCValidateAllowedLegOverlapMultiplier =
	require(root.flags.GetFStringUGCValidateAllowedLegOverlapMultiplier)

local LegsSeparated = {}

LegsSeparated.categories = {
	ValidationEnums.UploadCategory.TORSO_AND_LIMBS,
	ValidationEnums.UploadCategory.FULL_BODY,
}

LegsSeparated.requiredData = {
	ValidationEnums.SharedDataMember.rootInstance,
	ValidationEnums.SharedDataMember.renderMeshesData,
}

LegsSeparated.fflag = getFFlagUGCValidateMigratePoseBlocking

LegsSeparated.expectedFailures = {}

local function validateAttachmentPosition(
	reporter: Types.ValidationReporter,
	inst: Instance,
	assetTypeEnum: Enum.AssetType
)
	if assetTypeEnum == Enum.AssetType.RightLeg then
		local cutoff = ((inst :: any).RightUpperLeg.Size.X * GetFStringUGCValidateLegHipAttachmentRange.asNumber())
		if (inst :: any).RightUpperLeg.RightHipRigAttachment.CFrame.Position.X > cutoff then
			reporter:fail(ErrorSourceStrings.Keys.LegsSeparated_HipAttachmentOutOfRange, {
				attachmentPath = "RightUpperLeg.RightHipRigAttachment.CFrame.Position.X",
				currentValue = string.format(
					"%.2f",
					(inst :: any).RightUpperLeg.RightHipRigAttachment.CFrame.Position.X
				),
				comparison = "greater than",
				cutoff = string.format("%.2f", cutoff),
			})
		end
	elseif assetTypeEnum == Enum.AssetType.LeftLeg then
		local cutoff = (-(inst :: any).LeftUpperLeg.Size.X * GetFStringUGCValidateLegHipAttachmentRange.asNumber())
		if (inst :: any).LeftUpperLeg.LeftHipRigAttachment.CFrame.Position.X < cutoff then
			reporter:fail(ErrorSourceStrings.Keys.LegsSeparated_HipAttachmentOutOfRange, {
				attachmentPath = "LeftUpperLeg.LeftHipRigAttachment.CFrame.Position.X",
				currentValue = string.format("%.2f", (inst :: any).LeftUpperLeg.LeftHipRigAttachment.CFrame.Position.X),
				comparison = "less than",
				cutoff = string.format("%.2f", cutoff),
			})
		end
	end
end

local function calculateBounds(allPartsMetrics: { [string]: any }, bodyPartNames: { string }): Types.BoundsData
	local bounds: Types.BoundsData = {}
	for _, partName in bodyPartNames do
		bounds = BoundsDataUtils.combineBounds(bounds, allPartsMetrics[partName].boundsData)
	end
	return bounds
end

local function buildEditableMeshesFromSharedData(data: Types.SharedData): Types.EditableMeshes
	local editableMeshes: Types.EditableMeshes = {}
	for partName, meshData in data.renderMeshesData do
		-- Find the instance in rootInstance descendants
		local inst = data.rootInstance:FindFirstChild(partName, true)
		if inst and meshData.editable then
			editableMeshes[inst] = { MeshId = { instance = meshData.editable, created = false } }
		end
	end
	return editableMeshes
end

local function createAllBodyPartsFromRootInstance(rootInstance: Instance): Types.AllBodyParts
	local results: Types.AllBodyParts = {}
	for _, child in rootInstance:GetChildren() do
		if child:IsA("MeshPart") then
			results[child.Name] = child
		end
	end
	return results
end

local function validateFullBodySeparation(reporter: Types.ValidationReporter, data: Types.SharedData)
	if not getFFlagUGCValidateLegFullBodySeparation() then
		return
	end

	local allBodyParts = createAllBodyPartsFromRootInstance(data.rootInstance)

	local editableMeshes = buildEditableMeshesFromSharedData(data)

	local validationContext = {
		isServer = data.consumerConfig.consumerEnv == ValidationEnums.ConsumerEnv.Backend,
		editableMeshes = editableMeshes,
	} :: any

	local partsMetricsSuccess, partsMetricsErrors, allPartsMetricsOpt =
		BoundsCalculator.calculateIndividualFullBodyPartsData(allBodyParts, validationContext, nil, false)
	if not partsMetricsSuccess then
		reporter:fail(ErrorSourceStrings.Keys.LegsSeparated_BoundsCalculationFailed, {
			details = if partsMetricsErrors then table.concat(partsMetricsErrors, "; ") else "Unknown error",
		})
		return
	end
	local allPartsMetrics = allPartsMetricsOpt :: { [string]: any }

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
		return
	end

	local xDiff = rightMeshCenterPos.X - leftMeshCenterPos.X
	local minXDiff = (leftMeshDimensions.X + rightMeshDimensions.X) * 0.5
	local overlap = minXDiff - xDiff
	if overlap <= 0 then
		return
	end
	local leftLegAllowedOverlap = leftMeshDimensions.X * GetFStringUGCValidateAllowedLegOverlapMultiplier.asNumber()
	local rightLegAllowedOverlap = rightMeshDimensions.X * GetFStringUGCValidateAllowedLegOverlapMultiplier.asNumber()
	if overlap > leftLegAllowedOverlap or overlap > rightLegAllowedOverlap then
		reporter:fail(ErrorSourceStrings.Keys.LegsSeparated_LegsOverlap, {
			overlap = string.format("%.2f", overlap),
			leftMax = string.format("%.2f", leftLegAllowedOverlap),
			rightMax = string.format("%.2f", rightLegAllowedOverlap),
		})
	end
end

local function getAssetTypeFromUploadEnum(data: Types.SharedData): Enum.AssetType?
	if data.uploadEnum and data.uploadEnum.assetType then
		return data.uploadEnum.assetType
	end
	return nil
end

LegsSeparated.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	local uploadCategory = data.uploadCategory

	if uploadCategory == ValidationEnums.UploadCategory.FULL_BODY then
		validateFullBodySeparation(reporter, data)
		return
	end

	-- TORSO_AND_LIMBS path: check individual leg attachment positions
	local assetTypeEnum = getAssetTypeFromUploadEnum(data)
	if not assetTypeEnum then
		return
	end

	if assetTypeEnum ~= Enum.AssetType.RightLeg and assetTypeEnum ~= Enum.AssetType.LeftLeg then
		return
	end

	validateAttachmentPosition(reporter, data.rootInstance, assetTypeEnum)
end

return LegsSeparated :: Types.ValidationModule
