--[[
	VertexColorsOpaque checks that all vertex colors in render meshes are fully
	opaque (white with no transparency for body parts, white for accessories).
	Uses UGCValidationService:ValidateEditableMeshVertColors.
]]

local UGCValidationService = game:GetService("UGCValidationService")

local root = script.Parent.Parent.Parent

local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)

local getFFlagUGCValidateMigrateSurfaceAppearanceMeshQuality =
	require(root.flags.getFFlagUGCValidateMigrateSurfaceAppearanceMeshQuality)

local VertexColorsOpaque = {}

VertexColorsOpaque.fflag = getFFlagUGCValidateMigrateSurfaceAppearanceMeshQuality

VertexColorsOpaque.categories = {
	ValidationEnums.UploadCategory.TORSO_AND_LIMBS,
	ValidationEnums.UploadCategory.DYNAMIC_HEAD,
	ValidationEnums.UploadCategory.LAYERED_CLOTHING,
	ValidationEnums.UploadCategory.RIGID_ACCESSORY,
}

VertexColorsOpaque.requiredData = {
	ValidationEnums.SharedDataMember.renderMeshesData,
}

VertexColorsOpaque.expectedFailures = {}

VertexColorsOpaque.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	local uploadCategory = data.uploadCategory

	-- Body parts (torso/limbs and dynamic head) check transparency; accessories do not
	local checkTransparency = uploadCategory == ValidationEnums.UploadCategory.TORSO_AND_LIMBS
		or uploadCategory == ValidationEnums.UploadCategory.DYNAMIC_HEAD

	for meshName, editableMeshData in data.renderMeshesData do
		local editableMesh = editableMeshData.editable

		local result = UGCValidationService:ValidateEditableMeshVertColors(editableMesh, checkTransparency)

		if not result then
			reporter:fail(ErrorSourceStrings.Keys.VertexColors_NotOpaque, {
				MeshName = meshName,
				TransparencyNote = if checkTransparency then "with no transparency" else "",
			})
		end
	end
end

return VertexColorsOpaque :: Types.ValidationModule
