local root = script.Parent.Parent.Parent

local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)

local GetFStringUGCValidationMaxAnimationDeltas = require(root.flags.GetFStringUGCValidationMaxAnimationDeltas)
local getFIntUGCValidateMaxAnimationFPS = require(root.flags.getFIntUGCValidateMaxAnimationFPS)
local CurveAnimSpeedBounded = {}

CurveAnimSpeedBounded.categories =
	{ ValidationEnums.UploadCategory.EMOTE_ANIMATION, ValidationEnums.UploadCategory.ANIMATION }
CurveAnimSpeedBounded.requiredData = {
	ValidationEnums.SharedDataMember.curveAnimations,
	ValidationEnums.SharedDataMember.curveAnimComputedFrames,
}
CurveAnimSpeedBounded.expectedFailures = {}
CurveAnimSpeedBounded.prereqTests = { ValidationEnums.ValidationModule.CurveAnimDataAvailable }

local function validateCurveAnimClip(reporter: Types.ValidationReporter, computed: Types.CurveAnimClipComputedFrames)
	local animationName = computed.animation and computed.animation:GetFullName()
	local animFrames = computed.animFrames
	local frameDelta = 1.0 / getFIntUGCValidateMaxAnimationFPS()

	local defaultFrameTime = 1.0 / 30.0
	local maxMovementMultiplier = frameDelta / defaultFrameTime
	local maxAllowedMovement = GetFStringUGCValidationMaxAnimationDeltas.asNumber() * maxMovementMultiplier

	local maxStudsPerSecondSpeed = GetFStringUGCValidationMaxAnimationDeltas.asNumber() * (1.0 / defaultFrameTime)

	local prevFrame = {}
	for frameNumberIdx, frame in animFrames do
		for bodyPartName, cframe in frame do
			local prevCFrame = prevFrame[bodyPartName]
			if not prevCFrame then
				continue
			end

			local delta = ((cframe :: CFrame).Position - prevCFrame.Position).Magnitude
			if delta > maxAllowedMovement then
				local frameTime = (frameNumberIdx - 1) * frameDelta
				local studsPerSecondSpeed = (delta / maxMovementMultiplier) * (1.0 / defaultFrameTime)

				local failureParams: { [string]: any } = {
					time = string.format("%.2f", frameTime),
					bodyPart = bodyPartName :: string,
					speed = string.format("%.2f", studsPerSecondSpeed),
					maxSpeed = string.format("%.2f", maxStudsPerSecondSpeed),
				}
				if animationName then
					failureParams.animationName = animationName
				end
				reporter:fail(ErrorSourceStrings.Keys.CurveAnim_SpeedTooFast, failureParams, computed.animation)
				return
			end
		end

		prevFrame = frame
	end
end

CurveAnimSpeedBounded.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	for _, computed in data.curveAnimComputedFrames do
		validateCurveAnimClip(reporter, computed)
	end
end

return CurveAnimSpeedBounded :: Types.ValidationModule
