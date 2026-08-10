local root = script.Parent.Parent.Parent
local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)
local getAQEmotePartData = require(root.util.getAQEmotePartData)
local getEngineFeatureEngineUGCValidateEmoteAnimationExport =
	require(root.flags.getEngineFeatureEngineUGCValidateEmoteAnimationExport)
local getFFlagUGCValidateAQEmoteDuration = require(root.flags.getFFlagUGCValidateAQEmoteDuration)
local GetFStringUGCValidateCurveAnimationMinLength = require(root.flags.GetFStringUGCValidateCurveAnimationMinLength)
local GetFStringUGCValidationMaxAnimationLength = require(root.flags.GetFStringUGCValidationMaxAnimationLength)

local Measure_Animation_Duration = {}
Measure_Animation_Duration.categories = { ValidationEnums.UploadCategory.EMOTE_ANIMATION }
-- Runs only when the export pipeline is on (engine feature) AND the duration measurement is enabled.
Measure_Animation_Duration.fflag = function()
	return getEngineFeatureEngineUGCValidateEmoteAnimationExport() and getFFlagUGCValidateAQEmoteDuration()
end

-- Enforce the emote length bounds from AQ's duration_seconds metric rather than in
-- validation (CurveAnimLengthBounded). Fails when the animation is outside
-- [minLength, maxLength] — mirrors the existing validation behavior, sourced from AQ.
Measure_Animation_Duration.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	local partData = getAQEmotePartData(data.aqsSummaryData and data.aqsSummaryData.Measure_Animation_Duration)
	if not partData or partData.duration_seconds == nil then
		error("Can't find Measure_Animation_Duration.duration_seconds")
	end

	local duration = tonumber(partData.duration_seconds) or 0
	local minLength = GetFStringUGCValidateCurveAnimationMinLength.asNumber()
	local maxLength = GetFStringUGCValidationMaxAnimationLength.asNumber()

	if duration <= minLength then
		reporter:fail(ErrorSourceStrings.Keys.AQSFail_AnimationTooShort, {
			duration = tostring(duration),
			minLength = tostring(minLength),
		})
	elseif duration > maxLength then
		reporter:fail(ErrorSourceStrings.Keys.AQSFail_AnimationTooLong, {
			duration = tostring(duration),
			maxLength = tostring(maxLength),
		})
	end
end

return Measure_Animation_Duration :: Types.ValidationModule
