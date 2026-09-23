local root = script.Parent.Parent.Parent
local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)

local Measure_Cage_Part_Placement = {}

Measure_Cage_Part_Placement.categories = { ValidationEnums.UploadCategory.LAYERED_CLOTHING }
Measure_Cage_Part_Placement.fflag = require(root.flags.getFFlagUGCValidateAQCagePartPlacement)

local VERTEX_COUNT_MISMATCH = "part_vertex_count_mismatch"

local function collectViolationDetails(partData: { [string]: any }): { { [string]: any } }
	local violations = {}
	local idx = 0
	while true do
		local violationType = partData[`violation_{idx}_type`]
		if violationType == nil then
			break
		end
		if violationType == VERTEX_COUNT_MISMATCH then
			table.insert(violations, {
				violationType = violationType,
				partName = partData[`violation_{idx}_upper_part`] or "unknown",
				expectedCount = partData[`violation_{idx}_expected_vertex_count`] or "?",
				actualCount = partData[`violation_{idx}_actual_vertex_count`] or "?",
			})
		else
			table.insert(violations, {
				violationType = violationType,
				upperPart = partData[`violation_{idx}_upper_part`] or "unknown",
				lowerPart = partData[`violation_{idx}_lower_part`] or "unknown",
			})
		end
		idx += 1
	end
	return violations
end

Measure_Cage_Part_Placement.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	local summary = data.aqsSummaryData.Measure_Cage_Part_Placement
	if summary == nil then
		reporter:warn(ErrorSourceStrings.Keys.AQSWarn_MissingData, {
			measureName = "Measure_Cage_Part_Placement",
		})
		return
	end
	for cageName, partData in summary do
		if cageName ~= "measurement_score" then
			if partData == nil or partData.score == nil then
				reporter:warn(ErrorSourceStrings.Keys.AQSWarn_MissingData, {
					measureName = "Measure_Cage_Part_Placement",
				})
				return
			end
			if tonumber(partData.score) ~= 100 then
				local violations = collectViolationDetails(partData)
				for _, violation in violations do
					if violation.violationType == VERTEX_COUNT_MISMATCH then
						reporter:fail(ErrorSourceStrings.Keys.AQSFail_CagePartVertexCount, {
							cageName = cageName,
							partName = violation.partName,
							expectedCount = violation.expectedCount,
							actualCount = violation.actualCount,
						})
					else
						reporter:fail(ErrorSourceStrings.Keys.AQSFail_CagePartPlacement, {
							cageName = cageName,
							upperPart = violation.upperPart,
							lowerPart = violation.lowerPart,
						})
					end
				end
			end
		end
	end
end

return Measure_Cage_Part_Placement :: Types.ValidationModule
