local SoundService = game:GetService("SoundService") :: any
local VoiceChatService: VoiceChatService = game:GetService("VoiceChatService")
local Players: Players = game:GetService("Players")
local RunService: RunService = game:GetService("RunService")
local FFlagSoundServiceDefaultListenerLocation = game:DefineFastFlag("SoundServiceDefaultListenerLocation2", false)
local LocalPlayer = Players.LocalPlayer :: Player

local function ShouldUseDefaultVoice() : boolean
	return SoundService.DefaultListenerLocation == (Enum :: any).ListenerLocation.Default
		and VoiceChatService.UseAudioApi == Enum.AudioApiRollout.Enabled
		and VoiceChatService.EnableDefaultVoice
end

local function ShouldUseCamera(): boolean
	return SoundService.DefaultListenerLocation == (Enum :: any).ListenerLocation.Camera
end

local function ShouldUseCharacter(): boolean
	return SoundService.DefaultListenerLocation == (Enum :: any).ListenerLocation.Character
end

local function ShouldSpawnListener(): boolean
	if not FFlagSoundServiceDefaultListenerLocation then
		return false
	end
	if SoundService.DefaultListenerLocation == (Enum :: any).ListenerLocation.None then
		return false
	end
	return ShouldUseCamera() or ShouldUseCharacter() or ShouldUseDefaultVoice()
end

local function WireUp(src: Instance, dst: Instance): Wire
	local wire = Instance.new("Wire")
	wire.SourceInstance = src
	wire.TargetInstance = dst
	wire.Parent = src
	return wire
end

local function GetMainOut(): AudioDeviceOutput
	local output = SoundService:FindFirstChildWhichIsA("AudioDeviceOutput", true)
	if not output then
		local newOutput = Instance.new("AudioDeviceOutput")
		newOutput.Parent = SoundService
		output = newOutput
	end
	return output
end

local function SpawnCharacterListener(character: Model): nil
	local hostPart: BasePart? = character.PrimaryPart
	if not hostPart then
		character:GetPropertyChangedSignal("PrimaryPart"):Once(function()
			SpawnCharacterListener(character)
		end)
		return
	end

	local attachment = Instance.new("Attachment")
	local function UpdateCFrame()
		local camera = workspace.CurrentCamera
		if not camera then
			return
		end
		local frame = camera.CFrame.Rotation
		attachment.WorldAxis = frame.XVector
		attachment.WorldSecondaryAxis = frame.YVector
	end

	UpdateCFrame()

	local listener = Instance.new("AudioListener")
	listener.Parent = attachment
	attachment.Parent = hostPart
	local out = GetMainOut()
	WireUp(listener, out)
	local connection1 = RunService.Heartbeat:Connect(UpdateCFrame)
	-- ideally we'd use .Destroying here, but that doesn't reliably fire atm
	local connection2: RBXScriptConnection
	connection2 = attachment.AncestryChanged:Connect(function()
		if not attachment:IsDescendantOf(game) then
			connection1:Disconnect()
			connection2:Disconnect()
		end
	end)
	return
end

local initialized : boolean = false
local function Initialize()
	if not ShouldSpawnListener() then
		return
	end

	if initialized then
		return
	end

	if ShouldUseCharacter() then
		local character: Model? = LocalPlayer.Character
		if character then
			SpawnCharacterListener(character)
		end
		LocalPlayer.CharacterAdded:Connect(SpawnCharacterListener)
	elseif ShouldUseCamera() then
		local out = GetMainOut()
		local listener = Instance.new("AudioListener")
		listener.Parent = workspace.CurrentCamera
		WireUp(listener, out)
	elseif ShouldUseDefaultVoice() then
		local listener = Instance.new("AudioListener")
		listener.Parent = workspace.CurrentCamera
		local wire = Instance.new("Wire")
		wire.Parent = listener
		local output = Instance.new("AudioDeviceOutput")
		output.Parent = wire
		wire.SourceInstance = listener
		wire.TargetInstance = output
	end
	initialized = true
end

Initialize()
SoundService:GetPropertyChangedSignal("DefaultListenerLocation"):Connect(Initialize)
VoiceChatService:GetPropertyChangedSignal("UseAudioApi"):Connect(Initialize)
VoiceChatService:GetPropertyChangedSignal("EnableDefaultVoice"):Connect(Initialize)
