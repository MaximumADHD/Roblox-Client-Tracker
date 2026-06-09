local root = script.Parent.Parent.Parent

local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)

local getFFlagUGCValidateMigrateCurveAnim = require(root.flags.getFFlagUGCValidateMigrateCurveAnim)
local getFFlagUGCValidateCurveAnimRotationSpeed = require(root.flags.getFFlagUGCValidateCurveAnimRotationSpeed)
local getFIntUGCValidateMaxAnimationFPS = require(root.flags.getFIntUGCValidateMaxAnimationFPS)
local getFIntUGCValidationMaxAnimationRotationSpeedPerSecond =
	require(root.flags.getFIntUGCValidationMaxAnimationRotationSpeedPerSecond)
local getFFlagUGCValidationAnimationPackSupport = require(root.flags.getFFlagUGCValidationAnimationPackSupport)

local CurveAnimRotationBounded = {}

CurveAnimRotationBounded.categories = { ValidationEnums.UploadCategory.EMOTE_ANIMATION }
if getFFlagUGCValidationAnimationPackSupport() then
	table.insert(CurveAnimRotationBounded.categories, ValidationEnums.UploadCategory.ANIMATION)
end
CurveAnimRotationBounded.requiredData = {
	ValidationEnums.SharedDataMember.curveAnimations,
	ValidationEnums.SharedDataMember.curveAnimComputedFrames,
}
CurveAnimRotationBounded.fflag = getFFlagUGCValidateMigrateCurveAnim
CurveAnimRotationBounded.expectedFailures = {}
CurveAnimRotationBounded.prereqTests = { ValidationEnums.ValidationModule.CurveAnimDataAvailable }

CurveAnimRotationBounded.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	if not getFFlagUGCValidateCurveAnimRotationSpeed() then
		return
	end

	local computed = data.curveAnimComputedFrames
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

				reporter:fail(ErrorSourceStrings.Keys.CurveAnim_RotationTooFast, {
					time = string.format("%.2f", frameTime),
					bodyPart = bodyPartName :: string,
					speed = string.format("%.2f", degreesPerSecondSpeed),
					maxSpeed = tostring(maxDegreesPerSecondRotationSpeed),
				})
				return
			end
		end

		allCFramesPrevFrame = frame
	end
end

return CurveAnimRotationBounded :: Types.ValidationModule
