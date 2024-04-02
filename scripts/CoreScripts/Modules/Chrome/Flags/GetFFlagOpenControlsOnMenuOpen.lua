local Players = game:GetService("Players")
local GetFStringInGameMenuChromeForcedUserIds = require(script.Parent.GetFStringInGameMenuChromeForcedUserIds)
local GetFIntInGameMenuChromeAllowlistTimeout = require(script.Parent.GetFIntInGameMenuChromeAllowlistTimeout)

game:DefineFastFlag("OpenControlsOnMenuOpen", false)

return function()
	-- Determine localPlayer unless it takes longer than timeout
	local localPlayer = Players.LocalPlayer
	local timeoutTick = tick() + GetFIntInGameMenuChromeAllowlistTimeout()
	while not localPlayer and tick() < timeoutTick do
		localPlayer = Players.LocalPlayer
		task.wait()
	end

	-- Enable new feature for users allowlisted into any chrome variant for dogfooding
	local forcedUserIds = GetFStringInGameMenuChromeForcedUserIds()
	for forcedUserIdString in forcedUserIds:gmatch("%d+") do
		if localPlayer and tonumber(forcedUserIdString) == localPlayer.UserId then
			return true
		end
	end

	return game:GetFastFlag("OpenControlsOnMenuOpen")
end
