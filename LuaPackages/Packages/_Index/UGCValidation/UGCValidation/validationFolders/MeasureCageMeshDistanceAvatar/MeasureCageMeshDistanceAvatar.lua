local root = script.Parent.Parent.Parent
local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)

local maxCageMeshDistanceThreshold = game:DefineFastInt("UGCValidationCageMeshDistanceMaxCageMeshDistanceAvatar", 60)
local maxNegativeSDFThreshold = game:DefineFastInt("UGCValidationCageMeshDistanceMaxNegativeSDFThresholdAvatar", 30)

local MeasureCageMeshDistanceAvatar = {}

MeasureCageMeshDistanceAvatar.categories = { ValidationEnums.UploadCategory.FULL_BODY }
MeasureCageMeshDistanceAvatar.fflag = require(root.flags.getFFlagUGCValidateAQCageQualityAvatar)
MeasureCageMeshDistanceAvatar.expectedAqsData = {
	Measure_Cage_Mesh_Distance_Avatar = {},
}

MeasureCageMeshDistanceAvatar.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	local summary = data.aqsSummaryData.Measure_Cage_Mesh_Distance_Avatar.full_body_cage
	if summary == nil or summary.max_distance == nil or summary.negative_sdf_percent == nil then
		reporter:fail(ErrorSourceStrings.Keys.AQSInputDataError)
	else
		if tonumber(summary.max_distance) > maxCageMeshDistanceThreshold / 100 then
			reporter:fail(ErrorSourceStrings.Keys.MeasureCageMeshDistanceAvatar_CageTooFar, {
				max_sdf = tonumber(summary.max_distance),
				max_sdf_threshold = maxCageMeshDistanceThreshold / 100,
			})
		end
		if tonumber(summary.negative_sdf_percent) :: number * 100 > maxNegativeSDFThreshold then
			reporter:fail(ErrorSourceStrings.Keys.MeasureCageMeshDistanceAvatar_CageInsideMesh, {
				negtiveSDFPercent = tonumber(summary.negative_sdf_percent) :: number * 100,
			})
		end
	end
end

return MeasureCageMeshDistanceAvatar :: Types.ValidationModule
