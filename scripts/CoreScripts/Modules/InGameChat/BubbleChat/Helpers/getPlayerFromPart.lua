local Players = game:GetService("Players")

-- Gets the player from a Part inside their Character model.
local function getPlayerFromPart(part)
	for _, player in ipairs(Players:GetPlayers()) do
		if player.Character then
			if part:IsDescendantOf(player.Character) then
				return player
			end
		end
	end
	return nil
end

return getPlayerFromPart
