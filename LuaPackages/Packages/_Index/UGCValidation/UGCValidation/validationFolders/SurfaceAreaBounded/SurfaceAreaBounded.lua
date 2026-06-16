local UGCValidationService = game:GetService("UGCValidationService")

local root = script.Parent.Parent.Parent

local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)

local getFIntMaxTotalSurfaceArea = require(root.flags.getFIntMaxTotalSurfaceArea)
local getFFlagUGCValidateMigrateMeshGeometry = require(root.flags.getFFlagUGCValidateMigrateMeshGeometry)

local SurfaceAreaBounded = {}

SurfaceAreaBounded.fflag = getFFlagUGCValidateMigrateMeshGeometry
SurfaceAreaBounded.categories = {
	ValidationEnums.UploadCategory.LAYERED_CLOTHING,
	ValidationEnums.UploadCategory.RIGID_ACCESSORY,
	ValidationEnums.UploadCategory.TORSO_AND_LIMBS,
	ValidationEnums.UploadCategory.DYNAMIC_HEAD,
}
SurfaceAreaBounded.requiredData = { ValidationEnums.SharedDataMember.renderMeshesData }
SurfaceAreaBounded.expectedFailures = {}

SurfaceAreaBounded.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	for meshPartName, editableData in data.renderMeshesData do
		local result =
			UGCValidationService:CalculateEditableMeshTotalSurfaceArea(editableData.editable, editableData.scale)

		if result > getFIntMaxTotalSurfaceArea() then
			reporter:fail(ErrorSourceStrings.Keys.MeshGeometry_SurfaceAreaExceeded, {
				meshName = meshPartName,
				surfaceArea = string.format("%.2f", result),
				maxSurfaceArea = tostring(getFIntMaxTotalSurfaceArea()),
			})
		end
	end
end

return SurfaceAreaBounded :: Types.ValidationModule
