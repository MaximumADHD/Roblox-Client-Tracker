--!nonstrict

local Players = game:GetService("Players")

local IsExperienceMenuABTestEnabled = require(script.Parent.Parent.Parent.IsExperienceMenuABTestEnabled)
local ExperienceMenuABTestManager = require(script.Parent.Parent.Parent.ExperienceMenuABTestManager)

game:DefineFastFlag("EnableChromePinnedChat", false)
game:DefineFastString("EnableChromePinnedChatForcedUserIds", "")

return function()
	local localPlayer = Players.LocalPlayer
	while not localPlayer do
		Players:GetPropertyChangedSignal("LocalPlayer"):Wait()
		localPlayer = Players.LocalPlayer
	end

	local forcedUserIds = game:GetFastString("EnableChromePinnedChatForcedUserIds")
	for forcedUserIdString in forcedUserIds:gmatch("%d+") do
		if tonumber(forcedUserIdString) == localPlayer.UserId then
			return true
		end
	end

	if IsExperienceMenuABTestEnabled() and ExperienceMenuABTestManager.default:shouldPinChat() then
		return true
	end

	return game:GetFastFlag("EnableChromePinnedChat")
end
