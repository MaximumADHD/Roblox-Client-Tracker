local root = script.Parent.Parent

local getEngineUGCValidateAssetTextureLimits = require(root.flags.getEngineUGCValidateAssetTextureLimits)

game:DefineFastFlag("UGCValidateAccessoryAssetTextureLimit", false)

return function()
	return getEngineUGCValidateAssetTextureLimits() and game:GetFastFlag("UGCValidateAccessoryAssetTextureLimit")
end
