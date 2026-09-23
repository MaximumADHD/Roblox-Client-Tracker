local root = script.Parent.Parent.Parent
local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)
local Constants = require(root.Constants)
local getFFlagUGCValidateAQScoreWarnings = require(root.flags.getFFlagUGCValidateAQScoreWarnings)
local getFFlagUGCValidateLCCageUVScoreCheck = require(root.flags.getFFlagUGCValidateLCCageUVScoreCheck)

local maxIncorrectUVBodyPartThreshold = game:DefineFastInt("UGCValidateLCCagingIncorrectUVThresholdBodyPart", 7)
local minCageUVAvatarScoreThreshold = game:DefineFastInt("UGCValidateLCCageUVAvatarMinScore", 95)

local Measure_Cage_UV_Avatar = {}

Measure_Cage_UV_Avatar.categories = { ValidationEnums.UploadCategory.FULL_BODY }
Measure_Cage_UV_Avatar.fflag = require(root.flags.getFFlagUGCValidateAQCageQualityAvatar)

Measure_Cage_UV_Avatar.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	local summary = data.aqsSummaryData.Measure_Cage_UV_Avatar
	if summary == nil then
		error("Measure_Cage_UV_Avatar: AQS summary data is nil")
	end
	local useScoreCheck = getFFlagUGCValidateLCCageUVScoreCheck()
	for _, cagePartName in Constants.R15_CAGE_PARTS do
		if summary[cagePartName] == nil or summary[cagePartName].incorrect_uv_count == nil then
			error("Measure_Cage_UV_Avatar: AQS summary missing required fields for cage " .. cagePartName)
		else
			local rawScore = summary[cagePartName].score
			local score = if rawScore ~= nil then tonumber(rawScore) else nil
			local incorrectUVCount = tonumber(summary[cagePartName].incorrect_uv_count) or 0
			local unreferencedCount = summary[cagePartName].unreferenced_vertex_count or "0"
			local nonTemplateCount = summary[cagePartName].non_template_uv_count or "0"
			local unmatchedCount = summary[cagePartName].unmatched_template_count or "0"
			local duplicateCount = summary[cagePartName].duplicate_mapping_count or "0"

			if useScoreCheck then
				----------------------------------------------------------------
				-- Flag ON: score-based fail/warn (replaces incorrect_uv_count)
				-- Score accounts for all UV issue categories: unreferenced,
				-- non-template, duplicate mappings, and unmatched template verts.
				----------------------------------------------------------------
				if score == nil then
					error("Measure_Cage_UV_Avatar: AQS summary missing score for cage " .. cagePartName)
				elseif score < minCageUVAvatarScoreThreshold then
					reporter:fail(ErrorSourceStrings.Keys.AQSFail_CageUV, {
						cage_name = cagePartName,
						incorrect_uv_count = tostring(incorrectUVCount),
						unreferenced_vertex_count = unreferencedCount,
						non_template_uv_count = nonTemplateCount,
						unmatched_template_count = unmatchedCount,
						duplicate_mapping_count = duplicateCount,
					})
				elseif getFFlagUGCValidateAQScoreWarnings() and score ~= 100 then
					reporter:warn(ErrorSourceStrings.Keys.AQSWarn_CageUV, {
						score = tostring(score),
						cage_name = cagePartName,
						incorrect_uv_count = tostring(incorrectUVCount),
						unreferenced_vertex_count = unreferencedCount,
						non_template_uv_count = nonTemplateCount,
						unmatched_template_count = unmatchedCount,
						duplicate_mapping_count = duplicateCount,
					})
				end
			else
				----------------------------------------------------------------
				-- Flag OFF: original behavior, unchanged.
				-- Fail on incorrect_uv_count > threshold; warn on score != 100.
				----------------------------------------------------------------
				if incorrectUVCount > maxIncorrectUVBodyPartThreshold then
					reporter:fail(ErrorSourceStrings.Keys.MeasureCageUV, {
						cage_name = cagePartName,
						incorrect_uv_count = incorrectUVCount,
					})
				end
				if getFFlagUGCValidateAQScoreWarnings() and score ~= nil and score ~= 100 then
					reporter:warn(ErrorSourceStrings.Keys.AQSWarn_CageUV, {
						score = tostring(score),
						cage_name = cagePartName,
						incorrect_uv_count = tostring(incorrectUVCount),
						unreferenced_vertex_count = unreferencedCount,
						non_template_uv_count = nonTemplateCount,
						unmatched_template_count = unmatchedCount,
						duplicate_mapping_count = duplicateCount,
					})
				end
			end
		end
	end
end

return Measure_Cage_UV_Avatar :: Types.ValidationModule
