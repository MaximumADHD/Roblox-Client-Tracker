local root = script.Parent.Parent.Parent
local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)
local getFFlagUGCValidateAQScoreWarnings = require(root.flags.getFFlagUGCValidateAQScoreWarnings)
local getFFlagUGCValidateLCCageUVScoreCheck = require(root.flags.getFFlagUGCValidateLCCageUVScoreCheck)

local maxIncorrectUVThreshold = game:DefineFastInt("UGCValidateLCCagingIncorrectUVThreshold", 100)
local minCageUVScoreThreshold = game:DefineFastInt("UGCValidateLCCageUVMinScore", 90)

local Measure_Cage_UV = {}

Measure_Cage_UV.categories = { ValidationEnums.UploadCategory.LAYERED_CLOTHING }
Measure_Cage_UV.fflag = require(root.flags.getFFlagUGCValidateAQCageQualityLC)

local cageNames = {
	"Handle_InnerCage",
	"Handle_OuterCage",
}

Measure_Cage_UV.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	local summary = data.aqsSummaryData.Measure_Cage_UV
	if summary == nil then
		error("Measure_Cage_UV: AQS summary data is nil")
	end
	local useScoreCheck = getFFlagUGCValidateLCCageUVScoreCheck()
	for _, cageName in cageNames do
		if summary[cageName] == nil or summary[cageName].incorrect_uv_count == nil then
			error("Measure_Cage_UV: AQS summary missing required fields for cage " .. cageName)
		else
			local rawScore = summary[cageName].score
			local score = if rawScore ~= nil then tonumber(rawScore) else nil
			local incorrectUVCount = tonumber(summary[cageName].incorrect_uv_count) or 0
			local unreferencedCount = summary[cageName].unreferenced_vertex_count or "0"
			local nonTemplateCount = summary[cageName].non_template_uv_count or "0"
			local unmatchedCount = summary[cageName].unmatched_template_count or "0"
			local duplicateCount = summary[cageName].duplicate_mapping_count or "0"

			if useScoreCheck then
				----------------------------------------------------------------
				-- Flag ON: score-based fail/warn (replaces incorrect_uv_count)
				-- Score accounts for all UV issue categories: unreferenced,
				-- non-template, duplicate mappings, and unmatched template verts.
				----------------------------------------------------------------
				if score == nil then
					error("Measure_Cage_UV: AQS summary missing score for cage " .. cageName)
				elseif score < minCageUVScoreThreshold then
					reporter:fail(ErrorSourceStrings.Keys.AQSFail_CageUV, {
						cage_name = cageName,
						incorrect_uv_count = tostring(incorrectUVCount),
						unreferenced_vertex_count = unreferencedCount,
						non_template_uv_count = nonTemplateCount,
						unmatched_template_count = unmatchedCount,
						duplicate_mapping_count = duplicateCount,
					})
				elseif getFFlagUGCValidateAQScoreWarnings() and score ~= 100 then
					reporter:warn(ErrorSourceStrings.Keys.AQSWarn_CageUV, {
						score = tostring(score),
						cage_name = cageName,
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
				if incorrectUVCount > maxIncorrectUVThreshold then
					reporter:fail(ErrorSourceStrings.Keys.MeasureCageUV, {
						cage_name = cageName,
						incorrect_uv_count = incorrectUVCount,
					})
				end
				if getFFlagUGCValidateAQScoreWarnings() and score ~= nil and score ~= 100 then
					reporter:warn(ErrorSourceStrings.Keys.AQSWarn_CageUV, {
						score = tostring(score),
						cage_name = cageName,
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

return Measure_Cage_UV :: Types.ValidationModule
