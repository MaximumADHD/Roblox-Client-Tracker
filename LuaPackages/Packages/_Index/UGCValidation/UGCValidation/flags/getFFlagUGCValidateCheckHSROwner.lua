local root = script.Parent.Parent

local getFFlagUGCValidateCheckHSRFileDataFix = require(root.flags.getFFlagUGCValidateCheckHSRFileDataFix)

game:DefineFastFlag("UGCValidateCheckHSROwner2", false)

return function()
	return game:GetFastFlag("UGCValidateCheckHSROwner2") and getFFlagUGCValidateCheckHSRFileDataFix()
end
