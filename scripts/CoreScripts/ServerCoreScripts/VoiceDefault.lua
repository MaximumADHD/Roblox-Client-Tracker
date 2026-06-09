local Players = game:GetService("Players")
local RobloxReplicatedStorage = game:GetService("RobloxReplicatedStorage")
local VoiceChatService = game:GetService("VoiceChatService")
local SoundService = game:GetService("SoundService")
local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local AvatarChatService = game:GetService("AvatarChatService")

local GetFFlagAvatarChatServiceEnabled =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagAvatarChatServiceEnabled

local FFlagDebugLogVoiceDefault = game:DefineFastFlag("DebugLogVoiceDefault", false)
local FFlagUseAudioInstanceAdded = game:GetEngineFeature("AudioInstanceAddedApiEnabled")

local FFlagExpChatDictation = require(CorePackages.Workspace.Packages.SharedFlags).FFlagExpChatDictation

local function log(...)
	if FFlagDebugLogVoiceDefault then
		print("[VoiceDefault]", ...)
	end
end

local legacyVoiceCurve = {}
local MIN_DISTANCE = 7
local MAX_DISTANCE = 80
local CURVE_STEP_SIZE = 2
for i = MIN_DISTANCE, MAX_DISTANCE, CURVE_STEP_SIZE do
	legacyVoiceCurve[i] = ((i - MIN_DISTANCE) - (MAX_DISTANCE - MIN_DISTANCE))^2 / (MAX_DISTANCE - MIN_DISTANCE)^2
end
legacyVoiceCurve[MAX_DISTANCE] = 0

if GetFFlagAvatarChatServiceEnabled() then
	local ok: boolean, serverFeatures: number = pcall(AvatarChatService.GetServerFeaturesAsync, AvatarChatService)

	if not ok then
		log("Failed to get GetServerFeaturesAsync, returning early")
		return
	end

	local universeVoiceEnabled =
		AvatarChatService:IsEnabled(serverFeatures, Enum.AvatarChatServiceFeature.UniverseAudio)
	local placeVoiceEnabled = AvatarChatService:IsEnabled(serverFeatures, Enum.AvatarChatServiceFeature.PlaceAudio)

	if not universeVoiceEnabled or not placeVoiceEnabled then
		log("Universe or place not voice enabled, returning early")
		return
	end
end

type AudioDeviceConnections = {
	onPlayerChanged: RBXScriptConnection,
}
type AudioDeviceSet = { [AudioDeviceInput]: boolean }
local playerDevices: { [Player]: AudioDeviceSet } = {}
local audioDevices: { [AudioDeviceInput]: AudioDeviceConnections } = {}
local playerCharacterHandlers: { [Player]: RBXScriptConnection } = {}

local function upsertDeviceList(list: AudioDeviceSet?, element: AudioDeviceInput): AudioDeviceSet
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

	if VoiceChatService.DefaultDistanceAttenuation == Enum.VoiceChatDistanceAttenuationType.Legacy then
	    emitter:SetDistanceAttenuation(legacyVoiceCurve :: any)
	end
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

-- The voice path always parents its AudioDeviceInputs under a Player. Any
-- AudioDeviceInput that lives under CoreGui is owned by a CoreScripts
-- consumer (today: dictation; potentially others later) that manages its
-- own lifecycle, so the voice tracking flow must skip it.
local function isIgnoredAudioInput(device: AudioDeviceInput): boolean
	return device:IsDescendantOf(CoreGui)
end

local function trackDevice(device: AudioDeviceInput)
	if FFlagExpChatDictation and isIgnoredAudioInput(device) then
		return
	end

	local player = device.Player
	if player then
		playerDevices[player] = upsertDeviceList(playerDevices[player], device)
	end

	local connections = {}
	local oldPlayer = player
	connections.onPlayerChanged = device:GetPropertyChangedSignal("Player"):Connect(function()
		untrackDeviceForPlayer(device, oldPlayer)
		oldPlayer = device.Player
		trackDevice(device)
	end)

	audioDevices[device] = connections :: AudioDeviceConnections
	device.Destroying:Connect(function()
		untrackDeviceForPlayer(device, device.Player)
	end)
end

local function createAudioDevice(forPlayer: Player)
	local ok, result = pcall(function()
		return VoiceChatService:IsVoiceEnabledForUserIdAsync(forPlayer.UserId)
	end)
	if not ok then
		log('Error getting voice enabled status: "', result, '"')
	end
	if not ok or not result then
		return
	end
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

	if FFlagUseAudioInstanceAdded then
		SoundService.AudioInstanceAdded:Connect(function(inst)
			if inst:IsA("AudioDeviceInput") then
				local device = inst :: AudioDeviceInput
				if FFlagExpChatDictation and isIgnoredAudioInput(device) then
					return
				end
				device.Active = false
				trackDevice(device)
			end
		end)
	else
		game.DescendantAdded:Connect(function(inst)
			if inst:IsA("AudioDeviceInput") then
				local device = inst :: AudioDeviceInput
				if FFlagExpChatDictation and isIgnoredAudioInput(device) then
					return
				end
				device.Active = false
				trackDevice(device)
			end
		end)
	end

	for _, inst in SoundService:GetAudioInstances() do
		if inst:IsA("AudioDeviceInput") then
			local device = inst :: AudioDeviceInput
			if FFlagExpChatDictation and isIgnoredAudioInput(device) then
				continue
			end
			device.Active = false
			trackDevice(device)
		end
	end

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

