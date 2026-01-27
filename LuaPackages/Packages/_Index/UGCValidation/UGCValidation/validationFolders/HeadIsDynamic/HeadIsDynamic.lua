local root = script.Parent.Parent.Parent
local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)
local getFIntUGCValidationDynamicHeadMinimumQualityPercent =
	require(root.flags.getFIntUGCValidationDynamicHeadMinimumQualityPercent)

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

HeadIsDynamic.knownAqsUserErrors = {
	INVALID_LANDMARKS = ErrorSourceStrings.Keys.DynamicHeadCageMisaligned,
}

HeadIsDynamic.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	local dynamicHeadScores = data.aqsSummaryData.Measure_Dynamic_Head.Head
	for _metric, score in dynamicHeadScores do
		if tonumber(score) < getFIntUGCValidationDynamicHeadMinimumQualityPercent() / 100 then
			reporter:fail(ErrorSourceStrings.Keys.HeadNotDynamic)
			break
		end
	end
end

return HeadIsDynamic :: Types.ValidationModule
