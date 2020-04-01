local Players = game:GetService("Players")
local CoreGui = game:GetService("CoreGui")

local FFlagNewInGameTopBarForEveryone = game:DefineFastFlag("NewInGameTopBarForEveryone", false)
local FStringNewTopBarForcedUserIds = game:DefineFastString("NewTopBarForcedUserIds", "")

local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local FFlagCoreScriptTopBarStartup = require(RobloxGui.Modules.Flags.FFlagCoreScriptTopBarStartup)

local function isNewTopBarEnabled()
	if not FFlagCoreScriptTopBarStartup then
		return false
	end

	if FFlagNewInGameTopBarForEveryone then
		return true
	end

	local localPlayer = Players.LocalPlayer
	if localPlayer == nil then
		return false
	end

	for forcedUserIdString in FStringNewTopBarForcedUserIds:gmatch("%d+") do
		if tonumber(forcedUserIdString) == localPlayer.UserId then
			return true
		end
	end

	return false
end

return isNewTopBarEnabled