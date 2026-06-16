--[[
	PoseCorrect checks arms and legs to ensure they are approximately in I pose, A pose, or T pose.
	Migrated from src/validation/validatePose.lua.
]]

local root = script.Parent.Parent.Parent

local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)

local AssetCalculator = require(root.util.AssetCalculator)
local canBeNormalized = require(root.util.canBeNormalized)
local prettyPrintVector3 = require(root.util.prettyPrintVector3)

local getFFlagUGCValidateMigratePoseBlocking = require(root.flags.getFFlagUGCValidateMigratePoseBlocking)

local UGCValidatePoseDegFromXYPlane = game:DefineFastInt("UGCValidatePoseDegFromXYPlane", 20)
local UGCValidatePoseArmMinDegFromXVectorOnXYPlane =
	game:DefineFastInt("UGCValidatePoseArmMinDegFromXVectorOnXYPlane", -90)
local UGCValidatePoseArmMaxDegFromXVectorOnXYPlane =
	game:DefineFastInt("UGCValidatePoseArmMaxDegFromXVectorOnXYPlane", 30)
local UGCValidatePoseLegMinDegFromXVectorOnXYPlane =
	game:DefineFastInt("UGCValidatePoseLegMinDegFromXVectorOnXYPlane", -93)
local UGCValidatePoseLegMaxDegFromXVectorOnXYPlane =
	game:DefineFastInt("UGCValidatePoseLegMaxDegFromXVectorOnXYPlane", -60)

local PoseCorrect = {}

PoseCorrect.categories = {
	ValidationEnums.UploadCategory.TORSO_AND_LIMBS,
}

PoseCorrect.requiredData = {
	ValidationEnums.SharedDataMember.rootInstance,
}

PoseCorrect.fflag = getFFlagUGCValidateMigratePoseBlocking

PoseCorrect.expectedFailures = {}

local function validateAngleFromXYPlane(
	reporter: Types.ValidationReporter,
	singleAsset: Enum.AssetType,
	inverseYVectorOnXYPlane: Vector3,
	inverseYVector: Vector3
)
	local angle = math.deg(math.acos(inverseYVectorOnXYPlane:Dot(inverseYVector)))
	if angle > UGCValidatePoseDegFromXYPlane then
		reporter:fail(ErrorSourceStrings.Keys.Pose_AngleFromXYPlane, {
			assetName = singleAsset.Name,
			angle = string.format("%d", angle),
			limit = string.format("%d", UGCValidatePoseDegFromXYPlane),
		})
	end
end

local function validateAngleFromWorldXVectorOnXYPlane(
	reporter: Types.ValidationReporter,
	singleAsset: Enum.AssetType,
	inverseYVectorOnXYPlane: Vector3,
	xVector: Vector3,
	minAngle: number,
	maxAngle: number
)
	local angle = math.deg(math.acos(inverseYVectorOnXYPlane:Dot(xVector)))
	angle = if inverseYVectorOnXYPlane.Y > 0 then angle else -angle

	if angle < minAngle or angle > maxAngle then
		reporter:fail(ErrorSourceStrings.Keys.Pose_AngleOnXYPlane, {
			assetName = singleAsset.Name,
			angle = string.format("%d", angle),
			xVector = prettyPrintVector3(xVector),
			minAngle = string.format("%d", minAngle),
			maxAngle = string.format("%d", maxAngle),
		})
	end
end

local function getAssetTypeFromUploadEnum(data: Types.SharedData): Enum.AssetType?
	if data.uploadEnum and data.uploadEnum.assetType then
		return data.uploadEnum.assetType
	end
	return nil
end

PoseCorrect.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	local inst = data.rootInstance
	local singleAsset = getAssetTypeFromUploadEnum(data)
	if not singleAsset then
		return
	end

	if
		singleAsset ~= Enum.AssetType.LeftArm
		and singleAsset ~= Enum.AssetType.RightArm
		and singleAsset ~= Enum.AssetType.LeftLeg
		and singleAsset ~= Enum.AssetType.RightLeg
	then
		return
	end

	local assetCFrameOpt = AssetCalculator.calculateAssetCFrame(singleAsset, inst)
	if not assetCFrameOpt then
		reporter:fail(ErrorSourceStrings.Keys.Pose_CFrameCalculationFailed, {
			assetName = singleAsset.Name,
		})
		return
	end
	local assetCFrame = assetCFrameOpt :: CFrame

	local yVectorOnXYPlane = assetCFrame.YVector.Unit - (Vector3.zAxis * (assetCFrame.YVector.Unit:Dot(Vector3.zAxis)))
	if not canBeNormalized(yVectorOnXYPlane) then
		reporter:fail(ErrorSourceStrings.Keys.Pose_PointingAlongZVector, {
			assetName = singleAsset.Name,
		})
		return
	end
	local inverseYVectorOnXYPlane = -yVectorOnXYPlane.Unit
	local inverseYVector = -assetCFrame.YVector.Unit

	validateAngleFromXYPlane(reporter, singleAsset, inverseYVectorOnXYPlane, inverseYVector)

	local xVector = if singleAsset == Enum.AssetType.RightArm or singleAsset == Enum.AssetType.RightLeg
		then Vector3.xAxis
		else -Vector3.xAxis

	local minAngle, maxAngle
	if singleAsset == Enum.AssetType.RightArm or singleAsset == Enum.AssetType.LeftArm then
		minAngle, maxAngle = UGCValidatePoseArmMinDegFromXVectorOnXYPlane, UGCValidatePoseArmMaxDegFromXVectorOnXYPlane
	else
		minAngle, maxAngle = UGCValidatePoseLegMinDegFromXVectorOnXYPlane, UGCValidatePoseLegMaxDegFromXVectorOnXYPlane
	end
	validateAngleFromWorldXVectorOnXYPlane(reporter, singleAsset, inverseYVectorOnXYPlane, xVector, minAngle, maxAngle)
end

return PoseCorrect :: Types.ValidationModule
