local UGCValidationService = game:GetService("UGCValidationService")

local root = script.Parent.Parent.Parent

local Constants = require(root.Constants)
local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)

local getFIntUGCValidateTriangleLimitTolerance = require(root.flags.getFIntUGCValidateTriangleLimitTolerance)
local getFFlagUGCValidateMigrateMeshGeometry = require(root.flags.getFFlagUGCValidateMigrateMeshGeometry)

local TriangleCountBounded = {}

TriangleCountBounded.fflag = getFFlagUGCValidateMigrateMeshGeometry
TriangleCountBounded.categories = {
	ValidationEnums.UploadCategory.LAYERED_CLOTHING,
	ValidationEnums.UploadCategory.RIGID_ACCESSORY,
	ValidationEnums.UploadCategory.TORSO_AND_LIMBS,
	ValidationEnums.UploadCategory.DYNAMIC_HEAD,
}
TriangleCountBounded.requiredData = { ValidationEnums.SharedDataMember.renderMeshesData }
TriangleCountBounded.expectedFailures = {}

local function runAccessoryCheck(reporter: Types.ValidationReporter, data: Types.SharedData)
	local maxTriangles = Constants.MAX_HAT_TRIANGLES

	for meshPartName, editableData in data.renderMeshesData do
		local triangles = UGCValidationService:GetEditableMeshTriCount(editableData.editable)

		if triangles > maxTriangles then
			reporter:fail(ErrorSourceStrings.Keys.MeshGeometry_TriangleCountExceeded, {
				meshName = meshPartName,
				triangleCount = tostring(triangles),
				maxTriangles = tostring(maxTriangles),
			})
		end
	end
end

local function runBodyPartCheck(reporter: Types.ValidationReporter, data: Types.SharedData)
	local assetTypeName = data.uploadEnum.assetType.Name
	local maxTriangleCount = Constants.ASSET_RENDER_MESH_MAX_TRIANGLES[assetTypeName]

	if not maxTriangleCount then
		return
	end

	local totalTriangles = 0
	for _, editableData in data.renderMeshesData do
		local triangles = UGCValidationService:GetEditableMeshTriCount(editableData.editable)
		totalTriangles = totalTriangles + triangles
	end

	local tolerance = getFIntUGCValidateTriangleLimitTolerance() / 100
	local maxTriangleCountWithTolerance = maxTriangleCount + (maxTriangleCount * tolerance)

	if totalTriangles > maxTriangleCountWithTolerance then
		reporter:fail(ErrorSourceStrings.Keys.MeshGeometry_TotalTriangleCountExceeded, {
			triangleCount = tostring(totalTriangles),
			assetTypeName = assetTypeName,
			maxTriangles = tostring(maxTriangleCount),
		})
	end
end

TriangleCountBounded.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	if
		data.uploadCategory == ValidationEnums.UploadCategory.TORSO_AND_LIMBS
		or data.uploadCategory == ValidationEnums.UploadCategory.DYNAMIC_HEAD
	then
		runBodyPartCheck(reporter, data)
	else
		runAccessoryCheck(reporter, data)
	end
end

return TriangleCountBounded :: Types.ValidationModule
