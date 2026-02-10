local root = script.Parent.Parent

local getEngineUGCValidateTexturePackCPlusPlus = require(root.flags.getEngineUGCValidateTexturePackCPlusPlus)

game:DefineFastFlag("UGCValidateCheckTexturePackOwner", false)

return function()
	return game:GetFastFlag("UGCValidateCheckTexturePackOwner") and getEngineUGCValidateTexturePackCPlusPlus()
end
