local CorePackages = game:GetService("CorePackages")
local GetFFlagUpgradeExpChatV3_4_2 = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagUpgradeExpChatV3_4_2

return game:DefineFastFlag("AvatarChatCoreScriptSupport3", false)
	and game:GetEngineFeature("FacialAnimationStreaming")
	and game:GetEngineFeature("CoreGuiTypeSelfViewPresent")
	and GetFFlagUpgradeExpChatV3_4_2()
