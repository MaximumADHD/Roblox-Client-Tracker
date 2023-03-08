local UGCValidationService = game:GetService("UGCValidationService")

local root = script.Parent.Parent

local Constants = require(root.Constants)

local function validateTextureSize(textureId: string, allowNoTexture: boolean?): (boolean, {string}?)
	if textureId == "" then
		if allowNoTexture then
			return true
		else
			return false, { "Mesh must contain valid TextureId" }
		end
	end

	if game:GetFastFlag("UGCLCQualityReplaceLua") then
		local success, result = pcall(function()
			return UGCValidationService:ValidateTextureSize(textureId)
		end)

		if not success then
			return false, { "Failed to execute validateTextureSize check" }
		end

		if not result then
			return false, { "Your textures exceeds the max texture size limit for UGC upload requirements." }
		end
	else
		local success, imageSize = pcall(function()
			return UGCValidationService:GetTextureSize(textureId)
		end)

		if not success then
			return false, { "Failed to load texture data", imageSize } :: {any}
		elseif imageSize.X > Constants.MAX_TEXTURE_SIZE or imageSize.Y > Constants.MAX_TEXTURE_SIZE then
			return false, {
				string.format(
					"Texture size is %dx%d px, but the limit is %dx%d px",
					imageSize.X,
					imageSize.Y,
					Constants.MAX_TEXTURE_SIZE,
					Constants.MAX_TEXTURE_SIZE
				)
			}
		end
	end

	return true
end

return validateTextureSize
