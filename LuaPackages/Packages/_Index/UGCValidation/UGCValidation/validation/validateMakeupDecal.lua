--!strict
--[[
	Validates that the Decal has a valid Texture that <= a maximum texture size and that it fits into an allowed UV Zone.
]]

local root = script.Parent.Parent

local Analytics = require(root.Analytics)
local Constants = require(root.Constants)
local ConstantsInterface = require(root.ConstantsInterface)

local Types = require(root.util.Types)
local FailureReasonsAccumulator = require(root.util.FailureReasonsAccumulator)
local getEditableImageFromContext = require(root.util.getEditableImageFromContext)
local ParseContentIds = require(root.util.ParseContentIds)

local validateMakeupDecalUVZones = require(root.validation.validateMakeupDecalUVZones)

local getFFlagUGCValidateDecalTextureLimits = require(root.flags.getFFlagUGCValidateDecalTextureLimits)

local validateTextureSize = require(root.validation.validateTextureSize)

local function validateMakeupDecal(instance: Decal, validationContext: Types.ValidationContext): (boolean, { string }?)
	local startTime = tick()

	local assetTypeEnum = validationContext.assetTypeEnum :: Enum.AssetType
	local wrapTextureTransfer = instance:FindFirstChildOfClass("WrapTextureTransfer")
	assert(wrapTextureTransfer ~= nil, string.format("WrapTextureTransfer child not found for %s", instance.Name))

	local reasonsAccumulator = FailureReasonsAccumulator.new()

	local allTextures = ParseContentIds.parse(instance, Constants.TEXTURE_CONTENT_ID_FIELDS, validationContext)

	local colorMapEditableImage
	for _, data in allTextures do
		local textureInfo = {
			fullName = data.instance:GetFullName() .. "." .. data.fieldName,
			fieldName = data.fieldName,
			contentId = data.instance[data.fieldName],
		} :: Types.TextureInfo

		local getEditableImageSuccess, editableImage =
			getEditableImageFromContext(data.instance, data.fieldName, validationContext)
		if not getEditableImageSuccess then
			Analytics.reportFailure(Analytics.ErrorType.validateMakeupDecal_FailedToLoadTexture, nil, validationContext)
			reasonsAccumulator:updateReasons(false, {
				string.format(
					"Failed to load %s for Decal %s. Make sure TextureContent exists and is valid and try again.",
					textureInfo.fieldName,
					instance.Name
				),
			})
		end
		textureInfo.editableImage = editableImage :: EditableImage

		if data.fieldName == "ColorMap" then
			colorMapEditableImage = editableImage
		end

		local textureSizeLimit = nil
		if getFFlagUGCValidateDecalTextureLimits() and assetTypeEnum then
			textureSizeLimit = ConstantsInterface.getTextureLimit(assetTypeEnum, data.instance, data.fieldName)
		end

		reasonsAccumulator:updateReasons(validateTextureSize(textureInfo, nil, validationContext, textureSizeLimit))
	end

	if not colorMapEditableImage then
		Analytics.reportFailure(Analytics.ErrorType.validateMakeupDecal_NoColorMap, nil, validationContext)
		return false,
			{
				string.format(
					"No ColorMap found for Decal %s. Makeup Decals are required to have a valid ColorMap.",
					instance.Name
				),
			}
	end

	reasonsAccumulator:updateReasons(
		validateMakeupDecalUVZones(
			instance,
			colorMapEditableImage :: EditableImage,
			wrapTextureTransfer :: WrapTextureTransfer,
			Constants.MAKEUP_INFO.AssetUVBounds[assetTypeEnum],
			validationContext
		)
	)

	Analytics.recordScriptTime(script.Name, startTime, validationContext)
	return reasonsAccumulator:getFinalResults()
end

return validateMakeupDecal
