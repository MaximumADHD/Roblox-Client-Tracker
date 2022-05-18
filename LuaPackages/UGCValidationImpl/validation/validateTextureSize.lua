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

	local success, imageSize = pcall(function()
		return UGCValidationService:GetTextureSize(textureId)
	end)

	if not success then
		return false, { "Failed to load texture data", imageSize }
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

	return true
end

return validateTextureSize
