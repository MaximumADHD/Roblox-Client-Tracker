local Players = game:GetService("Players")
local GetFStringInGameMenuChromeForcedUserIds = require(script.Parent.GetFStringInGameMenuChromeForcedUserIds)
local GetFIntInGameMenuChromeAllowlistTimeout = require(script.Parent.GetFIntInGameMenuChromeAllowlistTimeout)

game:DefineFastFlag("EnableChromePinIntegrations", false)

return function()
	-- Determine localPlayer unless it takes longer than timeout
	local localPlayer = Players.LocalPlayer
	local timeoutTick = tick() + GetFIntInGameMenuChromeAllowlistTimeout()
	while not localPlayer and tick() < timeoutTick do
		Players:GetPropertyChangedSignal("LocalPlayer"):Wait()
		localPlayer = Players.LocalPlayer
	end

	-- Enable new pinning feature for users allowlisted into any chrome variant for dogfooding
	local forcedUserIds = GetFStringInGameMenuChromeForcedUserIds()
	for forcedUserIdString in forcedUserIds:gmatch("%d+") do
		if localPlayer and tonumber(forcedUserIdString) == localPlayer.UserId then
			return true
		end
	end

	return game:GetFastFlag("EnableChromePinIntegrations")
end
