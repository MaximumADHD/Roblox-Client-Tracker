local root = script.Parent.Parent

local getEngineUGCValidateTexturePackCPlusPlus = require(root.flags.getEngineUGCValidateTexturePackCPlusPlus)

game:DefineFastFlag("UGCValidateTexturePack", false)

return function()
	return game:GetFastFlag("UGCValidateTexturePack") and getEngineUGCValidateTexturePackCPlusPlus()
end
