--!strict
local root = script.Parent

local FIntUGCValidationHeadThreshold = require(root.flags.getFIntUGCValidationHeadThreshold)
local FIntUGCValidationTorsoThresholdFront = require(root.flags.getFIntUGCValidationTorsoThresholdFront)
local FIntUGCValidationTorsoThresholdBack = require(root.flags.getFIntUGCValidationTorsoThresholdBack)
local FIntUGCValidationTorsoThresholdSide = require(root.flags.getFIntUGCValidationTorsoThresholdSide)
local FIntUGCValidationTorsoThresholdTopBottom = require(root.flags.getFIntUGCValidationTorsoThresholdTopBottom)
local FIntUGCValidationArmThresholdFront = require(root.flags.getFIntUGCValidationArmThresholdFront)
local FIntUGCValidationArmThresholdBack = require(root.flags.getFIntUGCValidationArmThresholdBack)
local FIntUGCValidationArmThresholdSide = require(root.flags.getFIntUGCValidationArmThresholdSide)
local FIntUGCValidationArmThresholdTopBottom = require(root.flags.getFIntUGCValidationArmThresholdTopBottom)
local FIntUGCValidationLegThresholdFront = require(root.flags.getFIntUGCValidationLegThresholdFront)
local FIntUGCValidationLegThresholdBack = require(root.flags.getFIntUGCValidationLegThresholdBack)
local FIntUGCValidationLegThresholdSide = require(root.flags.getFIntUGCValidationLegThresholdSide)
local FIntUGCValidationLegThresholdTopBottom = require(root.flags.getFIntUGCValidationLegThresholdTopBottom)

local ConstantsTransparencyValidation = {}

ConstantsTransparencyValidation.CAMERA_ANGLES = {
	Front = "Front",
	Back = "Back",
	Left = "Left",
	Right = "Right",
	Top = "Top",
	Bottom = "Bottom",
}

ConstantsTransparencyValidation.ASSET_TRANSPARENCY_THRESHOLDS = {}

ConstantsTransparencyValidation.ASSET_TRANSPARENCY_THRESHOLDS[Enum.AssetType.DynamicHead] = {
	[ConstantsTransparencyValidation.CAMERA_ANGLES.Front] = FIntUGCValidationHeadThreshold() / 100,
	[ConstantsTransparencyValidation.CAMERA_ANGLES.Back] = FIntUGCValidationHeadThreshold() / 100,
	[ConstantsTransparencyValidation.CAMERA_ANGLES.Left] = FIntUGCValidationHeadThreshold() / 100,
	[ConstantsTransparencyValidation.CAMERA_ANGLES.Right] = FIntUGCValidationHeadThreshold() / 100,
	[ConstantsTransparencyValidation.CAMERA_ANGLES.Top] = FIntUGCValidationHeadThreshold() / 100,
	[ConstantsTransparencyValidation.CAMERA_ANGLES.Bottom] = FIntUGCValidationHeadThreshold() / 100,
}

ConstantsTransparencyValidation.ASSET_TRANSPARENCY_THRESHOLDS[Enum.AssetType.Torso] = {
	[ConstantsTransparencyValidation.CAMERA_ANGLES.Front] = FIntUGCValidationTorsoThresholdFront() / 100,
	[ConstantsTransparencyValidation.CAMERA_ANGLES.Back] = FIntUGCValidationTorsoThresholdBack() / 100,
	[ConstantsTransparencyValidation.CAMERA_ANGLES.Left] = FIntUGCValidationTorsoThresholdSide() / 100,
	[ConstantsTransparencyValidation.CAMERA_ANGLES.Right] = FIntUGCValidationTorsoThresholdSide() / 100,
	[ConstantsTransparencyValidation.CAMERA_ANGLES.Top] = FIntUGCValidationTorsoThresholdTopBottom() / 100,
	[ConstantsTransparencyValidation.CAMERA_ANGLES.Bottom] = FIntUGCValidationTorsoThresholdTopBottom() / 100,
}

local armThresholds = {
	[ConstantsTransparencyValidation.CAMERA_ANGLES.Front] = FIntUGCValidationArmThresholdFront() / 100,
	[ConstantsTransparencyValidation.CAMERA_ANGLES.Back] = FIntUGCValidationArmThresholdBack() / 100,
	[ConstantsTransparencyValidation.CAMERA_ANGLES.Left] = FIntUGCValidationArmThresholdSide() / 100,
	[ConstantsTransparencyValidation.CAMERA_ANGLES.Right] = FIntUGCValidationArmThresholdSide() / 100,
	[ConstantsTransparencyValidation.CAMERA_ANGLES.Top] = FIntUGCValidationArmThresholdTopBottom() / 100,
	[ConstantsTransparencyValidation.CAMERA_ANGLES.Bottom] = FIntUGCValidationArmThresholdTopBottom() / 100,
}
ConstantsTransparencyValidation.ASSET_TRANSPARENCY_THRESHOLDS[Enum.AssetType.LeftArm] = armThresholds
ConstantsTransparencyValidation.ASSET_TRANSPARENCY_THRESHOLDS[Enum.AssetType.RightArm] = armThresholds

local legThresholds = {
	[ConstantsTransparencyValidation.CAMERA_ANGLES.Front] = FIntUGCValidationLegThresholdFront() / 100,
	[ConstantsTransparencyValidation.CAMERA_ANGLES.Back] = FIntUGCValidationLegThresholdBack() / 100,
	[ConstantsTransparencyValidation.CAMERA_ANGLES.Left] = FIntUGCValidationLegThresholdSide() / 100,
	[ConstantsTransparencyValidation.CAMERA_ANGLES.Right] = FIntUGCValidationLegThresholdSide() / 100,
	[ConstantsTransparencyValidation.CAMERA_ANGLES.Top] = FIntUGCValidationLegThresholdTopBottom() / 100,
	[ConstantsTransparencyValidation.CAMERA_ANGLES.Bottom] = FIntUGCValidationLegThresholdTopBottom() / 100,
}
ConstantsTransparencyValidation.ASSET_TRANSPARENCY_THRESHOLDS[Enum.AssetType.LeftLeg] = legThresholds
ConstantsTransparencyValidation.ASSET_TRANSPARENCY_THRESHOLDS[Enum.AssetType.RightLeg] = legThresholds

ConstantsTransparencyValidation.ASSET_TRANSPARENCY_RASTER_SIZE = 100

return ConstantsTransparencyValidation
