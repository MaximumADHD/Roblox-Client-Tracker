local root = script.Parent.Parent.Parent
local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)

local Measure_Mesh_Watertight = {}

Measure_Mesh_Watertight.categories = {
	ValidationEnums.UploadCategory.LAYERED_CLOTHING,
	ValidationEnums.UploadCategory.FULL_BODY,
	ValidationEnums.UploadCategory.RIGID_ACCESSORY,
	ValidationEnums.UploadCategory.DYNAMIC_HEAD,
}
Measure_Mesh_Watertight.fflag = require(root.flags.getFFlagUGCValidateAQMeshQuality)

Measure_Mesh_Watertight.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	local summary = data.aqsSummaryData.Measure_Mesh_Watertight
	if summary == nil then
		reporter:warn(ErrorSourceStrings.Keys.AQSWarn_MissingData, {
			measureName = "Measure_Mesh_Watertight",
		})
		return
	end
	local headParts = { Head = true, Head_Geo = true, Head_OuterCage = true }
	for partName, partData in summary do
		if partName ~= "measurement_score" then
			if partData == nil or partData.boundary_edges_percent == nil then
				reporter:warn(ErrorSourceStrings.Keys.AQSWarn_MissingData, {
					measureName = "Measure_Mesh_Watertight",
				})
				return
			end
			if not headParts[partName] and (tonumber(partData.boundary_edges_percent) or 0) > 0 then
				reporter:warn(ErrorSourceStrings.Keys.AQSWarn_MeshNotWatertight, {
					partName = partName,
					boundary_edges_percent = string.format(
						"%.2f",
						(tonumber(partData.boundary_edges_percent) or 0) * 100
					),
				})
			end
		end
	end
end

return Measure_Mesh_Watertight :: Types.ValidationModule
