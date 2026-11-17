local root = script.Parent.Parent.Parent
local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)
local getFIntUGCValidationDynamicHeadMinimumQualityPercent =
	require(root.flags.getFIntUGCValidationDynamicHeadMinimumQualityPercent)

local getFFlagUGCValidateAQScoreWarnings = require(root.flags.getFFlagUGCValidateAQScoreWarnings)
local getFFlagUGCValidateAQDisableLegacyDynamicHead = require(root.flags.getFFlagUGCValidateAQDisableLegacyDynamicHead)
local getFFlagUGCValidationShadowIsDynamicHead = require(root.flags.getFFlagUGCValidationShadowIsDynamicHead)

local Measure_Dynamic_Head = {}

Measure_Dynamic_Head.categories = { ValidationEnums.UploadCategory.DYNAMIC_HEAD }
-- FFlagUGCValidateAQDisableLegacyDynamicHead turns this check off completely, overriding the shadow flag,
-- so it can be retired once Measure_Dynamic_Head_ML_Hybrid replaces it.
Measure_Dynamic_Head.fflag = function()
	return not getFFlagUGCValidateAQDisableLegacyDynamicHead()
end
Measure_Dynamic_Head.shadowFlag = function()
	return getFFlagUGCValidationShadowIsDynamicHead() and not getFFlagUGCValidateAQDisableLegacyDynamicHead()
end

Measure_Dynamic_Head.knownAqsUserErrors = {
	INVALID_LANDMARKS = ErrorSourceStrings.Keys.DynamicHeadCageMisaligned,
	NO_FACS = ErrorSourceStrings.Keys.DynamicHeadNOFACS,
	MISSING_CAGE_INFO = ErrorSourceStrings.Keys.DynamicHeadMISSINGCAGE,
}

local head_metric: { [string]: string } = {
	left_eye_close = ErrorSourceStrings.Keys.DynamicHeadLeftEyeNotClose,
	right_eye_close = ErrorSourceStrings.Keys.DynamicHeadRightEyeNotClose,
	mouth_open = ErrorSourceStrings.Keys.DynamicHeadMouthNotOpen,
	is_happy = ErrorSourceStrings.Keys.DynamicHeadHappyNotShown,
	is_sad = ErrorSourceStrings.Keys.DynamicHeadSadNotShown,
}

Measure_Dynamic_Head.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	local dynamicHeadScores = data.aqsSummaryData.Measure_Dynamic_Head.Head
		or data.aqsSummaryData.Measure_Dynamic_Head.Head_Geo

	if dynamicHeadScores == nil then
		error("Measure_Dynamic_Head: AQS summary missing required fields")
	else
		for metric, error_enum in head_metric do
			if
				dynamicHeadScores[metric] ~= nil
				and tonumber(dynamicHeadScores[metric])
					<= getFIntUGCValidationDynamicHeadMinimumQualityPercent() / 100
			then
				reporter:fail(error_enum)
			end
		end
		if
			getFFlagUGCValidateAQScoreWarnings()
			and dynamicHeadScores.score ~= nil
			and tonumber(dynamicHeadScores.score) ~= 100
		then
			reporter:warn(ErrorSourceStrings.Keys.AQSWarn_DynamicHead, {
				left_eye_close = string.format("%.2f", tonumber(dynamicHeadScores.left_eye_close) or 0),
				right_eye_close = string.format("%.2f", tonumber(dynamicHeadScores.right_eye_close) or 0),
				mouth_open = string.format("%.2f", tonumber(dynamicHeadScores.mouth_open) or 0),
				is_happy = string.format("%.2f", tonumber(dynamicHeadScores.is_happy) or 0),
				is_sad = string.format("%.2f", tonumber(dynamicHeadScores.is_sad) or 0),
			})
		end
	end
end

return Measure_Dynamic_Head :: Types.ValidationModule
