local root = script.Parent.Parent.Parent
local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)

local maxIntersectingTriFacePercent = game:DefineFastInt("UGCValidationTriangleIntersectionMaxPercent", 20)

local Measure_Triangle_Intersection = {}

Measure_Triangle_Intersection.categories = {
	ValidationEnums.UploadCategory.LAYERED_CLOTHING,
	ValidationEnums.UploadCategory.FULL_BODY,
	ValidationEnums.UploadCategory.RIGID_ACCESSORY,
	ValidationEnums.UploadCategory.DYNAMIC_HEAD,
}
Measure_Triangle_Intersection.fflag = require(root.flags.getFFlagUGCValidateAQMeshQuality)

Measure_Triangle_Intersection.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	local summary = data.aqsSummaryData.Measure_Triangle_Intersection
	if summary == nil then
		reporter:warn(ErrorSourceStrings.Keys.AQSWarn_MissingData, {
			measureName = "Measure_Triangle_Intersection",
		})
		return
	end

	local threshold = maxIntersectingTriFacePercent / 100

	for partName, partData in summary do
		if partName ~= "measurement_score" then
			if partData == nil or partData.intersecting_tri_face_percent == nil then
				reporter:warn(ErrorSourceStrings.Keys.AQSWarn_MissingData, {
					measureName = "Measure_Triangle_Intersection",
				})
				return
			end

			local percent = tonumber(partData.intersecting_tri_face_percent) or 0
			if percent > threshold then
				reporter:warn(ErrorSourceStrings.Keys.AQSWarn_TriangleIntersection, {
					partName = partName,
					intersecting_tri_face_percent = string.format("%.2f", percent * 100),
					threshold = tostring(maxIntersectingTriFacePercent),
				})
			end
		end
	end
end

return Measure_Triangle_Intersection :: Types.ValidationModule
