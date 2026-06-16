--[[
	SurfaceAppearancePresent checks that all MeshParts without a TextureID have a
	SurfaceAppearance child, and that MeshParts with a TextureID do not have a child
	SurfaceAppearance.
]]

local root = script.Parent.Parent.Parent

local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)

local getFFlagUGCValidateMigrateSurfaceAppearanceMeshQuality =
	require(root.flags.getFFlagUGCValidateMigrateSurfaceAppearanceMeshQuality)

-- IEC consumers (in-experience). Mirrors SOURCE_TO_ENV in ValidationManager.lua,
-- but read directly from `source` (always populated) so the IEC alternate-content
-- path works regardless of FFlagUGCValidateMigrateSchemaProperties — `consumerEnv`
-- is only assigned when that flag is on.
local IEC_SOURCES = {
	InExpServer = true,
	InExpClient = true,
}

local SurfaceAppearancePresent = {}

SurfaceAppearancePresent.fflag = getFFlagUGCValidateMigrateSurfaceAppearanceMeshQuality

SurfaceAppearancePresent.categories = {
	ValidationEnums.UploadCategory.TORSO_AND_LIMBS,
	ValidationEnums.UploadCategory.DYNAMIC_HEAD,
	ValidationEnums.UploadCategory.RIGID_ACCESSORY,
}

SurfaceAppearancePresent.requiredData = {}

SurfaceAppearancePresent.expectedFailures = {}

SurfaceAppearancePresent.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	local rootInstance = data.rootInstance
	local allowEditableInstances = IEC_SOURCES[data.consumerConfig.source] == true

	local allDescendants: { Instance } = rootInstance:GetDescendants()
	table.insert(allDescendants, rootInstance)

	for _, descendant in allDescendants do
		if not descendant:IsA("MeshPart") then
			continue
		end

		local meshPartHasTexture = (descendant :: MeshPart).TextureID ~= ""
		if allowEditableInstances and not meshPartHasTexture then
			local textureContent = (descendant :: MeshPart).TextureContent
			meshPartHasTexture = (textureContent.Uri ~= nil and textureContent.Uri ~= "")
				or textureContent.Object ~= nil
		end
		local surfaceAppearance = descendant:FindFirstChildWhichIsA("SurfaceAppearance")

		if meshPartHasTexture then
			if surfaceAppearance then
				reporter:fail(ErrorSourceStrings.Keys.SurfaceAppearance_TextureAndSABothDefined, {
					MeshPartFullName = (descendant :: Instance):GetFullName(),
				}, descendant)
			end
		elseif not surfaceAppearance then
			reporter:fail(ErrorSourceStrings.Keys.SurfaceAppearance_MissingSA, {
				MeshPartFullName = (descendant :: Instance):GetFullName(),
			}, descendant)
		end
	end
end

return SurfaceAppearancePresent :: Types.ValidationModule
