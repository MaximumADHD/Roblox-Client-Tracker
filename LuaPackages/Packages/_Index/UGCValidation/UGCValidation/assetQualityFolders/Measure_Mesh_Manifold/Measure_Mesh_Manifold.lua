local root = script.Parent.Parent.Parent
local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)

local Measure_Mesh_Manifold = {}

Measure_Mesh_Manifold.categories = {
	ValidationEnums.UploadCategory.LAYERED_CLOTHING,
	ValidationEnums.UploadCategory.FULL_BODY,
	ValidationEnums.UploadCategory.RIGID_ACCESSORY,
	ValidationEnums.UploadCategory.DYNAMIC_HEAD,
}
Measure_Mesh_Manifold.fflag = require(root.flags.getFFlagUGCValidateAQMeshQuality)

Measure_Mesh_Manifold.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	local summary = data.aqsSummaryData.Measure_Mesh_Manifold
	if summary == nil then
		reporter:warn(ErrorSourceStrings.Keys.AQSWarn_MissingData, {
			measureName = "Measure_Mesh_Manifold",
		})
		return
	end
	for partName, partData in summary do
		if partName ~= "measurement_score" then
			if partData == nil or partData.score == nil then
				reporter:warn(ErrorSourceStrings.Keys.AQSWarn_MissingData, {
					measureName = "Measure_Mesh_Manifold",
				})
				return
			end
			if tonumber(partData.score) ~= 100 then
				reporter:warn(ErrorSourceStrings.Keys.AQSWarn_MeshManifold, {
					partName = partName,
					score = tostring(math.floor(tonumber(partData.score) or 0)),
				})
			end
		end
	end
end

return Measure_Mesh_Manifold :: Types.ValidationModule
