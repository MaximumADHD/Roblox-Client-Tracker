local Players = game:GetService("Players")

-- Gets the player from a Part inside their Character model.
local function getPlayerFromPart(part)
	if not part then
		return nil
	end

	for _, player in pairs(Players:GetPlayers()) do
		local character = player.Character
		if character then
			if part:IsDescendantOf(character) then
				return player
			end
		end
	end

	return nil
end

return getPlayerFromPart
