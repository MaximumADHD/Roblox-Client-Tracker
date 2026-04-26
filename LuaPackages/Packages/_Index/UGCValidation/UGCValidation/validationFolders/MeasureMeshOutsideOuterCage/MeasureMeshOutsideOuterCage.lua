local root = script.Parent.Parent.Parent
local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)

local maxRenderMeshInsideOuterCageMeshThreshold =
	game:DefineFastInt("UGCValidateRenderMeshOutsideOuterCageMeshThreshold", 65)
local MeasureMeshOutsideOuterCage = {}

MeasureMeshOutsideOuterCage.categories = { ValidationEnums.UploadCategory.LAYERED_CLOTHING }
MeasureMeshOutsideOuterCage.fflag = require(root.flags.getFFlagUGCValidateAQCageQualityLC)
MeasureMeshOutsideOuterCage.expectedAqsData = {
	Measure_Mesh_Outside_OuterCage = {},
}

MeasureMeshOutsideOuterCage.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	local summary = data.aqsSummaryData.Measure_Mesh_Outside_OuterCage.Handle
	local meshOutsidePercent = summary and tonumber(summary.mesh_outside_outer_cage_percent)
	if meshOutsidePercent == nil then
		reporter:fail(ErrorSourceStrings.Keys.AQSInputDataError)
	elseif meshOutsidePercent * 100 > maxRenderMeshInsideOuterCageMeshThreshold then
		reporter:fail(ErrorSourceStrings.Keys.MeasureMeshOutsideOuterCage, {
			mesh_outside_outer_cage_percent = meshOutsidePercent * 100,
		})
	end
end

return MeasureMeshOutsideOuterCage :: Types.ValidationModule
