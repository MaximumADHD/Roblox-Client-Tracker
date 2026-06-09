local root = script.Parent.Parent.Parent
local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)
local Constants = require(root.Constants)
local maxIncorrectUVBodyPartThreshold = game:DefineFastInt("UGCValidateLCCagingIncorrectUVThresholdBodyPart", 7)

local Measure_Cage_UV_Avatar = {}

Measure_Cage_UV_Avatar.categories = { ValidationEnums.UploadCategory.FULL_BODY }
Measure_Cage_UV_Avatar.fflag = require(root.flags.getFFlagUGCValidateAQCageQualityAvatar)

Measure_Cage_UV_Avatar.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	local summary = data.aqsSummaryData.Measure_Cage_UV_Avatar
	for _, cagePartName in Constants.R15_CAGE_PARTS do
		if summary[cagePartName] == nil or summary[cagePartName].incorrect_uv_count == nil then
			reporter:fail(ErrorSourceStrings.Keys.AQSInputDataError)
		elseif tonumber(summary[cagePartName].incorrect_uv_count) > maxIncorrectUVBodyPartThreshold then
			reporter:fail(ErrorSourceStrings.Keys.MeasureCageUV, {
				cage_name = cagePartName,
				incorrect_uv_count = tonumber(summary[cagePartName].incorrect_uv_count),
			})
		end
	end
end

return Measure_Cage_UV_Avatar :: Types.ValidationModule
