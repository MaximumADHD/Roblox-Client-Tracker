local root = script.Parent.Parent.Parent
local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)
local Constants = require(root.Constants)
local getFFlagUGCValidateAQScoreWarnings = require(root.flags.getFFlagUGCValidateAQScoreWarnings)

local maxIncorrectUVBodyPartThreshold = game:DefineFastInt("UGCValidateLCCagingIncorrectUVThresholdBodyPart", 7)

local Measure_Cage_UV_Avatar = {}

Measure_Cage_UV_Avatar.categories = { ValidationEnums.UploadCategory.FULL_BODY }
Measure_Cage_UV_Avatar.fflag = require(root.flags.getFFlagUGCValidateAQCageQualityAvatar)

Measure_Cage_UV_Avatar.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	local summary = data.aqsSummaryData.Measure_Cage_UV_Avatar
	for _, cagePartName in Constants.R15_CAGE_PARTS do
		if summary[cagePartName] == nil or summary[cagePartName].incorrect_uv_count == nil then
			reporter:fail(ErrorSourceStrings.Keys.AQSInputDataError)
		else
			if tonumber(summary[cagePartName].incorrect_uv_count) > maxIncorrectUVBodyPartThreshold then
				reporter:fail(ErrorSourceStrings.Keys.MeasureCageUV, {
					cage_name = cagePartName,
					incorrect_uv_count = tonumber(summary[cagePartName].incorrect_uv_count),
				})
			end
			if
				getFFlagUGCValidateAQScoreWarnings()
				and summary[cagePartName].score ~= nil
				and tonumber(summary[cagePartName].score) ~= 100
			then
				reporter:warn(ErrorSourceStrings.Keys.AQSWarn_CageUV, {
					score = tostring(math.floor(tonumber(summary[cagePartName].score) or 0)),
					cage_name = cagePartName,
					incorrect_uv_count = summary[cagePartName].incorrect_uv_count or "0",
				})
			end
		end
	end
end

return Measure_Cage_UV_Avatar :: Types.ValidationModule
