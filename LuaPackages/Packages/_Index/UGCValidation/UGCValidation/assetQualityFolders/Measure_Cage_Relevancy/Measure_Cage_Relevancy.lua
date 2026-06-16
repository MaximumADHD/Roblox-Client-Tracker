local root = script.Parent.Parent.Parent
local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)

local getFFlagUGCValidateAQScoreWarnings = require(root.flags.getFFlagUGCValidateAQScoreWarnings)

local minCageRelevancyThreshold = game:DefineFastInt("UGCMinCageRelevancyThreshold", 40)

local Measure_Cage_Relevancy = {}

Measure_Cage_Relevancy.categories = { ValidationEnums.UploadCategory.LAYERED_CLOTHING }
Measure_Cage_Relevancy.fflag = require(root.flags.getFFlagUGCValidateAQCageQualityLC)

Measure_Cage_Relevancy.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	local summary = data.aqsSummaryData.Measure_Cage_Relevancy.Handle_OuterCage
	local relevantPercent = summary and tonumber(summary.outer_cage_face_relevant_percent)
	if relevantPercent == nil then
		reporter:fail(ErrorSourceStrings.Keys.AQSInputDataError)
	else
		if relevantPercent * 100 < minCageRelevancyThreshold then
			reporter:fail(ErrorSourceStrings.Keys.MeasureCageRelevancy, {
				outer_cage_face_irrelevant_percent = string.format("%.2f", 100 - relevantPercent * 100),
			})
		end
		if getFFlagUGCValidateAQScoreWarnings() and summary.score ~= nil and tonumber(summary.score) ~= 100 then
			reporter:warn(ErrorSourceStrings.Keys.AQSWarn_CageRelevancy, {
				score = tostring(math.floor(tonumber(summary.score) or 0)),
				irrelevant_percent = string.format(
					"%.2f",
					100 - (tonumber(summary.outer_cage_face_relevant_percent) or 0) * 100
				),
			})
		end
	end
end

return Measure_Cage_Relevancy :: Types.ValidationModule
