local Players = game:GetService("Players")

local IXPVoiceAbuseReportReportAbuseMenu = require(script.Parent.IXPVoiceAbuseReportReportAbuseMenu)

game:DefineFastFlag("EnableNewVoiceReportFlows", false)
game:DefineFastString("NewInGameMenuForcedUserIds", "")

return function()

    local localPlayer = Players.LocalPlayer
	while not localPlayer do
		Players:GetPropertyChangedSignal("LocalPlayer"):Wait()
		localPlayer = Players.LocalPlayer
	end

	local forcedUserIds = game:GetFastString("NewInGameMenuForcedUserIds")
	for forcedUserIdString in forcedUserIds:gmatch("%d+") do
		if localPlayer and tonumber(forcedUserIdString) == localPlayer.UserId then
			return true
		end
	end

    return game:GetFastFlag("EnableNewVoiceReportFlows") and IXPVoiceAbuseReportReportAbuseMenu.enabled
end
