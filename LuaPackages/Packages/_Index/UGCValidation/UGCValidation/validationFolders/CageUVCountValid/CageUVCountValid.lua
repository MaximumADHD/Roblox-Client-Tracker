--[[
	CageUVCountValid checks that WrapTarget cage meshes have the correct number of unique UVs
	based on the body part they belong to.

	Migrated from: src/validation/validateCageUVs.lua
	Called via: validateDescendantMeshMetrics -> validateCageUVs (on WrapTarget CageMeshId)
]]

local UGCValidationService = game:GetService("UGCValidationService")

local root = script.Parent.Parent.Parent

local Constants = require(root.Constants)
local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)

local getFFlagUGCValidateMigrateCageUV = require(root.flags.getFFlagUGCValidateMigrateCageUV)
local getFIntUniqueUVTolerance = require(root.flags.getFIntUniqueUVTolerance)

local CageUVCountValid = {}

CageUVCountValid.categories = {
	ValidationEnums.UploadCategory.TORSO_AND_LIMBS,
	ValidationEnums.UploadCategory.DYNAMIC_HEAD,
}

CageUVCountValid.requiredData = {
	ValidationEnums.SharedDataMember.outerCagesData,
}

CageUVCountValid.conditionalData = {}

CageUVCountValid.fflag = getFFlagUGCValidateMigrateCageUV

CageUVCountValid.expectedFailures = {}

CageUVCountValid.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	for partName, cageData in data.outerCagesData do
		local requiredUVCount = Constants.WRAP_TARGET_CAGE_MESH_UV_COUNTS[partName]
		if not requiredUVCount then
			continue
		end

		local uniqueUVCount = UGCValidationService:CalculateEditableMeshUniqueUVCount(cageData.editable)

		if math.abs(uniqueUVCount - requiredUVCount) > getFIntUniqueUVTolerance() then
			reporter:fail(ErrorSourceStrings.Keys.CageUV_IncorrectUVCount, {
				partName = partName,
				requiredUVCount = tostring(requiredUVCount),
				actualUVCount = tostring(uniqueUVCount),
			})
		end
	end
end

return CageUVCountValid :: Types.ValidationModule
