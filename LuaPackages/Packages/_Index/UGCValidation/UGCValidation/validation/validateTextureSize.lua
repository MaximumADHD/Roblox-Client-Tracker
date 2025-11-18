local UGCValidationService = game:GetService("UGCValidationService")

local root = script.Parent.Parent

local Types = require(root.util.Types)
local pcallDeferred = require(root.util.pcallDeferred)

local flags = root.flags
local getFFlagUGCValidateTextureSizeExtraErrorInfo = require(flags.getFFlagUGCValidateTextureSizeExtraErrorInfo)

local Analytics = require(root.Analytics)
local Constants = require(root.Constants)

local function validateTextureSize(
	textureInfo: Types.TextureInfo,
	allowNoTexture: boolean?,
	validationContext: Types.ValidationContext,
	maxTextureSize: number?
): (boolean, { string }?)
	local startTime = tick()

	local isServer = validationContext.isServer
	maxTextureSize = if maxTextureSize then maxTextureSize else Constants.MAX_TEXTURE_SIZE
	assert(maxTextureSize, "maxTextureSize is required for validateTextureSize")

	if not textureInfo.editableImage then
		if allowNoTexture then
			return true
		else
			Analytics.reportFailure(Analytics.ErrorType.validateTextureSize_InvalidTextureId, nil, validationContext)
			return false,
				{
					string.format(
						"Invalid textureID used in mesh '%s'. Make sure the texture exists and try again.",
						textureInfo.fullName
					),
				}
		end
	end

	local success, imageSize = pcallDeferred(function()
		return UGCValidationService:GetEditableImageSize(textureInfo.editableImage)
	end, validationContext)

	if not success then
		if nil ~= isServer and isServer then
			-- there could be many reasons that an error occurred, the asset is not necessarilly incorrect, we just didn't get as
			-- far as testing it, so we throw an error which means the RCC will try testing the asset again, rather than returning false
			-- which would mean the asset failed validation
			error(
				string.format(
					"Failed to load texture data for '%s'. Make sure the texture exists and try again.",
					textureInfo.fullName
				)
			)
		end
		Analytics.reportFailure(Analytics.ErrorType.validateTextureSize_FailedToLoadTexture, nil, validationContext)
		return false,
			{
				string.format(
					"Failed to load texture data for '%s'. Make sure the texture exists and try again.",
					textureInfo.fullName
				),
			} :: { any }
	elseif imageSize.X > maxTextureSize or imageSize.Y > maxTextureSize then
		Analytics.reportFailure(Analytics.ErrorType.validateTextureSize_TextureTooBig, nil, validationContext)
		local isUsingNonDefaultMaxTextureSize = maxTextureSize ~= Constants.MAX_TEXTURE_SIZE
		if getFFlagUGCValidateTextureSizeExtraErrorInfo() or isUsingNonDefaultMaxTextureSize then
			return false,
				{
					string.format(
						"Texture resolution %dx%d px found in '%s' is higher than max size supported value of %dx%d px for field '%s'.",
						imageSize.X,
						imageSize.Y,
						textureInfo.fullName,
						maxTextureSize,
						maxTextureSize,
						textureInfo.fieldName
					),
				}
		else
			return false,
				{
					string.format(
						"Texture resolution %dx%d px found in '%s' is higher than max size supported value of %dx%d px. You need to reduce the texture resolution",
						imageSize.X,
						imageSize.Y,
						textureInfo.fullName,
						maxTextureSize,
						maxTextureSize
					),
				}
		end
	end

	Analytics.recordScriptTime(script.Name, startTime, validationContext)
	return true
end

return validateTextureSize
