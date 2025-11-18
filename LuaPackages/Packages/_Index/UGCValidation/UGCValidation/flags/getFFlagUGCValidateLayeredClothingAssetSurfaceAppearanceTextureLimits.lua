local root = script.Parent.Parent

local getEngineUGCValidateAssetTextureLimits = require(root.flags.getEngineUGCValidateAssetTextureLimits)

game:DefineFastFlag("UGCValidateLayeredClothingAssetSurfaceAppearanceTextureLimits", false)

return function()
	return getEngineUGCValidateAssetTextureLimits()
		and game:GetFastFlag("UGCValidateLayeredClothingAssetSurfaceAppearanceTextureLimits")
end
