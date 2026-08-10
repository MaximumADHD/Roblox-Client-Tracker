local root = script.Parent.Parent.Parent
local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)

local minScoreThreshold = game:DefineFastInt("UGCValidationMeshIslandMLMinScore", 92)

local Measure_Mesh_Island_ML = {}

Measure_Mesh_Island_ML.categories = {
	ValidationEnums.UploadCategory.FULL_BODY,
}
Measure_Mesh_Island_ML.fflag = require(root.flags.getFFlagUGCValidateAQMeshIslandML)

Measure_Mesh_Island_ML.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	local summary = data.aqsSummaryData.Measure_Mesh_Island_ML
	if summary == nil then
		reporter:err("Measure_Mesh_Island_ML: missing AQS summary data")
		return
	end

	for bundleName, bundleData in summary do
		if bundleName == "measurement_score" then
			continue
		end

		if bundleData == nil or bundleData.score == nil then
			reporter:err("Measure_Mesh_Island_ML: missing score data for " .. tostring(bundleName))
			return
		end

		local score = tonumber(bundleData.score) or 0
		if score < 0 then
			error("Measure_Mesh_Island_ML: received unexpected negative score, possible upstream bug")
		end
		if score < minScoreThreshold then
			reporter:fail(ErrorSourceStrings.Keys.AQSFail_MeshIslandML)
		end
	end
end

return Measure_Mesh_Island_ML :: Types.ValidationModule
