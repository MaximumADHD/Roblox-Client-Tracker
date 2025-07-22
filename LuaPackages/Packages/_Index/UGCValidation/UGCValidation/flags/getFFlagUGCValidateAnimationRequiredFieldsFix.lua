--!strict
local root = script.Parent.Parent

local getFFlagUGCValidateEmoteAnimationExtendedTests =
	require(root.flags.getFFlagUGCValidateEmoteAnimationExtendedTests)

game:DefineFastFlag("UGCValidateAnimationRequiredFieldsFix", false)

return function()
	return getFFlagUGCValidateEmoteAnimationExtendedTests()
		and game:GetFastFlag("UGCValidateAnimationRequiredFieldsFix")
end
