local UGCValidationService = game:GetService("UGCValidationService")

local root = script.Parent.Parent.Parent

local ConstantsInterface = require(root.ConstantsInterface)
local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)
local FetchAllDesiredData = require(root.validationSystem.dataFetchModules.FetchAllDesiredData)

local getFFlagUGCValidateMigrateTextureTransparency = require(root.flags.getFFlagUGCValidateMigrateTextureTransparency)

local FIntAccessoryColorMapMaxSize = game:DefineFastInt("AccessoryColorMapMaxSize", 1024)
local FIntAccessoryMetalnessMapMaxSize = game:DefineFastInt("AccessoryMetalnessMapMaxSize", 256)
local FIntAccessoryNormalMapMaxSize = game:DefineFastInt("AccessoryNormalMapMaxSize", 256)
local FIntAccessoryRoughnessMapMaxSize = game:DefineFastInt("AccessoryRoughnessMapMaxSize", 256)

local DEFAULT_MAX_TEXTURE_SIZES = {
	ColorMap = FIntAccessoryColorMapMaxSize,
	MetalnessMap = FIntAccessoryMetalnessMapMaxSize,
	NormalMap = FIntAccessoryNormalMapMaxSize,
	RoughnessMap = FIntAccessoryRoughnessMapMaxSize,
}

local SurfaceAppearanceTexturesBounded = {}

-- Categories: legacy validateSurfaceAppearanceTextureSize was called for both RA
-- and LC. The LC call was wrapped in `getFFlagUGCValidateLayeredClothingAssetSurfaceAppearanceTextureLimits`,
-- which is True in the Common bucket per portal verification (2026-06-02), so the
-- LC check already runs in production today. Running it unconditionally here
-- matches actual prod behavior; the legacy gate flag is on a separate, in-flight
-- cleanup track and not part of this migration.
SurfaceAppearanceTexturesBounded.categories = {
	ValidationEnums.UploadCategory.RIGID_ACCESSORY,
	ValidationEnums.UploadCategory.LAYERED_CLOTHING,
}

SurfaceAppearanceTexturesBounded.requiredData = {}
SurfaceAppearanceTexturesBounded.conditionalData = {
	ValidationEnums.SharedDataMember.meshTextures,
}

SurfaceAppearanceTexturesBounded.fflag = getFFlagUGCValidateMigrateTextureTransparency

SurfaceAppearanceTexturesBounded.expectedFailures = {}

SurfaceAppearanceTexturesBounded.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	local rootInstance = data.rootInstance
	local assetType = data.uploadEnum.assetType
	local meshTextures = (data :: any).meshTextures
	local consumerConfig = data.consumerConfig

	if not meshTextures or meshTextures == FetchAllDesiredData.DATA_FETCH_FAILURE then
		reporter:fetchError("Failed to load texture data for surface appearance texture bounds check")
		return
	end

	local allInstances = rootInstance:GetDescendants()
	table.insert(allInstances, rootInstance)

	for _, instance in allInstances do
		if not instance:IsA("MeshPart") then
			continue
		end

		local surfaceAppearance = instance:FindFirstChildWhichIsA("SurfaceAppearance")
		if not surfaceAppearance then
			continue
		end

		-- Get texture data from shared meshTextures
		local textureData = meshTextures[instance.Name]
		if not textureData or not textureData.isPBR then
			continue
		end

		local mapNames = { "ColorMap", "MetalnessMap", "NormalMap", "RoughnessMap" }
		for _, mapName in mapNames do
			local mapData = (textureData :: any)[mapName]
			if not mapData or not mapData.editable then
				continue
			end

			-- Use ConstantsInterface for per-asset-type limits; fall back to FInt defaults
			local textureSizeLimit: number
			if assetType then
				textureSizeLimit = ConstantsInterface.getTextureLimit(assetType, surfaceAppearance, mapName)
			else
				textureSizeLimit = DEFAULT_MAX_TEXTURE_SIZES[mapName]
			end

			local success, imageSize = pcall(function()
				return UGCValidationService:GetEditableImageSize(mapData.editable)
			end)

			if not success then
				if consumerConfig.consumerEnv == ValidationEnums.ConsumerEnv.Backend then
					reporter:fetchError(
						string.format(
							"Failed to get texture size for '%s'. Make sure the texture exists and try again.",
							surfaceAppearance:GetFullName() .. "." .. mapName
						)
					)
				end
				reporter:fail(ErrorSourceStrings.Keys.TextureSize_FailedToLoad, {
					FullName = surfaceAppearance:GetFullName() .. "." .. mapName,
				}, surfaceAppearance)
				continue
			end

			if imageSize.X > textureSizeLimit or imageSize.Y > textureSizeLimit then
				reporter:fail(ErrorSourceStrings.Keys.TextureSize_TooBig, {
					Width = tostring(imageSize.X),
					Height = tostring(imageSize.Y),
					FullName = surfaceAppearance:GetFullName() .. "." .. mapName,
					MaxSize = tostring(textureSizeLimit),
					FieldName = mapName,
				}, surfaceAppearance)
			end
		end
	end
end

return SurfaceAppearanceTexturesBounded :: Types.ValidationModule
