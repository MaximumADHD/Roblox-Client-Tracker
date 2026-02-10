local root = script.Parent.Parent.Parent
local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)
local getFIntUGCValidationDynamicHeadMinimumQualityPercent =
	require(root.flags.getFIntUGCValidationDynamicHeadMinimumQualityPercent)

local getFFlagUGCValidationUpdateHeadIsDynamic = require(root.flags.getFFlagUGCValidationUpdateHeadIsDynamic)

local HeadIsDynamic = {}

HeadIsDynamic.categories = { ValidationEnums.UploadCategory.DYNAMIC_HEAD }
HeadIsDynamic.fflag = require(root.flags.getFFlagUGCValidateIsDynamicHead)
HeadIsDynamic.shadowFlag = require(root.flags.getFFlagUGCValidationShadowIsDynamicHead)
HeadIsDynamic.expectedAqsData = {
	Measure_Dynamic_Head = {
		Head = {
			"left_eye_close",
			"right_eye_close",
			"mouth_open",
			"is_happy",
			"is_sad",
		},
	},
}

HeadIsDynamic.knownAqsUserErrors = {}
if getFFlagUGCValidationUpdateHeadIsDynamic() then
	HeadIsDynamic.knownAqsUserErrors = {
		INVALID_LANDMARKS = ErrorSourceStrings.Keys.DynamicHeadCageMisaligned,
		NO_FACS = ErrorSourceStrings.Keys.DynamicHeadNOFACS,
		MISSING_CAGE_INFO = ErrorSourceStrings.Keys.DynamicHeadMISSINGCAGE,
	}
else
	HeadIsDynamic.knownAqsUserErrors = {
		INVALID_LANDMARKS = ErrorSourceStrings.Keys.DynamicHeadCageMisaligned,
	}
end

local head_metric: { [string]: string } = {
	left_eye_close = ErrorSourceStrings.Keys.DynamicHeadLeftEyeNotClose,
	right_eye_close = ErrorSourceStrings.Keys.DynamicHeadRightEyeNotClose,
	mouth_open = ErrorSourceStrings.Keys.DynamicHeadMouthNotOpen,
	is_happy = ErrorSourceStrings.Keys.DynamicHeadHappyNotShown,
	is_sad = ErrorSourceStrings.Keys.DynamicHeadSadNotShown,
}

HeadIsDynamic.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	local dynamicHeadScores = data.aqsSummaryData.Measure_Dynamic_Head.Head
	if getFFlagUGCValidationUpdateHeadIsDynamic() then
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
		end
	else
		for _metric, score in dynamicHeadScores do
			if tonumber(score) < getFIntUGCValidationDynamicHeadMinimumQualityPercent() / 100 then
				reporter:fail(ErrorSourceStrings.Keys.HeadNotDynamic)
				break
			end
		end
	end
end

return HeadIsDynamic :: Types.ValidationModule
