local root = script.Parent.Parent.Parent

local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)

local getFFlagUGCValidateMigrateCurveAnim = require(root.flags.getFFlagUGCValidateMigrateCurveAnim)
local getFFlagUGCValidateFixCurveAnimFrameTimeErrorMessage =
	require(root.flags.getFFlagUGCValidateFixCurveAnimFrameTimeErrorMessage)
local GetFStringUGCValidationMaxAnimationDeltas = require(root.flags.GetFStringUGCValidationMaxAnimationDeltas)
local getFIntUGCValidateMaxAnimationFPS = require(root.flags.getFIntUGCValidateMaxAnimationFPS)
local getFFlagUGCValidationAnimationPackSupport = require(root.flags.getFFlagUGCValidationAnimationPackSupport)

local CurveAnimSpeedBounded = {}

CurveAnimSpeedBounded.categories = { ValidationEnums.UploadCategory.EMOTE_ANIMATION }
if getFFlagUGCValidationAnimationPackSupport() then
	table.insert(CurveAnimSpeedBounded.categories, ValidationEnums.UploadCategory.ANIMATION)
end
CurveAnimSpeedBounded.requiredData = {
	ValidationEnums.SharedDataMember.curveAnimations,
	ValidationEnums.SharedDataMember.curveAnimComputedFrames,
}
CurveAnimSpeedBounded.fflag = getFFlagUGCValidateMigrateCurveAnim
CurveAnimSpeedBounded.expectedFailures = {}
CurveAnimSpeedBounded.prereqTests = { ValidationEnums.ValidationModule.CurveAnimDataAvailable }

CurveAnimSpeedBounded.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	local computed = data.curveAnimComputedFrames
	local animFrames = computed.animFrames
	local frameDelta = 1.0 / getFIntUGCValidateMaxAnimationFPS()

	local defaultFrameTime = 1.0 / 30.0
	local maxMovementMultiplier = frameDelta / defaultFrameTime
	local maxAllowedMovement = GetFStringUGCValidationMaxAnimationDeltas.asNumber() * maxMovementMultiplier

	local maxStudsPerSecondSpeed = nil
	if getFFlagUGCValidateFixCurveAnimFrameTimeErrorMessage() then
		maxStudsPerSecondSpeed = GetFStringUGCValidationMaxAnimationDeltas.asNumber() * (1.0 / defaultFrameTime)
	end

	local prevFrame = {}
	for frameNumberIdx, frame in animFrames do
		for bodyPartName, cframe in frame do
			local prevCFrame = prevFrame[bodyPartName]
			if not prevCFrame then
				continue
			end

			local delta = ((cframe :: CFrame).Position - prevCFrame.Position).Magnitude
			if delta > maxAllowedMovement then
				if getFFlagUGCValidateFixCurveAnimFrameTimeErrorMessage() then
					local frameTime = (frameNumberIdx - 1) * frameDelta
					local studsPerSecondSpeed = (delta / maxMovementMultiplier) * (1.0 / defaultFrameTime)

					reporter:fail(ErrorSourceStrings.Keys.CurveAnim_SpeedTooFast, {
						time = string.format("%.2f", frameTime),
						bodyPart = bodyPartName :: string,
						speed = string.format("%.2f", studsPerSecondSpeed),
						maxSpeed = string.format("%.2f", maxStudsPerSecondSpeed),
					})
				else
					reporter:fail(ErrorSourceStrings.Keys.CurveAnim_SpeedTooFastLegacy, {
						bodyPart = bodyPartName :: string,
						maxMovement = GetFStringUGCValidationMaxAnimationDeltas.asString(),
					})
				end
				return
			end
		end

		prevFrame = frame
	end
end

return CurveAnimSpeedBounded :: Types.ValidationModule
