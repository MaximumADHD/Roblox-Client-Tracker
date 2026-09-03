local root = script.Parent.Parent.Parent
local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)

local maxSimilarVertexPercent = game:DefineFastInt("UGCValidationVertexSimilarityMaxPercent", 30)

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
		reporter:warn(ErrorSourceStrings.Keys.AQSWarn_MissingData, {
			measureName = "Measure_Vertex_Similarity",
		})
		return
	end

	local threshold = maxSimilarVertexPercent / 100

	for partName, partData in summary do
		if partName ~= "measurement_score" then
			if partData == nil or partData.similar_vertex_percent == nil then
				reporter:warn(ErrorSourceStrings.Keys.AQSWarn_MissingData, {
					measureName = "Measure_Vertex_Similarity",
				})
				return
			end

			local percent = tonumber(partData.similar_vertex_percent) or 0
			if percent > threshold then
				reporter:warn(ErrorSourceStrings.Keys.AQSWarn_VertexSimilarity, {
					partName = partName,
					similar_vertex_percent = string.format("%.2f", percent * 100),
					threshold = tostring(maxSimilarVertexPercent),
				})
			end
		end
	end
end

return Measure_Vertex_Similarity :: Types.ValidationModule
