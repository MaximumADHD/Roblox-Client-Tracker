local root = script.Parent.Parent.Parent
local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)
local getFIntUGCValidationDynamicHeadMinimumQualityPercent =
	require(root.flags.getFIntUGCValidationDynamicHeadMinimumQualityPercent)

local HeadIsDynamic = {}

HeadIsDynamic.categories = { ValidationEnums.UploadCategory.DYNAMIC_HEAD }
HeadIsDynamic.required_data = { ValidationEnums.SharedDataMember.qualityResults }
HeadIsDynamic.fflag = require(root.flags.getEngineFeatureEngineUGCValidationFetchQualityIsDynamicHead)

HeadIsDynamic.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	local dynamicHeadScores = data.qualityResults.Measure_Dynamic_Head
	if dynamicHeadScores then
		local minScore = 1
		for _metric, score in dynamicHeadScores do
			minScore = math.min(minScore, score)
		end

		if minScore < getFIntUGCValidationDynamicHeadMinimumQualityPercent() / 100 then
			reporter:fail(ErrorSourceStrings.Keys.HeadNotDynamic)
		end
	else
		reporter:fail(ErrorSourceStrings.Keys.HeadNotDynamic)
	end
end

return HeadIsDynamic :: Types.ValidationModule
