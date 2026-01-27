local root = script.Parent.Parent

local getEngineUGCValidateAssetTextureLimits = require(root.flags.getEngineUGCValidateAssetTextureLimits)

game:DefineFastFlag("UGCValidateDecalTextureLimits", false)

return function()
	return getEngineUGCValidateAssetTextureLimits() and game:GetFastFlag("UGCValidateDecalTextureLimits")
end
