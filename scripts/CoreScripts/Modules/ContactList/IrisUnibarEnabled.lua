local CorePackages = game:GetService("CorePackages")
local Players = game:GetService("Players")

local GetFFlagIrisCallBarChromeIntegration =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagIrisCallBarChromeIntegration

return function()
	local localPlayer = Players.LocalPlayer

	local forcedUserIds = game:GetFastString("InGameMenuChromeForcedUserIds")
	for forcedUserIdString in forcedUserIds:gmatch("%d+") do
		if localPlayer and tonumber(forcedUserIdString) == localPlayer.UserId then
			return GetFFlagIrisCallBarChromeIntegration()
		end
	end

	return GetFFlagIrisCallBarChromeIntegration() and game:GetFastFlag("EnableInGameMenuChrome")
end
