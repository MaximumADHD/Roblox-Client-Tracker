--!strict

--[[
	validatePose.lua checks arms and legs to ensure they are approximately in I pose, A pose, or T pose
]]

local root = script.Parent.Parent

local AssetCalculator = require(root.util.AssetCalculator)
local canBeNormalized = require(root.util.canBeNormalized)
local prettyPrintVector3 = require(root.util.prettyPrintVector3)
local Types = require(root.util.Types)

local FailureReasonsAccumulator = require(root.util.FailureReasonsAccumulator)

local UGCValidatePoseDegFromXYPlane = game:DefineFastInt("UGCValidatePoseDegFromXYPlane", 20)
local UGCValidatePoseArmMinDegFromXVectorOnXYPlane =
	game:DefineFastInt("UGCValidatePoseArmMinDegFromXVectorOnXYPlane", -90)
local UGCValidatePoseArmMaxDegFromXVectorOnXYPlane =
	game:DefineFastInt("UGCValidatePoseArmMaxDegFromXVectorOnXYPlane", 30)
local UGCValidatePoseLegMinDegFromXVectorOnXYPlane =
	game:DefineFastInt("UGCValidatePoseLegMinDegFromXVectorOnXYPlane", -93)
local UGCValidatePoseLegMaxDegFromXVectorOnXYPlane =
	game:DefineFastInt("UGCValidatePoseLegMaxDegFromXVectorOnXYPlane", -60)

local function validateAngleFromXYPlane(
	asset: Enum.AssetType,
	inverseYVectorOnXYPlane: Vector3,
	inverseYVector: Vector3
): (boolean, { string }?)
	local reasonsAccumulator = FailureReasonsAccumulator.new()

	local angle = math.deg(math.acos(inverseYVectorOnXYPlane:Dot(inverseYVector)))
	if angle > UGCValidatePoseDegFromXYPlane then
		reasonsAccumulator:updateReasons(false, {
			string.format(
				"%s is at a %d degree angle from the X,Y plane, it must be within %d degrees. Make sure the character is in I pose, A pose, or T pose",
				asset.Name,
				angle,
				UGCValidatePoseDegFromXYPlane
			),
		})
	end
	return reasonsAccumulator:getFinalResults()
end

local function validateAngleFromWorldXVectorOnXYPlane(
	asset: Enum.AssetType,
	inverseYVectorOnXYPlane: Vector3,
	xVector: Vector3,
	minAngle: number,
	maxAngle: number
): (boolean, { string }?)
	local angle = math.deg(math.acos(inverseYVectorOnXYPlane:Dot(xVector)))
	angle = if inverseYVectorOnXYPlane.Y > 0 then angle else -angle

	local reasonsAccumulator = FailureReasonsAccumulator.new()

	if angle < minAngle or angle > maxAngle then
		reasonsAccumulator:updateReasons(false, {
			string.format(
				"%s is at a %d angle of the [%s] vector on the X,Y plane, it must be between %d and %d degrees. Make sure the character is in I pose, A pose, or T pose",
				asset.Name,
				angle,
				prettyPrintVector3(xVector),
				minAngle,
				maxAngle
			),
		})
	end
	return reasonsAccumulator:getFinalResults()
end

local function validatePose(inst: Instance, validationContext: Types.ValidationContext): (boolean, { string }?)
	local singleAsset = validationContext.assetTypeEnum :: Enum.AssetType
	assert(singleAsset)

	if
		singleAsset ~= Enum.AssetType.LeftArm
		and singleAsset ~= Enum.AssetType.RightArm
		and singleAsset ~= Enum.AssetType.LeftLeg
		and singleAsset ~= Enum.AssetType.RightLeg
	then
		return true
	end

	local assetCFrameOpt = AssetCalculator.calculateAssetCFrame(singleAsset, inst)
	if not assetCFrameOpt then
		return false,
			{
				string.format(
					"Failed to calculate %s asset CFrame. Make sure the character is in I pose, A pose, or T pose, and the parts are not all in the same position",
					singleAsset.Name
				),
			}
	end
	local assetCFrame = assetCFrameOpt :: CFrame

	local yVectorOnXYPlane = assetCFrame.YVector.Unit - (Vector3.zAxis * (assetCFrame.YVector.Unit:Dot(Vector3.zAxis)))
	if not canBeNormalized(yVectorOnXYPlane) then
		return false,
			{
				string.format(
					"%s is pointing along the world Z vector. Make sure the character is in I pose, A pose, or T pose",
					singleAsset.Name
				),
			}
	end
	local inverseYVectorOnXYPlane = -yVectorOnXYPlane.Unit
	local inverseYVector = -assetCFrame.YVector.Unit

	local reasonsAccumulator = FailureReasonsAccumulator.new()
	reasonsAccumulator:updateReasons(validateAngleFromXYPlane(singleAsset, inverseYVectorOnXYPlane, inverseYVector))

	local xVector = if singleAsset == Enum.AssetType.RightArm or singleAsset == Enum.AssetType.RightLeg
		then Vector3.xAxis
		else -Vector3.xAxis

	local minAngle, maxAngle
	if singleAsset == Enum.AssetType.RightArm or singleAsset == Enum.AssetType.LeftArm then
		minAngle, maxAngle = UGCValidatePoseArmMinDegFromXVectorOnXYPlane, UGCValidatePoseArmMaxDegFromXVectorOnXYPlane
	else
		minAngle, maxAngle = UGCValidatePoseLegMinDegFromXVectorOnXYPlane, UGCValidatePoseLegMaxDegFromXVectorOnXYPlane
	end
	reasonsAccumulator:updateReasons(
		validateAngleFromWorldXVectorOnXYPlane(singleAsset, inverseYVectorOnXYPlane, xVector, minAngle, maxAngle)
	)
	return reasonsAccumulator:getFinalResults()
end

return validatePose
