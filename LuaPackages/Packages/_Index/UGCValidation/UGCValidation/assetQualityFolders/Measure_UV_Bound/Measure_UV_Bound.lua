local root = script.Parent.Parent.Parent
local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)
local getFFlagUGCValidateAQMeshQualityBlockUpload = require(root.flags.getFFlagUGCValidateAQMeshQualityBlockUpload)

local Measure_UV_Bound = {}

Measure_UV_Bound.categories = {
	ValidationEnums.UploadCategory.LAYERED_CLOTHING,
	ValidationEnums.UploadCategory.FULL_BODY,
	ValidationEnums.UploadCategory.RIGID_ACCESSORY,
	ValidationEnums.UploadCategory.DYNAMIC_HEAD,
}
Measure_UV_Bound.fflag = require(root.flags.getFFlagUGCValidateAQMeshQuality)

Measure_UV_Bound.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	local summary = data.aqsSummaryData.Measure_UV_Bound
	if summary == nil then
		if getFFlagUGCValidateAQMeshQualityBlockUpload() then
			error("Measure_UV_Bound: AQS summary data is nil")
		else
			reporter:warn(ErrorSourceStrings.Keys.AQSWarn_MissingData, {
				measureName = "Measure_UV_Bound",
			})
		end
		return
	end
	for partName, partData in summary do
		if partName ~= "measurement_score" then
			if partData == nil or partData.score == nil then
				reporter:warn(ErrorSourceStrings.Keys.AQSWarn_MissingData, {
					measureName = "Measure_UV_Bound",
				})
				return
			end
			if tonumber(partData.score) ~= 100 then
				local params = {
					partName = partName,
					uv_outside_bound_vert_percent = string.format(
						"%.2f",
						(tonumber(partData.uv_outside_bound_vert_percent) or 0) * 100
					),
					score = tostring(math.floor(tonumber(partData.score) or 0)),
				}
				if getFFlagUGCValidateAQMeshQualityBlockUpload() then
					reporter:fail(ErrorSourceStrings.Keys.AQSWarn_UVBound, params)
				else
					reporter:warn(ErrorSourceStrings.Keys.AQSWarn_UVBound, params)
				end
			end
		end
	end
end

return Measure_UV_Bound :: Types.ValidationModule
