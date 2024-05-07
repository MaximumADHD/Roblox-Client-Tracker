local UGCValidationService = game:GetService("UGCValidationService")

local root = script.Parent.Parent

local getFFlagUGCLCQualityReplaceLua = require(root.flags.getFFlagUGCLCQualityReplaceLua)
local getFFlagUseUGCValidationContext = require(root.flags.getFFlagUseUGCValidationContext)
local getEngineFeatureUGCValidateEditableMeshAndImage =
	require(root.flags.getEngineFeatureUGCValidateEditableMeshAndImage)

local Types = require(root.util.Types)
local pcallDeferred = require(root.util.pcallDeferred)
local getFFlagUGCValidationShouldYield = require(root.flags.getFFlagUGCValidationShouldYield)

local Analytics = require(root.Analytics)
local Constants = require(root.Constants)

local function validateTextureSize(
	textureInfo: Types.TextureInfo,
	allowNoTexture: boolean?,
	validationContext: Types.ValidationContext
): (boolean, { string }?)
	local isServer = validationContext.isServer

	if getEngineFeatureUGCValidateEditableMeshAndImage() then
		if not textureInfo.editableImage then
			if allowNoTexture then
				return true
			else
				Analytics.reportFailure(Analytics.ErrorType.validateTextureSize_InvalidTextureId)
				return false,
					{
						string.format(
							"Invalid textureID used in mesh '%s'. Make sure the texture exists and try again.",
							textureInfo.fullName
						),
					}
			end
		end
	else
		if textureInfo.contentId == "" then
			if allowNoTexture then
				return true
			else
				Analytics.reportFailure(Analytics.ErrorType.validateTextureSize_InvalidTextureId)
				return false,
					{
						string.format(
							"Invalid textureID used in mesh '%s'. Make sure the texture exists and try again.",
							textureInfo.fullName
						),
					}
			end
		end
	end

	if getFFlagUGCLCQualityReplaceLua() then
		local success, result
		if getEngineFeatureUGCValidateEditableMeshAndImage() and getFFlagUGCValidationShouldYield() then
			success, result = pcallDeferred(function()
				return UGCValidationService:ValidateEditableImageSize(textureInfo.editableImage)
			end, validationContext)
		else
			success, result = pcall(function()
				return UGCValidationService:ValidateTextureSize(textureInfo.contentId)
			end)
		end

		if not success then
			if nil ~= isServer and isServer then
				-- there could be many reasons that an error occurred, the asset is not necessarilly incorrect, we just didn't get as
				-- far as testing it, so we throw an error which means the RCC will try testing the asset again, rather than returning false
				-- which would mean the asset failed validation
				error("Failed to execute validateTextureSize check")
			end
			Analytics.reportFailure(Analytics.ErrorType.validateTextureSize_FailedToExecute)
			return false, { "Failed to execute validateTextureSize check" }
		end

		if not result then
			Analytics.reportFailure(Analytics.ErrorType.validateTextureSize_TextureTooBig)
			return false, { "Your textures exceeds the max texture size limit for UGC upload requirements." }
		end
	else
		local success, imageSize
		if getEngineFeatureUGCValidateEditableMeshAndImage() and getFFlagUGCValidationShouldYield() then
			success, imageSize = pcallDeferred(function()
				return UGCValidationService:GetEditableImageSize(textureInfo.editableImage)
			end, validationContext)
		else
			success, imageSize = pcall(function()
				return UGCValidationService:GetTextureSize(textureInfo.contentId)
			end)
		end

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
			Analytics.reportFailure(Analytics.ErrorType.validateTextureSize_FailedToLoadTexture)
			return false,
				{
					string.format(
						"Failed to load texture data for '%s'. Make sure the texture exists and try again.",
						textureInfo.fullName
					),
				} :: { any }
		elseif imageSize.X > Constants.MAX_TEXTURE_SIZE or imageSize.Y > Constants.MAX_TEXTURE_SIZE then
			Analytics.reportFailure(Analytics.ErrorType.validateTextureSize_TextureTooBig)
			return false,
				{
					string.format(
						"Texture resolution %dx%d px found in '%s' is higher than max size supported value of %dx%d px. You need to reduce the texture resolution",
						imageSize.X,
						imageSize.Y,
						textureInfo.fullName,
						Constants.MAX_TEXTURE_SIZE,
						Constants.MAX_TEXTURE_SIZE
					),
				}
		end
	end

	return true
end

local function DEPRECATED_validateTextureSize(
	textureId: string,
	allowNoTexture: boolean?,
	isServer: boolean?
): (boolean, { string }?)
	if textureId == "" then
		if allowNoTexture then
			return true
		else
			Analytics.reportFailure(Analytics.ErrorType.validateTextureSize_InvalidTextureId)
			return false, { "Mesh must contain valid TextureId" }
		end
	end

	if getFFlagUGCLCQualityReplaceLua() then
		local success, result = pcall(function()
			return UGCValidationService:ValidateTextureSize(textureId)
		end)

		if not success then
			if nil ~= isServer and isServer then
				-- there could be many reasons that an error occurred, the asset is not necessarilly incorrect, we just didn't get as
				-- far as testing it, so we throw an error which means the RCC will try testing the asset again, rather than returning false
				-- which would mean the asset failed validation
				error("Failed to execute validateTextureSize check")
			end
			Analytics.reportFailure(Analytics.ErrorType.validateTextureSize_FailedToExecute)
			return false, { "Failed to execute validateTextureSize check" }
		end

		if not result then
			Analytics.reportFailure(Analytics.ErrorType.validateTextureSize_TextureTooBig)
			return false, { "Your textures exceeds the max texture size limit for UGC upload requirements." }
		end
	else
		local success, imageSize = pcall(function()
			return UGCValidationService:GetTextureSize(textureId)
		end)

		if not success then
			if nil ~= isServer and isServer then
				-- there could be many reasons that an error occurred, the asset is not necessarilly incorrect, we just didn't get as
				-- far as testing it, so we throw an error which means the RCC will try testing the asset again, rather than returning false
				-- which would mean the asset failed validation
				error("Failed to load texture data " .. tostring(imageSize))
			end
			Analytics.reportFailure(Analytics.ErrorType.validateTextureSize_FailedToLoadTexture)
			return false, { "Failed to load texture data", imageSize } :: { any }
		elseif imageSize.X > Constants.MAX_TEXTURE_SIZE or imageSize.Y > Constants.MAX_TEXTURE_SIZE then
			Analytics.reportFailure(Analytics.ErrorType.validateTextureSize_TextureTooBig)
			return false,
				{
					string.format(
						"Texture size is %dx%d px, but the limit is %dx%d px",
						imageSize.X,
						imageSize.Y,
						Constants.MAX_TEXTURE_SIZE,
						Constants.MAX_TEXTURE_SIZE
					),
				}
		end
	end

	return true
end

return if getFFlagUseUGCValidationContext() then validateTextureSize else DEPRECATED_validateTextureSize :: never
