local root = script.Parent.Parent

local getEngineFeatureUGCValidateCheckHSRFileData = require(root.flags.getEngineFeatureUGCValidateCheckHSRFileData)

game:DefineFastFlag("UGCValidateCheckHSROwner", false)

return function()
	return game:GetFastFlag("UGCValidateCheckHSROwner") and getEngineFeatureUGCValidateCheckHSRFileData()
end
