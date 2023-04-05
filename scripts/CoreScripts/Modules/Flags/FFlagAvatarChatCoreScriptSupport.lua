local CorePackages = game:GetService("CorePackages")
local GetFFlagUpgradeExpChatV3_4_0 = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagUpgradeExpChatV3_4_0

return game:DefineFastFlag("AvatarChatCoreScriptSupport2", false)
	and game:GetEngineFeature("FacialAnimationStreaming")
	and game:GetEngineFeature("CoreGuiTypeSelfViewPresent")
	and GetFFlagUpgradeExpChatV3_4_0()
