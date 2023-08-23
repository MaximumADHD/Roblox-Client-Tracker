local VoiceChatService = game:GetService("VoiceChatService")

local playerDevices: {[Player]: AudioDeviceInput} = {}

local function createAudioDevice(forPlayer: Player)
    -- Todo: Check to make sure that the player has voice enabled before we create an AudioDeviceInput for them
	local input = Instance.new("AudioDeviceInput")
	input.Player = forPlayer
	input.Parent = forPlayer
	playerDevices[forPlayer] = input
	print('Creating device for ', forPlayer.Name)
end

if VoiceChatService.EnableDefaultVoice and (VoiceChatService :: any).UseNewAudioApi then
	local players = game:GetService("Players")
	players.PlayerAdded:Connect(createAudioDevice)
	players.PlayerRemoving:Connect(function(player)
		local playerDevice = playerDevices[player]
		print(player.Name, "removed. Deleting instance", playerDevice)
		if playerDevice then
			playerDevices[player] = nil
		end
	end)
end
