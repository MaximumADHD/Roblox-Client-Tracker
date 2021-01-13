local CharacterTester = {}

local StarterPlayer = game:GetService("StarterPlayer")

local function removeExistingStarterCharacter()
	while true do
		local starterCharacter = StarterPlayer:FindFirstChild("StarterCharacter")
		if starterCharacter then
			starterCharacter:Destroy()
		else
			break
		end
	end
end

local function addAccessoriesFromWorkspace(character)
	-- Clone accessories into character
	for _, accessory in pairs(workspace:GetChildren()) do
		if accessory:IsA("Accessory") then
			local newAccessory = accessory:Clone()
			newAccessory.Parent = character
		end
	end
end

function CharacterTester.SetupCharacterForTesting(characterToTest)
	if not characterToTest then
		return
	end

	removeExistingStarterCharacter()

	local newCharacter = characterToTest:Clone()
	addAccessoriesFromWorkspace(newCharacter)

	newCharacter.Name = "StarterCharacter"
	newCharacter.Parent = StarterPlayer
end

return CharacterTester