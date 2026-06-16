local root = script.Parent.Parent.Parent
local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)

local Measure_Degen_Triangles = {}

Measure_Degen_Triangles.categories = {
	ValidationEnums.UploadCategory.LAYERED_CLOTHING,
	ValidationEnums.UploadCategory.FULL_BODY,
	ValidationEnums.UploadCategory.RIGID_ACCESSORY,
	ValidationEnums.UploadCategory.DYNAMIC_HEAD,
}
Measure_Degen_Triangles.fflag = require(root.flags.getFFlagUGCValidateAQMeshQuality)

Measure_Degen_Triangles.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	local summary = data.aqsSummaryData.Measure_Degen_Triangles
	if summary == nil then
		reporter:warn(ErrorSourceStrings.Keys.AQSWarn_MissingData, {
			measureName = "Measure_Degen_Triangles",
		})
		return
	end
	for partName, partData in summary do
		if partName ~= "measurement_score" then
			if partData == nil or partData.score == nil then
				reporter:warn(ErrorSourceStrings.Keys.AQSWarn_MissingData, {
					measureName = "Measure_Degen_Triangles",
				})
				return
			end
			if tonumber(partData.score) ~= 100 then
				reporter:warn(ErrorSourceStrings.Keys.AQSWarn_DegenTriangles, {
					partName = partName,
					degenerate_triangle_percent = string.format(
						"%.2f",
						(tonumber(partData.degenerate_triangle_percent) or 0) * 100
					),
					score = tostring(math.floor(tonumber(partData.score) or 0)),
				})
			end
		end
	end
end

return Measure_Degen_Triangles :: Types.ValidationModule
