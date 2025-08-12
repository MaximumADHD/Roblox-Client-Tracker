local CorePackages = game:GetService("CorePackages")
local GetFFlagIsSquadEnabled = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagIsSquadEnabled

game:DefineFastFlag("AppChatInExpConnectIconEnableSquadIndicator2", false)

return function()
	return game:GetFastFlag("AppChatInExpConnectIconEnableSquadIndicator2") and GetFFlagIsSquadEnabled()
end
