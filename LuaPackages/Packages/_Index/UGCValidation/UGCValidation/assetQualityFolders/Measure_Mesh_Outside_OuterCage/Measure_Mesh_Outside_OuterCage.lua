local root = script.Parent.Parent.Parent
local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)

local getFFlagUGCValidateAQScoreWarnings = require(root.flags.getFFlagUGCValidateAQScoreWarnings)

local maxRenderMeshInsideOuterCageMeshThreshold =
	game:DefineFastInt("UGCValidateRenderMeshOutsideOuterCageMeshThreshold", 65)

local Measure_Mesh_Outside_OuterCage = {}

Measure_Mesh_Outside_OuterCage.categories = { ValidationEnums.UploadCategory.LAYERED_CLOTHING }
Measure_Mesh_Outside_OuterCage.fflag = require(root.flags.getFFlagUGCValidateAQCageQualityLC)

Measure_Mesh_Outside_OuterCage.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	local summary = data.aqsSummaryData.Measure_Mesh_Outside_OuterCage.Handle
	local meshOutsidePercent = summary and tonumber(summary.mesh_outside_outer_cage_percent)
	if meshOutsidePercent == nil then
		reporter:fail(ErrorSourceStrings.Keys.AQSInputDataError)
	else
		if meshOutsidePercent * 100 > maxRenderMeshInsideOuterCageMeshThreshold then
			reporter:fail(ErrorSourceStrings.Keys.MeasureMeshOutsideOuterCage, {
				mesh_outside_outer_cage_percent = string.format("%.2f", meshOutsidePercent * 100),
			})
		end
		if getFFlagUGCValidateAQScoreWarnings() and summary.score ~= nil and tonumber(summary.score) ~= 100 then
			reporter:warn(ErrorSourceStrings.Keys.AQSWarn_MeshOutsideOuterCage, {
				score = tostring(math.floor(tonumber(summary.score) or 0)),
				mesh_outside_outer_cage_percent = string.format(
					"%.2f",
					(tonumber(summary.mesh_outside_outer_cage_percent) or 0) * 100
				),
			})
		end
	end
end

return Measure_Mesh_Outside_OuterCage :: Types.ValidationModule
