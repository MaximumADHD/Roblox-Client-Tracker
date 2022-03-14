local UGCValidationService = game:GetService("UGCValidationService")

local root = script.Parent.Parent

local Constants = require(root.Constants)

local function validateTextureSize_DEPREACTED(isAsync, instance)
	-- this is guaranteed to exist thanks to validateInstanceTree being called beforehand
	local mesh = instance.Handle:FindFirstChildOfClass("SpecialMesh")

	if mesh.TextureId == "" then
		return false, { "Mesh must contain valid TextureId" }
	end

	local success, imageSize = pcall(function()
		if isAsync then
			return UGCValidationService:GetTextureSize(mesh.TextureId)
		else
			return UGCValidationService:GetTextureSizeSync(mesh.TextureId)
		end
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

if game:GetFastFlag("UGCValidateLayeredClothing2") then
	return validateTextureSize
else
	return validateTextureSize_DEPREACTED :: any
end
