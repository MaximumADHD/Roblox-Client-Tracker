local root = script.Parent.Parent.Parent
local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)
local getFFlagUGCValidateAQMeshQualityBlockUpload = require(root.flags.getFFlagUGCValidateAQMeshQualityBlockUpload)

local maxDisconnectedComponents = game:DefineFastInt("UGCValidationMeshIslandVolumeMaxComponents", 10)

local Measure_Mesh_Island_Volume = {}

Measure_Mesh_Island_Volume.categories = {
	ValidationEnums.UploadCategory.FULL_BODY,
	ValidationEnums.UploadCategory.DYNAMIC_HEAD,
}
Measure_Mesh_Island_Volume.fflag = require(root.flags.getFFlagUGCValidateAQMeshIslandVolume)

Measure_Mesh_Island_Volume.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	local summary = data.aqsSummaryData.Measure_Mesh_Island_Volume
	if summary == nil then
		if getFFlagUGCValidateAQMeshQualityBlockUpload() then
			error("Measure_Mesh_Island_Volume: AQS summary data is nil")
		else
			reporter:warn(ErrorSourceStrings.Keys.AQSWarn_MissingData, {
				measureName = "Measure_Mesh_Island_Volume",
			})
		end
		return
	end
	for partName, partData in summary do
		if partName ~= "measurement_score" then
			if partData == nil or partData.score == nil then
				reporter:warn(ErrorSourceStrings.Keys.AQSWarn_MissingData, {
					measureName = "Measure_Mesh_Island_Volume",
				})
				return
			end

			local numComponents = tonumber(partData.num_disconnected_components) or 0
			if numComponents > maxDisconnectedComponents then
				local params = {
					partName = partName,
					num_disconnected_components = tostring(numComponents),
					max_disconnected_components = tostring(maxDisconnectedComponents),
				}
				if getFFlagUGCValidateAQMeshQualityBlockUpload() then
					reporter:fail(ErrorSourceStrings.Keys.AQSFail_TooManyDisconnectedComponents, params)
				else
					reporter:warn(ErrorSourceStrings.Keys.AQSFail_TooManyDisconnectedComponents, params)
				end
			end

			if tonumber(partData.score) ~= 100 then
				local params = {
					partName = partName,
					num_small_volume_islands = partData.num_small_volume_islands or "unknown",
					num_disconnected_components = partData.num_disconnected_components or "unknown",
					score = tostring(math.floor(tonumber(partData.score) or 0)),
				}
				if getFFlagUGCValidateAQMeshQualityBlockUpload() then
					reporter:fail(ErrorSourceStrings.Keys.AQSWarn_MeshIslandVolume, params)
				else
					reporter:warn(ErrorSourceStrings.Keys.AQSWarn_MeshIslandVolume, params)
				end
			end
		end
	end
end

return Measure_Mesh_Island_Volume :: Types.ValidationModule
