local Players = game:GetService("Players")

game:DefineFastFlag("ConsolidateBubbleChat3", false)
game:DefineFastInt("ConsolidateBubbleChatRollout2", 0)

return function()
	local rolloutEnabledForAll = game:GetFastFlag("ConsolidateBubbleChat3")
	if rolloutEnabledForAll then
		return true
	end

	local rollout = game:GetFastInt("ConsolidateBubbleChatRollout2")
	if rollout <= 0 then
		return false
	end

	if not Players.LocalPlayer or not Players.LocalPlayer.UserId then
		return false
	end
	local localPlayer = Players.LocalPlayer :: Player
	return ((localPlayer.UserId + 21) % 100) < rollout
end