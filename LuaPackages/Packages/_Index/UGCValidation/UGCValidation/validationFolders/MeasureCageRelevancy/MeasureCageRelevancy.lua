local root = script.Parent.Parent.Parent
local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)

local minCageRelevancyThreshold = game:DefineFastInt("UGCMinCageRelevancyThreshold", 40)

local MeasureCageRelevancy = {}

MeasureCageRelevancy.categories = { ValidationEnums.UploadCategory.LAYERED_CLOTHING }
MeasureCageRelevancy.fflag = require(root.flags.getFFlagUGCValidateAQCageQualityLC)
MeasureCageRelevancy.expectedAqsData = {
	Measure_Cage_Relevancy = {},
}

MeasureCageRelevancy.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	local summary = data.aqsSummaryData.Measure_Cage_Relevancy.Handle_OuterCage
	local relevantPercent = summary and tonumber(summary.outer_cage_face_relevant_percent)
	if relevantPercent == nil then
		reporter:fail(ErrorSourceStrings.Keys.AQSInputDataError)
	elseif relevantPercent * 100 < minCageRelevancyThreshold then
		reporter:fail(ErrorSourceStrings.Keys.MeasureCageRelevancy, {
			outer_cage_face_irrelevant_percent = 100 - relevantPercent * 100,
		})
	end
end

return MeasureCageRelevancy :: Types.ValidationModule
