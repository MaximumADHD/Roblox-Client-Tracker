local root = script.Parent.Parent

local getEngineFeatureUGCValidateCheckHSRFileData = require(root.flags.getEngineFeatureUGCValidateCheckHSRFileData)

game:DefineFastFlag("UGCValidateCheckHSRFileDataFix", false)

return function()
	return game:GetFastFlag("UGCValidateCheckHSRFileDataFix") and getEngineFeatureUGCValidateCheckHSRFileData()
end
