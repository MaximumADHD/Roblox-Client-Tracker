local UGCValidationService = game:GetService("UGCValidationService")

local root = script.Parent.Parent.Parent

local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)

local getFFlagUGCValidateMigrateMeshGeometry = require(root.flags.getFFlagUGCValidateMigrateMeshGeometry)

local TriangleAreaValid = {}

TriangleAreaValid.fflag = getFFlagUGCValidateMigrateMeshGeometry
TriangleAreaValid.categories = {
	ValidationEnums.UploadCategory.TORSO_AND_LIMBS,
	ValidationEnums.UploadCategory.DYNAMIC_HEAD,
}
TriangleAreaValid.requiredData = { ValidationEnums.SharedDataMember.renderMeshesData }
TriangleAreaValid.conditionalData = { ValidationEnums.SharedDataMember.outerCagesData }
TriangleAreaValid.expectedFailures = {}

local function checkTriangleArea(reporter: Types.ValidationReporter, editable: EditableMesh, meshName: string)
	local result = UGCValidationService:ValidateEditableMeshTriangleArea(editable)

	if not result then
		reporter:fail(ErrorSourceStrings.Keys.MeshGeometry_ZeroAreaTriangle, {
			meshName = meshName,
		})
	end
end

TriangleAreaValid.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	-- Check render meshes (MeshPart meshes)
	for meshPartName, editableData in data.renderMeshesData do
		checkTriangleArea(reporter, editableData.editable, meshPartName)
	end

	-- Check outer cage meshes (WrapTarget CageMeshId)
	if data.outerCagesData then
		for cageName, cageData in data.outerCagesData do
			checkTriangleArea(reporter, cageData.editable, cageName .. "OuterCage")
		end
	end
end

return TriangleAreaValid :: Types.ValidationModule
