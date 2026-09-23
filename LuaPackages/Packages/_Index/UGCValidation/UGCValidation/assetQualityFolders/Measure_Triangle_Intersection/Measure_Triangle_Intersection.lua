local root = script.Parent.Parent.Parent
local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)
local getFFlagUGCValidateAQMeshQualityBlockUpload = require(root.flags.getFFlagUGCValidateAQMeshQualityBlockUpload)

local BLOCK_UPLOAD_CATEGORIES = {
	[ValidationEnums.UploadCategory.FULL_BODY] = true,
	[ValidationEnums.UploadCategory.DYNAMIC_HEAD] = true,
}

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
	local shouldBlockUpload = getFFlagUGCValidateAQMeshQualityBlockUpload()
		and BLOCK_UPLOAD_CATEGORIES[data.uploadCategory]
	if summary == nil then
		if shouldBlockUpload then
			error("Measure_Triangle_Intersection: AQS summary data is nil")
		else
			reporter:warn(ErrorSourceStrings.Keys.AQSWarn_MissingData, {
				measureName = "Measure_Triangle_Intersection",
			})
		end
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
				local params = {
					partName = partName,
					intersecting_tri_face_percent = string.format("%.2f", percent * 100),
					threshold = tostring(maxIntersectingTriFacePercent),
				}
				if shouldBlockUpload then
					reporter:fail(ErrorSourceStrings.Keys.AQSWarn_TriangleIntersection, params)
				else
					reporter:warn(ErrorSourceStrings.Keys.AQSWarn_TriangleIntersection, params)
				end
			end
		end
	end
end

return Measure_Triangle_Intersection :: Types.ValidationModule
