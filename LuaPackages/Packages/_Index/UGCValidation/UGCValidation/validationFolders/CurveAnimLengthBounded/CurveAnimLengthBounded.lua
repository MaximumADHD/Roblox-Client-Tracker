local root = script.Parent.Parent.Parent

local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)

local GetFStringUGCValidateCurveAnimationMinLength = require(root.flags.GetFStringUGCValidateCurveAnimationMinLength)
local GetFStringUGCValidationMaxAnimationLength = require(root.flags.GetFStringUGCValidationMaxAnimationLength)
local getEngineFeatureEngineUGCValidateEmoteAnimationExport =
	require(root.flags.getEngineFeatureEngineUGCValidateEmoteAnimationExport)
local getFFlagUGCValidateAQEmoteDuration = require(root.flags.getFFlagUGCValidateAQEmoteDuration)

local CurveAnimLengthBounded = {}

-- AQ's Measure_Animation_Duration owns the length check for EMOTE_ANIMATION once its
-- flags are on, so drop that category here. ANIMATION-pack uploads are NOT covered by
-- AQ, so they must keep this check.
local emoteAqOwnsLength = getEngineFeatureEngineUGCValidateEmoteAnimationExport()
	and getFFlagUGCValidateAQEmoteDuration()

CurveAnimLengthBounded.categories = {}
if not emoteAqOwnsLength then
	table.insert(CurveAnimLengthBounded.categories, ValidationEnums.UploadCategory.EMOTE_ANIMATION)
end
table.insert(CurveAnimLengthBounded.categories, ValidationEnums.UploadCategory.ANIMATION)
CurveAnimLengthBounded.requiredData = {
	ValidationEnums.SharedDataMember.curveAnimations,
	ValidationEnums.SharedDataMember.curveAnimComputedFrames,
}
CurveAnimLengthBounded.expectedFailures = {}
CurveAnimLengthBounded.prereqTests = { ValidationEnums.ValidationModule.CurveAnimDataAvailable }

local function validateCurveAnimClip(reporter: Types.ValidationReporter, computed: Types.CurveAnimClipComputedFrames)
	local animationName = computed.animation and computed.animation:GetFullName()
	local length = computed.animLength

	local minLength = GetFStringUGCValidateCurveAnimationMinLength.asNumber()

	if length <= minLength or length > GetFStringUGCValidationMaxAnimationLength.asNumber() then
		local failureParams: { [string]: any } = {
			minLength = tostring(minLength),
			maxLength = GetFStringUGCValidationMaxAnimationLength.asString(),
		}
		if animationName then
			failureParams.animationName = animationName
		end
		reporter:fail(ErrorSourceStrings.Keys.CurveAnim_InvalidLength, failureParams, computed.animation)
	end
end

CurveAnimLengthBounded.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	for _, computed in data.curveAnimComputedFrames do
		validateCurveAnimClip(reporter, computed)
	end
end

return CurveAnimLengthBounded :: Types.ValidationModule
