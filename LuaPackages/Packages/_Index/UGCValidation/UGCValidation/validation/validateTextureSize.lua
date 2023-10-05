local UGCValidationService = game:GetService("UGCValidationService")

local root = script.Parent.Parent

local Analytics = require(root.Analytics)
local Constants = require(root.Constants)

local getFFlagUGCValidateBodyParts = require(root.flags.getFFlagUGCValidateBodyParts)

local function validateTextureSize(
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

	if game:GetFastFlag("UGCLCQualityReplaceLua") then
		local success, result = pcall(function()
			return UGCValidationService:ValidateTextureSize(textureId)
		end)

		if not success then
			if getFFlagUGCValidateBodyParts() then
				if nil ~= isServer and isServer then
					-- there could be many reasons that an error occurred, the asset is not necessarilly incorrect, we just didn't get as
					-- far as testing it, so we throw an error which means the RCC will try testing the asset again, rather than returning false
					-- which would mean the asset failed validation
					error("Failed to execute validateTextureSize check")
				end
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
			if getFFlagUGCValidateBodyParts() then
				if nil ~= isServer and isServer then
					-- there could be many reasons that an error occurred, the asset is not necessarilly incorrect, we just didn't get as
					-- far as testing it, so we throw an error which means the RCC will try testing the asset again, rather than returning false
					-- which would mean the asset failed validation
					error("Failed to load texture data " .. tostring(imageSize))
				end
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

return validateTextureSize
