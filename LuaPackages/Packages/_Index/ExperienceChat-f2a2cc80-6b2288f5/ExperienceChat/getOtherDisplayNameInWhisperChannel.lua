local Players = game:GetService("Players")

local function getOtherDisplayNameInWhisperChannel(textChannel: TextChannel, localPlayer: Player): string?
	for _, child in ipairs(textChannel:GetChildren()) do
		if child:IsA("TextSource") then
			local userId = child.UserId
			local player = Players:GetPlayerByUserId(userId)
			if player and player ~= localPlayer then
				return player.DisplayName
			end
		end
	end

	return nil
end

return getOtherDisplayNameInWhisperChannel
