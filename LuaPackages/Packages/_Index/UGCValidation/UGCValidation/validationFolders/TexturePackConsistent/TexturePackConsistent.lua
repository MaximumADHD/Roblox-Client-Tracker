--[[
	TexturePackConsistent checks that each SurfaceAppearance's TexturePack has the
	same textures as the SurfaceAppearance itself, and that TexturePack URLs are valid.
]]

local UGCValidationService = game:GetService("UGCValidationService")

local root = script.Parent.Parent.Parent

local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)
local TexturePackUtils = require(root.util.TexturePackUtils)

local getFFlagUGCValidateMigrateSurfaceAppearanceMeshQuality =
	require(root.flags.getFFlagUGCValidateMigrateSurfaceAppearanceMeshQuality)
local getFFlagUGCValidateTexturePack = require(root.flags.getFFlagUGCValidateTexturePack)
local getFFlagUGCValidateTexturePackOnRCCOnly = require(root.flags.getFFlagUGCValidateTexturePackOnRCCOnly)
local getFFlagUGCValidationAllowFullVaas = require(root.flags.getFFlagUGCValidationAllowFullVaas)

local SERVER_SOURCES = {
	Publish = true,
	Backend = true,
	InExpServer = true,
	Internal = true,
}

-- Flag-off routing: consumerEnv is unset pre-FFlagUGCValidateMigrateSchemaProperties, so route by source.
local IEC_SOURCES = {
	InExpServer = true,
	InExpClient = true,
}

local TexturePackConsistent = {}

TexturePackConsistent.fflag = getFFlagUGCValidateMigrateSurfaceAppearanceMeshQuality

TexturePackConsistent.categories = {
	ValidationEnums.UploadCategory.TORSO_AND_LIMBS,
	ValidationEnums.UploadCategory.DYNAMIC_HEAD,
	ValidationEnums.UploadCategory.LAYERED_CLOTHING,
	ValidationEnums.UploadCategory.RIGID_ACCESSORY,
}

TexturePackConsistent.requiredData = {}

TexturePackConsistent.expectedFailures = {}

TexturePackConsistent.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	if not getFFlagUGCValidateTexturePack() then
		return
	end

	local rootInstance = data.rootInstance
	local consumerConfig = data.consumerConfig
	-- Lifecycle (honest origin): IEC-origin can't download/compare packs, so it skips today and keeps skipping under
	-- VaaS (enabling it there is a follow-up).
	local isIEC = IEC_SOURCES[consumerConfig.source] == true
	if isIEC then
		return
	end
	-- Capability-gated: only the server escalates a pack load failure; route by validationEnv (=Backend for VaaS) under the flag.
	local routeByEnv = getFFlagUGCValidationAllowFullVaas() and consumerConfig.isVaaS
	local isServer = if routeByEnv
		then consumerConfig.validationEnv == ValidationEnums.ValidationEnv.Backend
		else SERVER_SOURCES[consumerConfig.source] == true

	-- Body parts (torso/limbs and dynamic head) use allowEmpty = true; accessories use allowEmpty = false
	local uploadCategory = data.uploadCategory
	local allowEmpty = uploadCategory == ValidationEnums.UploadCategory.TORSO_AND_LIMBS
		or uploadCategory == ValidationEnums.UploadCategory.DYNAMIC_HEAD

	-- Validate TexturePack URLs
	if getFFlagUGCValidateTexturePackOnRCCOnly() then
		if isServer then
			local surfaceAppearancesMissingTexturePacks =
				TexturePackUtils.findSurfaceAppearancesMissingTexturePacks(rootInstance, allowEmpty)
			for _, surfaceAppearance in surfaceAppearancesMissingTexturePacks do
				reporter:fail(ErrorSourceStrings.Keys.TexturePackInvalidURL, {
					SurfaceAppearanceName = surfaceAppearance:GetFullName(),
				}, surfaceAppearance)
			end
		end
	else
		local surfaceAppearancesMissingTexturePacks =
			TexturePackUtils.findSurfaceAppearancesMissingTexturePacks(rootInstance, allowEmpty)
		for _, surfaceAppearance in surfaceAppearancesMissingTexturePacks do
			reporter:fail(ErrorSourceStrings.Keys.TexturePackInvalidURL, {
				SurfaceAppearanceName = surfaceAppearance:GetFullName(),
			}, surfaceAppearance)
		end
	end

	-- Validate that SurfaceAppearance textures match TexturePack textures
	for _, surfaceAppearance in TexturePackUtils.findSurfaceAppearancesWithTexturePacks(rootInstance) do
		local didDownloadOk, testsPassed = pcall(function()
			return UGCValidationService:DoesSurfaceAppearanceMatchTexturePackAsync(surfaceAppearance)
		end)

		if not didDownloadOk then
			-- Transient download failure: retry may help
			if isServer then
				reporter:forceError(
					`Failed to download TexturePack for SurfaceAppearance '{surfaceAppearance:GetFullName()}'.`
				)
			end
			reporter:fail(ErrorSourceStrings.Keys.TexturePack_DownloadFailed, {
				SurfaceAppearanceName = surfaceAppearance:GetFullName(),
			}, surfaceAppearance)
			continue
		end

		if not testsPassed then
			reporter:fail(ErrorSourceStrings.Keys.TexturePack_Mismatch, {
				SurfaceAppearanceName = surfaceAppearance:GetFullName(),
			}, surfaceAppearance)
		end
	end
end

return TexturePackConsistent :: Types.ValidationModule
