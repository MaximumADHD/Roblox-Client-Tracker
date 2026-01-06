local root = script.Parent.Parent.Parent
local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)
local getFIntUGCValidationDynamicHeadMinimumQualityPercent =
	require(root.flags.getFIntUGCValidationDynamicHeadMinimumQualityPercent)

local HeadIsDynamic = {}

HeadIsDynamic.categories = { ValidationEnums.UploadCategory.DYNAMIC_HEAD }
HeadIsDynamic.requiredData = { ValidationEnums.SharedDataMember.aqsSummaryData }
HeadIsDynamic.fflag = require(root.flags.getFFlagUGCValidateIsDynamicHead)
HeadIsDynamic.shadowFlag = require(root.flags.getFFlagUGCValidationShadowIsDynamicHead)
HeadIsDynamic.requiredAqsReturnSchema = {
	Measure_Dynamic_Head = {
		"left_eye_close",
		"right_eye_close",
		"mouth_open",
		"is_happy",
		"is_sad",
	},
}

HeadIsDynamic.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	local dynamicHeadScores = data.aqsSummaryData.Measure_Dynamic_Head
	local minScore = 1
	for _metric, score in dynamicHeadScores do
		minScore = math.min(minScore, score)
	end

	if minScore == -1 then
		reporter:fail(ErrorSourceStrings.Keys.DynamicHeadCageMisaligned)
	elseif minScore < getFIntUGCValidationDynamicHeadMinimumQualityPercent() / 100 then
		reporter:fail(ErrorSourceStrings.Keys.HeadNotDynamic)
	end
end

return HeadIsDynamic :: Types.ValidationModule
