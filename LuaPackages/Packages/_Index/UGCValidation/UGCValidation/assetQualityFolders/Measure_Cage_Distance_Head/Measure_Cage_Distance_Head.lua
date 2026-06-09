local root = script.Parent.Parent.Parent
local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)

local maxCageMeshDistanceThreshold = game:DefineFastInt("UGCValidationCageMeshDistanceHeadMaxCageMeshDistance", 60)
local maxNegativeSDFThreshold = game:DefineFastInt("UGCValidationCageMeshDistanceHeadMaxNegativeSDFThreshold", 30)

local Measure_Cage_Distance_Head = {}

Measure_Cage_Distance_Head.categories = { ValidationEnums.UploadCategory.DYNAMIC_HEAD }
Measure_Cage_Distance_Head.fflag = require(root.flags.getFFlagUGCValidateCageMeshDistanceHead)

Measure_Cage_Distance_Head.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	local summary = data.aqsSummaryData.Measure_Cage_Distance_Head.Head_OuterCage
	if summary == nil or summary.max_distance == nil or summary.negative_sdf_percent == nil then
		reporter:fail(ErrorSourceStrings.Keys.AQSInputDataError)
	else
		if tonumber(summary.max_distance) > maxCageMeshDistanceThreshold / 100 then
			reporter:fail(ErrorSourceStrings.Keys.MeasureCageMeshDistanceHead_CageTooFar, {
				max_sdf = tonumber(summary.max_distance),
				max_sdf_threshold = maxCageMeshDistanceThreshold / 100,
			})
		end
		if tonumber(summary.negative_sdf_percent) :: number * 100 > maxNegativeSDFThreshold then
			reporter:fail(ErrorSourceStrings.Keys.MeasureCageMeshDistanceHead_CageInsideMesh, {
				negtiveSDFPercent = tonumber(summary.negative_sdf_percent) :: number * 100,
			})
		end
	end
end

return Measure_Cage_Distance_Head :: Types.ValidationModule
