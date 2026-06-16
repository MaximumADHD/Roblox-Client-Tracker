local root = script.Parent.Parent.Parent
local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)
local getFIntUGCValidationDynamicHeadMinimumQualityPercent =
	require(root.flags.getFIntUGCValidationDynamicHeadMinimumQualityPercent)

local getFFlagUGCValidationAddGeometryToExports = require(root.flags.getFFlagUGCValidationAddGeometryToExports)
local getFFlagUGCValidateAQScoreWarnings = require(root.flags.getFFlagUGCValidateAQScoreWarnings)

local Measure_Dynamic_Head = {}

Measure_Dynamic_Head.categories = { ValidationEnums.UploadCategory.DYNAMIC_HEAD }
Measure_Dynamic_Head.fflag = require(root.flags.getFFlagUGCValidateIsDynamicHead)
Measure_Dynamic_Head.shadowFlag = require(root.flags.getFFlagUGCValidationShadowIsDynamicHead)

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
	local dynamicHeadScores = nil
	if getFFlagUGCValidationAddGeometryToExports() then
		dynamicHeadScores = data.aqsSummaryData.Measure_Dynamic_Head.Head
			or data.aqsSummaryData.Measure_Dynamic_Head.Head_Geo
	else
		dynamicHeadScores = data.aqsSummaryData.Measure_Dynamic_Head.Head
	end

	if dynamicHeadScores == nil then
		reporter:fail(ErrorSourceStrings.Keys.AQSInputDataError)
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
				score = tostring(math.floor(tonumber(dynamicHeadScores.score) or 0)),
			})
		end
	end
end

return Measure_Dynamic_Head :: Types.ValidationModule
