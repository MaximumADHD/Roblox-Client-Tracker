local root = script.Parent.Parent.Parent

local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)

local GetFStringUGCValidateAnimationHeightTol = require(root.flags.GetFStringUGCValidateAnimationHeightTol)
local GetFStringUGCValidationMaxAnimationBounds = require(root.flags.GetFStringUGCValidationMaxAnimationBounds)
local getFIntUGCValidateMaxAnimationFPS = require(root.flags.getFIntUGCValidateMaxAnimationFPS)
local CurveAnimBoundsValid = {}

CurveAnimBoundsValid.categories =
	{ ValidationEnums.UploadCategory.EMOTE_ANIMATION, ValidationEnums.UploadCategory.ANIMATION }
CurveAnimBoundsValid.requiredData = {
	ValidationEnums.SharedDataMember.curveAnimations,
	ValidationEnums.SharedDataMember.curveAnimComputedFrames,
}
CurveAnimBoundsValid.expectedFailures = {}
CurveAnimBoundsValid.prereqTests = { ValidationEnums.ValidationModule.CurveAnimDataAvailable }

local function validateCurveAnimClip(reporter: Types.ValidationReporter, computed: Types.CurveAnimClipComputedFrames)
	local animationName = computed.animation and computed.animation:GetFullName()
	local animFrames = computed.animFrames
	local animLength = computed.animLength
	local frameDelta = 1.0 / getFIntUGCValidateMaxAnimationFPS()

	local heightTol = GetFStringUGCValidateAnimationHeightTol.asNumber()
	local boundsTol = GetFStringUGCValidationMaxAnimationBounds.asNumber()

	for frameNumberIdx, frame in animFrames do
		for bodyPartName, cframe in frame do
			if (cframe :: CFrame).Position.Y < heightTol then
				local failureParams: { [string]: any } = {
					time = string.format("%.2f", math.min(animLength, (frameNumberIdx - 1) * frameDelta)),
					bodyPart = bodyPartName :: string,
					height = string.format("%.2f", (cframe :: CFrame).Position.Y),
					minHeight = GetFStringUGCValidateAnimationHeightTol.asString(),
				}
				if animationName then
					failureParams.animationName = animationName
				end
				reporter:fail(ErrorSourceStrings.Keys.CurveAnim_PartTooLow, failureParams, computed.animation)
				return
			end
			if (cframe :: CFrame).Position.Magnitude > boundsTol then
				local failureParams: { [string]: any } = {
					time = string.format("%.2f", math.min(animLength, (frameNumberIdx - 1) * frameDelta)),
					bodyPart = bodyPartName :: string,
					distance = string.format("%.2f", (cframe :: CFrame).Position.Magnitude),
					maxDistance = GetFStringUGCValidationMaxAnimationBounds.asString(),
				}
				if animationName then
					failureParams.animationName = animationName
				end
				reporter:fail(ErrorSourceStrings.Keys.CurveAnim_PartTooFar, failureParams, computed.animation)
				return
			end
		end
	end
end

CurveAnimBoundsValid.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	for _, computed in data.curveAnimComputedFrames do
		validateCurveAnimClip(reporter, computed)
	end
end

return CurveAnimBoundsValid :: Types.ValidationModule
