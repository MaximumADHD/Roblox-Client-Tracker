local root = script.Parent.Parent.Parent
local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)

local maxCageMeshDistanceThreshold = game:DefineFastInt("UGCValidationCageMeshDistanceMaxCageMeshDistanceLC", 60)
local maxNegativeSDFThreshold = game:DefineFastInt("UGCValidationCageMeshDistanceMaxNegativeSDFThresholdLC", 30)

local MeasureCageMeshDistance = {}

MeasureCageMeshDistance.categories = { ValidationEnums.UploadCategory.LAYERED_CLOTHING }
MeasureCageMeshDistance.fflag = require(root.flags.getFFlagUGCValidateAQCageQualityLC)
MeasureCageMeshDistance.expectedAqsData = {
	Measure_Cage_Mesh_Distance = {},
}

MeasureCageMeshDistance.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	local summary = data.aqsSummaryData.Measure_Cage_Mesh_Distance.Handle_OuterCage
	if summary == nil or summary.max_distance == nil or summary.negative_sdf_percent == nil then
		reporter:fail(ErrorSourceStrings.Keys.AQSInputDataError)
	else
		if tonumber(summary.max_distance) > maxCageMeshDistanceThreshold / 100 then
			reporter:fail(ErrorSourceStrings.Keys.MeasureCageMeshDistance_CageTooFar, {
				max_sdf = tonumber(summary.max_distance),
				max_sdf_threshold = maxCageMeshDistanceThreshold / 100,
			})
		end
		if tonumber(summary.negative_sdf_percent) :: number * 100 > maxNegativeSDFThreshold then
			reporter:fail(ErrorSourceStrings.Keys.MeasureCageMeshDistance_CageInsideMesh, {
				negtiveSDFPercent = tonumber(summary.negative_sdf_percent) :: number * 100,
			})
		end
	end
end

return MeasureCageMeshDistance :: Types.ValidationModule
