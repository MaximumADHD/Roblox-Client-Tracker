local root = script.Parent.Parent

local getEngineUGCValidateAssetTextureLimits = require(root.flags.getEngineUGCValidateAssetTextureLimits)

game:DefineFastFlag("UGCValidateBodyAssetTextureLimits", false)

return function()
	return getEngineUGCValidateAssetTextureLimits() and game:GetFastFlag("UGCValidateBodyAssetTextureLimits")
end
