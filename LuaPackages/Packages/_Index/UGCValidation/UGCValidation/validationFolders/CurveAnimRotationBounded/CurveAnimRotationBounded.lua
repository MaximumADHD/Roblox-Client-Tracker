local root = script.Parent.Parent.Parent

local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)

local getFFlagUGCValidateCurveAnimRotationSpeed = require(root.flags.getFFlagUGCValidateCurveAnimRotationSpeed)
local getFIntUGCValidateMaxAnimationFPS = require(root.flags.getFIntUGCValidateMaxAnimationFPS)
local getFIntUGCValidationMaxAnimationRotationSpeedPerSecond =
	require(root.flags.getFIntUGCValidationMaxAnimationRotationSpeedPerSecond)
local CurveAnimRotationBounded = {}

CurveAnimRotationBounded.categories =
	{ ValidationEnums.UploadCategory.EMOTE_ANIMATION, ValidationEnums.UploadCategory.ANIMATION }
CurveAnimRotationBounded.requiredData = {
	ValidationEnums.SharedDataMember.curveAnimations,
	ValidationEnums.SharedDataMember.curveAnimComputedFrames,
}
CurveAnimRotationBounded.expectedFailures = {}
CurveAnimRotationBounded.prereqTests = { ValidationEnums.ValidationModule.CurveAnimDataAvailable }

local function validateCurveAnimClip(reporter: Types.ValidationReporter, computed: Types.CurveAnimClipComputedFrames)
	local animationName = computed.animation and computed.animation:GetFullName()
	if not getFFlagUGCValidateCurveAnimRotationSpeed() then
		return
	end

	local animFrames = computed.animFrames
	local frameDelta = 1.0 / getFIntUGCValidateMaxAnimationFPS()

	local maxDegreesPerSecondRotationSpeed = getFIntUGCValidationMaxAnimationRotationSpeedPerSecond()
	local maxDegreesAllowedRotationPerFrame = maxDegreesPerSecondRotationSpeed / getFIntUGCValidateMaxAnimationFPS()

	local allCFramesPrevFrame = {}
	for frameNumberIdx, frame in animFrames do
		for bodyPartName, cframe in frame do
			local prevCFrame = allCFramesPrevFrame[bodyPartName]
			if not prevCFrame then
				continue
			end

			local delta = math.deg(math.abs((cframe :: any):AngleBetween(prevCFrame)))
			if delta > maxDegreesAllowedRotationPerFrame then
				local frameTime = (frameNumberIdx - 1) * frameDelta
				local degreesPerSecondSpeed = delta * getFIntUGCValidateMaxAnimationFPS()

				local failureParams: { [string]: any } = {
					time = string.format("%.2f", frameTime),
					bodyPart = bodyPartName :: string,
					speed = string.format("%.2f", degreesPerSecondSpeed),
					maxSpeed = tostring(maxDegreesPerSecondRotationSpeed),
				}
				if animationName then
					failureParams.animationName = animationName
				end
				reporter:fail(ErrorSourceStrings.Keys.CurveAnim_RotationTooFast, failureParams, computed.animation)
				return
			end
		end

		allCFramesPrevFrame = frame
	end
end

CurveAnimRotationBounded.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	for _, computed in data.curveAnimComputedFrames do
		validateCurveAnimClip(reporter, computed)
	end
end

return CurveAnimRotationBounded :: Types.ValidationModule
