local ignoreList = {}

do
	local charMap = {}

	local function refreshIgnoreList()
		local n = 1
		ignoreList = {}
		for player, character in pairs(charMap) do
			ignoreList[n] = character
			n = n + 1
		end
	end

	local function playerAdded(player)
		local function characterAdded(character)
			charMap[player] = character
			refreshIgnoreList()
		end
		local function characterRemoving()
			charMap[player] = nil
			refreshIgnoreList()
		end
		
		player.CharacterAdded:Connect(characterAdded)
		player.CharacterRemoving:Connect(characterRemoving)
		if player.Character then
			characterAdded(player.Character)
		end
	end

	local function playerRemoving(player)
		charMap[player] = nil
		refreshIgnoreList()
	end

	do
		local Players = game:GetService('Players')
		
		Players.PlayerAdded:Connect(playerAdded)
		Players.PlayerRemoving:Connect(playerRemoving)
		
		for _, player in ipairs(Players:GetPlayers()) do
			playerAdded(player)
		end
		refreshIgnoreList()
	end
end

return function()
	return ignoreList
end