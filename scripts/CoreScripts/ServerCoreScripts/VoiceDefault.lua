local RobloxReplicatedStorage = game:GetService("RobloxReplicatedStorage")
local VoiceChatService = game:GetService("VoiceChatService")
local FFlagDebugLogVoiceDefault = game:DefineFastFlag("DebugLogVoiceDefault", false)
local FFlagSetNewDeviceToFalse = game:DefineFastFlag("SetNewDeviceToFalse", false)
local FFlagFixNewPlayerCheck = game:DefineFastFlag("FixNewPlayerCheck", false)

local function log(...)
	if FFlagDebugLogVoiceDefault then
		print(...)
	end
end
type AudioDeviceConnections = {
	onPlayerChanged: RBXScriptConnection,
}
type AudioDeviceSet = { [AudioDeviceInput]: boolean }
local playerDevices: { [Player]: AudioDeviceSet } = {}
local audioDevices: { [AudioDeviceInput]: AudioDeviceConnections } = {}
local playerCharacterHandlers: { [Player]: RBXScriptConnection } = {}

function upsertDeviceList(list: AudioDeviceSet?, element: AudioDeviceInput): AudioDeviceSet
	if list == nil then
		local set = {} :: AudioDeviceSet
		set[element] = true
		return set
	else
		list[element] = true
		return list
	end
end

local function addEmitterToHead(character): Instance
	-- TODO: Figure out why the AudioEmitter disappears from the workspace when we attach it to the head
	local parent = character -- character:FindFirstChild("Head") or character
	local emitter = Instance.new("AudioEmitter")
	emitter.Parent = parent
	emitter:AddTag("RbxDefaultVoiceEmitter")
	log("Adding emitter", emitter, " to ", parent)
	return emitter
end

local function hookupDeviceInputToEmitter(character: Instance, input: Instance)
	-- Does this make sense for the player? This means that when AudioDeviceInstance.Player == LocalPlayer
	-- there's going to be a wire connecting their AudioDeviceInput to an AudioEmitter. Isn't that going to cause their output to emit
	-- from their character?
	local emitter = addEmitterToHead(character)
	log("Hooking input device to emitter", character, input, emitter)
	local wire = Instance.new("Wire")
	wire.Parent = emitter -- We parent to emitter so it gets destroyed when the character leaves
	wire.SourceInstance = input
	wire.TargetInstance = emitter
end

-- Deprecated, remove with FFlagFixNewPlayerCheck
local function untrackDevice(device: AudioDeviceInput)
	if device.Player then
		local deviceList = playerDevices[device.Player]
		deviceList[device] = nil
	end

	local connections = audioDevices[device]
	if not connections then
		log("Attempting to remove connections from untracked AudioDeviceInput")
		return
	end
	(connections :: AudioDeviceConnections).onPlayerChanged:Disconnect()
	audioDevices[device] = nil
end

local function untrackDeviceForPlayer(device: AudioDeviceInput, player: Player?)
	if player then
		local deviceList = playerDevices[player]
		if deviceList then
			deviceList[device] = nil
		end
	end

	local connections = audioDevices[device]
	if not connections then
		log("Attempting to remove connections from untracked AudioDeviceInput")
		return
	end
	(connections :: AudioDeviceConnections).onPlayerChanged:Disconnect()
	audioDevices[device] = nil
end

local function trackDevice(device: AudioDeviceInput)
	local player = device.Player
	if player then
		playerDevices[player] = upsertDeviceList(playerDevices[player], device)
	end

	local connections = {}
	local oldPlayer = player
	connections.onPlayerChanged = device:GetPropertyChangedSignal("Player"):Connect(function()
		if FFlagFixNewPlayerCheck then
			untrackDeviceForPlayer(device, oldPlayer)
		else
			untrackDevice(device)
		end
		oldPlayer = device.Player
		trackDevice(device)
	end)

	audioDevices[device] = connections :: AudioDeviceConnections
end

local function createAudioDevice(forPlayer: Player)
	-- TODO: Check to make sure that the player has voice enabled before we create an AudioDeviceInput for them
	local input = Instance.new("AudioDeviceInput")
	input.Player = forPlayer
	input.Parent = forPlayer
	input.Active = false
	trackDevice(input)

	if forPlayer.Character then
		hookupDeviceInputToEmitter(forPlayer.Character, input)
	end

	playerCharacterHandlers[forPlayer] = forPlayer.CharacterAdded:Connect(function(character)
		hookupDeviceInputToEmitter(character, input)
	end)
	log("Creating device for ", forPlayer.Name)
end

if (VoiceChatService :: any).UseNewAudioApi then
	log("Using new Audio API, EnableDefaultVoice: ", VoiceChatService.EnableDefaultVoice)
	if VoiceChatService.EnableDefaultVoice then
		local players = game:GetService("Players")
		players.PlayerAdded:Connect(createAudioDevice)
		players.PlayerRemoving:Connect(function(player)
			local playerDevice = playerDevices[player]
			local playerCharacterHandler = playerCharacterHandlers[player]
			log(player.Name, "removed. Deleting instance", playerDevice)
			if playerDevice then
				playerDevices[player] = nil
			end
			if playerCharacterHandler then
				playerCharacterHandler:Disconnect()
			end
		end)
		-- This is needed for PlaySolo in studio
		for _, player in players:GetPlayers() do
			createAudioDevice(player)
		end
	end

	local SetUserActive = Instance.new("RemoteEvent")
	SetUserActive.Name = "SetUserActive"
	SetUserActive.Parent = RobloxReplicatedStorage

	game.DescendantAdded:Connect(function(inst)
		if inst:IsA("AudioDeviceInput") then
			local device = inst :: AudioDeviceInput
			if FFlagSetNewDeviceToFalse then
				device.Active = false
			end
			trackDevice(device)
		end
	end)

	for _, inst in game:GetDescendants() do
		if inst:IsA("AudioDeviceInput") then
			local device = inst :: AudioDeviceInput
			if FFlagSetNewDeviceToFalse then
				device.Active = false
			end
			trackDevice(device)
		end
	end

	game.DescendantRemoving:Connect(function(inst)
		if inst:IsA("AudioDeviceInput") then
			local device = inst :: AudioDeviceInput
			if FFlagFixNewPlayerCheck then
				untrackDeviceForPlayer(device, device.Player)
			else
				untrackDevice(device)
			end
		end
	end)

	SetUserActive.OnServerEvent:Connect(function(player, active)
		local playerDevices = playerDevices[player]
		if playerDevices then
			log("Setting", player, "to", active)
			for device, _ in playerDevices do
				device.Active = active
			end
		else
			log("Attempting to set Active property for user", player, "without saved AudioDeviceInput")
		end
	end)
end
