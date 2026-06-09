local root = script.Parent.Parent.Parent
local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)
local maxIncorrectUVThreshold = game:DefineFastInt("UGCValidateLCCagingIncorrectUVThreshold", 100)

local Measure_Cage_UV = {}

Measure_Cage_UV.categories = { ValidationEnums.UploadCategory.LAYERED_CLOTHING }
Measure_Cage_UV.fflag = require(root.flags.getFFlagUGCValidateAQCageQualityLC)

local cageNames = {
	"Handle_InnerCage",
	"Handle_OuterCage",
}

Measure_Cage_UV.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	local summary = data.aqsSummaryData.Measure_Cage_UV
	for _, cageName in cageNames do
		if summary[cageName] == nil or summary[cageName].incorrect_uv_count == nil then
			reporter:fail(ErrorSourceStrings.Keys.AQSInputDataError)
		elseif tonumber(summary[cageName].incorrect_uv_count) > maxIncorrectUVThreshold then
			reporter:fail(ErrorSourceStrings.Keys.MeasureCageUV, {
				cage_name = cageName,
				incorrect_uv_count = tonumber(summary[cageName].incorrect_uv_count),
			})
		end
	end
end

return Measure_Cage_UV :: Types.ValidationModule
