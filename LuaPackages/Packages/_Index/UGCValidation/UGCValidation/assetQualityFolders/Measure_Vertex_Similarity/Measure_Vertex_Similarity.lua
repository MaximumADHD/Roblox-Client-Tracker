local root = script.Parent.Parent.Parent
local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)
local getFFlagUGCValidateAQMeshQualityBlockUpload = require(root.flags.getFFlagUGCValidateAQMeshQualityBlockUpload)

local Measure_Vertex_Similarity = {}

Measure_Vertex_Similarity.categories = {
	ValidationEnums.UploadCategory.LAYERED_CLOTHING,
	ValidationEnums.UploadCategory.FULL_BODY,
	ValidationEnums.UploadCategory.RIGID_ACCESSORY,
	ValidationEnums.UploadCategory.DYNAMIC_HEAD,
}
Measure_Vertex_Similarity.fflag = require(root.flags.getFFlagUGCValidateAQMeshQuality)

Measure_Vertex_Similarity.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	local summary = data.aqsSummaryData.Measure_Vertex_Similarity
	if summary == nil then
		if getFFlagUGCValidateAQMeshQualityBlockUpload() then
			error("Measure_Vertex_Similarity: AQS summary data is nil")
		else
			reporter:warn(ErrorSourceStrings.Keys.AQSWarn_MissingData, {
				measureName = "Measure_Vertex_Similarity",
			})
		end
		return
	end
	for partName, partData in summary do
		if partName ~= "measurement_score" then
			if partData == nil or partData.score == nil then
				reporter:warn(ErrorSourceStrings.Keys.AQSWarn_MissingData, {
					measureName = "Measure_Vertex_Similarity",
				})
				return
			end
			if tonumber(partData.score) ~= 100 then
				local params = {
					partName = partName,
					similar_vertex_percent = string.format(
						"%.2f",
						(tonumber(partData.similar_vertex_percent) or 0) * 100
					),
					score = tostring(math.floor(tonumber(partData.score) or 0)),
				}
				if getFFlagUGCValidateAQMeshQualityBlockUpload() then
					reporter:fail(ErrorSourceStrings.Keys.AQSWarn_VertexSimilarity, params)
				else
					reporter:warn(ErrorSourceStrings.Keys.AQSWarn_VertexSimilarity, params)
				end
			end
		end
	end
end

return Measure_Vertex_Similarity :: Types.ValidationModule
