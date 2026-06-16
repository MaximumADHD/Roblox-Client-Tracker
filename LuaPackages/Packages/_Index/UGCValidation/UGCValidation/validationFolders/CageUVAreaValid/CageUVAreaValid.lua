--[[
	CageUVAreaValid checks that cage mesh UV triangle areas are non-zero,
	ensuring valid UV maps on cage meshes.

	Migrated from: src/validation/validateCageUVTriangleArea.lua
	Called via: validateDescendantMeshMetrics -> validateCageUVTriangleArea (on WrapTarget CageMeshId)
]]

local UGCValidationService = game:GetService("UGCValidationService")

local root = script.Parent.Parent.Parent

local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)

local getFFlagUGCValidateMigrateCageUV = require(root.flags.getFFlagUGCValidateMigrateCageUV)

local CageUVAreaValid = {}

CageUVAreaValid.categories = {
	ValidationEnums.UploadCategory.TORSO_AND_LIMBS,
	ValidationEnums.UploadCategory.DYNAMIC_HEAD,
}

CageUVAreaValid.requiredData = {
	ValidationEnums.SharedDataMember.outerCagesData,
}

CageUVAreaValid.conditionalData = {}

CageUVAreaValid.fflag = getFFlagUGCValidateMigrateCageUV

CageUVAreaValid.expectedFailures = {}

CageUVAreaValid.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	for partName, cageData in data.outerCagesData do
		local result = UGCValidationService:ValidateEditableMeshCageUVTriangleArea(cageData.editable)
		if not result then
			reporter:fail(ErrorSourceStrings.Keys.CageUV_ZeroAreaTriangle, {
				partName = partName,
			})
		end
	end
end

return CageUVAreaValid :: Types.ValidationModule
