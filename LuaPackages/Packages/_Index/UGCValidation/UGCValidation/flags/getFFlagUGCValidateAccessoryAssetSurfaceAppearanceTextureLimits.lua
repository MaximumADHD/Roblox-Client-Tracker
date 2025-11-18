local root = script.Parent.Parent

local getEngineUGCValidateAssetTextureLimits = require(root.flags.getEngineUGCValidateAssetTextureLimits)

game:DefineFastFlag("UGCValidateAccessoryAssetSurfaceAppearanceTextureLimits", false)

return function()
	return getEngineUGCValidateAssetTextureLimits()
		and game:GetFastFlag("UGCValidateAccessoryAssetSurfaceAppearanceTextureLimits")
end
