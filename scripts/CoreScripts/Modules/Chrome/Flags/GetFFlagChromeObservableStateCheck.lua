local Players = game:GetService("Players")
local CorePackages = game:GetService("CorePackages")
local GetFStringInGameMenuChromeForcedUserIds =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFStringInGameMenuChromeForcedUserIds

game:DefineFastFlag("ChromeObservableStateCheck", false)

return function()
	local localPlayer = Players.LocalPlayer
	local timeoutTick = tick() + 5
	while not localPlayer and tick() < timeoutTick do
		localPlayer = Players.LocalPlayer
		task.wait()
	end

	local forcedUserIds = GetFStringInGameMenuChromeForcedUserIds()
	for forcedUserIdString in forcedUserIds:gmatch("%d+") do
		if localPlayer and tonumber(forcedUserIdString) == localPlayer.UserId then
			return true
		end
	end

	return game:GetFastFlag("ChromeObservableStateCheck")
end
