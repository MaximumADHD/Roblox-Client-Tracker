--[[
	validateSurfaceAppearanceTextureSize.lua checks that all MeshParts with a SurfaceAppearance child have the expected texture sizes for all of the SurfaceAppearance textures.
]]

local root = script.Parent.Parent

local Analytics = require(root.Analytics)
local Constants = require(root.Constants)
local ConstantsInterface = require(root.ConstantsInterface)
local Types = require(root.util.Types)

local validateTextureSize = require(root.validation.validateTextureSize)

local FailureReasonsAccumulator = require(root.util.FailureReasonsAccumulator)
local getEditableImageFromContext = require(root.util.getEditableImageFromContext)
local ParseContentIds = require(root.util.ParseContentIds)

local flags = root.flags
local getFFlagUGCValidateAccessoryAssetSurfaceAppearanceTextureLimits =
	require(flags.getFFlagUGCValidateAccessoryAssetSurfaceAppearanceTextureLimits)

local FIntAccessoryColorMapMaxSize = game:DefineFastInt("AccessoryColorMapMaxSize", 1024)
local FIntAccessoryMetalnessMapMaxSize = game:DefineFastInt("AccessoryMetalnessMapMaxSize", 256)
local FIntAccessoryNormalMapMaxSize = game:DefineFastInt("AccessoryNormalMapMaxSize", 256)
local FIntAccessoryRoughnessMapMaxSize = game:DefineFastInt("AccessoryRoughnessMapMaxSize", 256)

local MAX_TEXTURE_SIZES = {
	ColorMap = FIntAccessoryColorMapMaxSize,
	MetalnessMap = FIntAccessoryMetalnessMapMaxSize,
	NormalMap = FIntAccessoryNormalMapMaxSize,
	RoughnessMap = FIntAccessoryRoughnessMapMaxSize,
}

local function validateSurfaceAppearanceTextureSize(
	instance: Instance,
	validationContext: Types.ValidationContext
): (boolean, { string }?)
	local startTime = tick()

	local allDescendants: { Instance } = instance:GetDescendants()
	table.insert(allDescendants, instance)

	local reasonsAccumulator = FailureReasonsAccumulator.new()
	for _, descendant in allDescendants do
		if not descendant:IsA("MeshPart") then
			continue
		end

		local surfaceAppearance = descendant:FindFirstChildWhichIsA("SurfaceAppearance")
		if not surfaceAppearance then
			continue
		end

		local allTextures =
			ParseContentIds.parse(surfaceAppearance, Constants.TEXTURE_CONTENT_ID_FIELDS, validationContext)
		for _, data in allTextures do
			local textureInfo = {
				fullName = data.instance:GetFullName() .. "." .. data.fieldName,
				fieldName = data.fieldName,
				contentId = data.instance[data.fieldName],
			} :: Types.TextureInfo

			local getEditableImageSuccess, editableImage =
				getEditableImageFromContext(data.instance, data.fieldName, validationContext)
			if not getEditableImageSuccess then
				return false, { "Failed to load texture data" }
			end
			textureInfo.editableImage = editableImage :: EditableImage

			local textureSizeLimit = nil
			if
				getFFlagUGCValidateAccessoryAssetSurfaceAppearanceTextureLimits() and validationContext.assetTypeEnum
			then
				textureSizeLimit = ConstantsInterface.getTextureLimit(
					validationContext.assetTypeEnum :: Enum.AssetType,
					data.instance,
					data.fieldName
				)
			else
				textureSizeLimit = MAX_TEXTURE_SIZES[data.fieldName]
			end

			reasonsAccumulator:updateReasons(validateTextureSize(textureInfo, nil, validationContext, textureSizeLimit))
		end
	end

	Analytics.recordScriptTime(script.Name, startTime, validationContext)
	return reasonsAccumulator:getFinalResults()
end

return validateSurfaceAppearanceTextureSize
