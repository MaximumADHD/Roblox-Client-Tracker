local Players = game:GetService("Players")

game:DefineFastFlag("ConsolidateBubbleChat4", false)
game:DefineFastInt("ConsolidateBubbleChatRollout3", 0)

return function()
	local rolloutEnabledForAll = game:GetFastFlag("ConsolidateBubbleChat4")
	if rolloutEnabledForAll then
		return true
	end

	local rollout = game:GetFastInt("ConsolidateBubbleChatRollout3")
	if rollout <= 0 then
		return false
	end

	if not Players.LocalPlayer or not Players.LocalPlayer.UserId then
		return false
	end
	local localPlayer = Players.LocalPlayer :: Player
	return ((localPlayer.UserId + 21) % 100) < rollout
end