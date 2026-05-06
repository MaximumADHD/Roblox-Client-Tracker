--!nonstrict
-- Roblox character sound script

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local SoundService = game:GetService("SoundService")

local AtomicBinding = require(script:WaitForChild("AtomicBinding"))

type Playable = Sound | AudioPlayer

local function loadFlag(flag: string)
	local success, result = pcall(function()
		return UserSettings():IsUserFeatureEnabled(flag)
	end)
	return success and result
end

local FFlagUserSoundsUseRelativeVelocity = loadFlag('UserSoundsUseRelativeVelocity2')
local FFlagUserNewCharacterSoundsApi = loadFlag('UserNewCharacterSoundsApi3')
local FFlagUserFixCharSoundsEmitters = loadFlag('UserFixCharSoundsEmitters')

local SOUND_DATA : { [string]: {[string]: any}} = {
	Climbing = {
		SoundId = "rbxasset://sounds/action_footsteps_plastic.mp3",
		Looped = true,
	},
	Died = {
		SoundId = "rbxasset://sounds/uuhhh.mp3",
	},
	FreeFalling = {
		SoundId = "rbxasset://sounds/action_falling.ogg",
		Looped = true,
	},
	GettingUp = {
		SoundId = "rbxasset://sounds/action_get_up.mp3",
	},
	Jumping = {
		SoundId = "rbxasset://sounds/action_jump.mp3",
	},
	Landing = {
		SoundId = "rbxasset://sounds/action_jump_land.mp3",
	},
	Running = {
		SoundId = "rbxasset://sounds/action_footsteps_plastic.mp3",
		Looped = true,
		Pitch = 1.85,
	},
	Splash = {
		SoundId = "rbxasset://sounds/impact_water.mp3",
	},
	Swimming = {
		SoundId = "rbxasset://sounds/action_swim.mp3",
		Looped = true,
		Pitch = 1.6,
	},
}

local AUDIOPLAYER_DATA : { [string]: {[string]: any}} = {
	Climbing = {
		AssetId = "rbxasset://sounds/action_footsteps_plastic.mp3",
		Looping = true,
	},
	Died = {
		AssetId = "rbxasset://sounds/uuhhh.mp3",
	},
	FreeFalling = {
		AssetId = "rbxasset://sounds/action_falling.ogg",
		Looping = true,
	},
	GettingUp = {
		AssetId = "rbxasset://sounds/action_get_up.mp3",
	},
	Jumping = {
		AssetId = "rbxasset://sounds/action_jump.mp3",
	},
	Landing = {
		AssetId = "rbxasset://sounds/action_jump_land.mp3",
	},
	Running = {
		AssetId = "rbxasset://sounds/action_footsteps_plastic.mp3",
		Looping = true,
		PlaybackSpeed = 1.85,
	},
	Splash = {
		AssetId = "rbxasset://sounds/impact_water.mp3",
	},
	Swimming = {
		AssetId = "rbxasset://sounds/action_swim.mp3",
		Looping = true,
		PlaybackSpeed = 1.6,
	},
}

-- map a value from one range to another
local function map(x: number, inMin: number, inMax: number, outMin: number, outMax: number): number
	return (x - inMin)*(outMax - outMin)/(inMax - inMin) + outMin
end

local function getRelativeVelocity(cm, velocity)
	if not cm then
		return velocity
	end
	local activeSensor = cm.ActiveController and
	(
		(cm.ActiveController:IsA("GroundController") and cm.GroundSensor) or
		(cm.ActiveController:IsA("ClimbController") and cm.ClimbSensor)
	)
	if activeSensor and activeSensor.SensedPart then
		-- Calculate the platform relative velocity by subtracting the velocity of the surface we're attached to or standing on.
		local platformVelocity = activeSensor.SensedPart:GetVelocityAtPosition(cm.RootPart.Position)
		return velocity - platformVelocity
	end
	return velocity
end

local function playSound(sound: Playable, continue: boolean?)
	if not continue then
		(sound :: any).TimePosition = 0
	end
	if FFlagUserNewCharacterSoundsApi and sound:IsA("AudioPlayer") then
		sound:Play()
	else
		(sound :: Sound).Playing = true
	end
end

local function stopSound(sound: Playable)
	if FFlagUserNewCharacterSoundsApi and sound:IsA("AudioPlayer") then
		sound:Stop()
	else
		(sound :: Sound).Playing = false
	end
end

local function playSoundIf(sound: Playable, condition: boolean)
	if FFlagUserNewCharacterSoundsApi and sound:IsA("AudioPlayer") then
		if (sound.IsPlaying and not condition) then
			sound:Stop()
		elseif (not sound.IsPlaying and condition) then
			sound:Play()
		end
	else
		(sound :: Sound).Playing = condition
	end
end

local function setSoundLooped(sound: Playable, isLooped: boolean)
	if FFlagUserNewCharacterSoundsApi and sound:IsA("AudioPlayer") then
		sound.Looping = isLooped
	else
		(sound :: Sound).Looped = isLooped
	end
end

local function shallowCopy(t)
	local out = {}
	for k, v in pairs(t) do
		out[k] = v
	end
	return out
end

local function initializeSoundSystem(instances: { [string]: Instance })
	local humanoid = instances.humanoid
	local rootPart = instances.rootPart
	local audioEmitter = nil
	local cm = nil
	if FFlagUserSoundsUseRelativeVelocity then
		local character = humanoid.Parent
		cm = character:FindFirstChild('ControllerManager')
	end

	local sounds: {[string]: Playable} = {}

	if FFlagUserNewCharacterSoundsApi and SoundService.CharacterSoundsUseNewApi == Enum.RolloutState.Enabled then
		-- initialize Audio Emitter
		local localPlayer = nil
		local character = nil
		local humanoidRootPart = nil
		if FFlagUserFixCharSoundsEmitters then
			humanoidRootPart = humanoid.RootPart
		else
			localPlayer = Players.LocalPlayer
			character = localPlayer.Character
		end
		local curve = {}
		local i : number = 5
		local step : number = 1.25 -- determines how fine-grained the curve gets sampled
		while i < 150 do
			curve[i] = 5 / i;
			i *= step;
		end
		curve[150] = 0
		if FFlagUserFixCharSoundsEmitters then
			audioEmitter = Instance.new("AudioEmitter", humanoidRootPart)
		else
			audioEmitter = Instance.new("AudioEmitter", character)
		end
		audioEmitter.Name = "RbxCharacterSoundsEmitter"
		audioEmitter:SetDistanceAttenuation(curve)
		-- initialize sounds
		for name: string, props: {[string]: any} in pairs(AUDIOPLAYER_DATA) do
			local sound = Instance.new("AudioPlayer")
			local audioPlayerWire: Wire = Instance.new("Wire")
			sound.Name = name
			audioPlayerWire.Name = name .. "Wire"
			-- set default values
			sound.Archivable = false
			sound.Volume = 0.65
			for propName, propValue: any in pairs(props) do
				(sound :: any)[propName] = propValue
			end
			sound.Parent = rootPart
			audioPlayerWire.Parent = sound
			audioPlayerWire.SourceInstance = sound
			audioPlayerWire.TargetInstance = audioEmitter
			sounds[name] = sound
		end
	else
		-- initialize sounds
		for name: string, props: {[string]: any} in pairs(SOUND_DATA) do
			local sound = Instance.new("Sound")
			sound.Name = name
			-- set default values
			sound.Archivable = false
			sound.RollOffMinDistance = 5
			sound.RollOffMaxDistance = 150
			sound.Volume = 0.65
			for propName, propValue: any in pairs(props) do
				(sound :: any)[propName] = propValue
			end
			sound.Parent = rootPart
			sounds[name] = sound
		end
	end

	local playingLoopedSounds: {[Playable]: boolean?} = {}

	local function stopPlayingLoopedSounds(except: Playable?)
		except = except or nil --default value
		for sound in pairs(shallowCopy(playingLoopedSounds)) do
			if sound ~= except then
				stopSound(sound)
				playingLoopedSounds[sound] = nil
			end
		end
	end

	-- state transition callbacks.
	local stateTransitions: {[Enum.HumanoidStateType]: () -> ()} = {
		[Enum.HumanoidStateType.FallingDown] = function()
			stopPlayingLoopedSounds()
		end,

		[Enum.HumanoidStateType.GettingUp] = function()
			stopPlayingLoopedSounds()
			playSound(sounds.GettingUp)
		end,

		[Enum.HumanoidStateType.Jumping] = function()
			stopPlayingLoopedSounds()
			playSound(sounds.Jumping)
		end,

		[Enum.HumanoidStateType.Swimming] = function()
			local verticalSpeed = math.abs(rootPart.AssemblyLinearVelocity.Y)
			if verticalSpeed > 0.1 then
				(sounds.Splash :: any).Volume = math.clamp(map(verticalSpeed, 100, 350, 0.28, 1), 0, 1)
				playSound(sounds.Splash)
			end
			stopPlayingLoopedSounds(sounds.Swimming)
			playSound(sounds.Swimming, true)
			playingLoopedSounds[sounds.Swimming] = true
		end,

		[Enum.HumanoidStateType.Freefall] = function()
			(sounds.FreeFalling :: any).Volume = 0
			stopPlayingLoopedSounds(sounds.FreeFalling)
			
			setSoundLooped(sounds.FreeFalling, true)
			if sounds.FreeFalling:IsA("Sound") then
				sounds.FreeFalling.PlaybackRegionsEnabled = true
			end
			(sounds.FreeFalling :: any).LoopRegion = NumberRange.new(2, 9)
			playSound(sounds.FreeFalling)
			
			playingLoopedSounds[sounds.FreeFalling] = true
		end,

		[Enum.HumanoidStateType.Landed] = function()
			stopPlayingLoopedSounds()
			local verticalSpeed = math.abs(rootPart.AssemblyLinearVelocity.Y)
			if verticalSpeed > 75 then
				(sounds.Landing :: any).Volume = math.clamp(map(verticalSpeed, 50, 100, 0, 1), 0, 1)
				playSound(sounds.Landing)
			end
		end,

		[Enum.HumanoidStateType.Running] = function()
			stopPlayingLoopedSounds(sounds.Running)
			playSound(sounds.Running, true)
			playingLoopedSounds[sounds.Running] = true
		end,

		[Enum.HumanoidStateType.Climbing] = function()
			local sound = sounds.Climbing
			local partVelocity = rootPart.AssemblyLinearVelocity
			local velocity = if FFlagUserSoundsUseRelativeVelocity then getRelativeVelocity(cm, partVelocity) else partVelocity
			if math.abs(velocity.Y) > 0.1 then
				playSound(sound, true)
				stopPlayingLoopedSounds(sound)
			else
				stopPlayingLoopedSounds()
			end
			playingLoopedSounds[sound] = true
		end,

		[Enum.HumanoidStateType.Seated] = function()
			stopPlayingLoopedSounds()
		end,

		[Enum.HumanoidStateType.Dead] = function()
			stopPlayingLoopedSounds()
			playSound(sounds.Died)
		end,
	}

	-- updaters for looped sounds
	local loopedSoundUpdaters: {[Playable]: (number, Playable, Vector3) -> ()} = {
		[sounds.Climbing] = function(dt: number, sound: Playable, vel: Vector3)
			local velocity = if FFlagUserSoundsUseRelativeVelocity then getRelativeVelocity(cm, vel) else vel
			playSoundIf(sound, velocity.Magnitude > 0.1)
		end,

		[sounds.FreeFalling] = function(dt: number, sound: Playable, vel: Vector3): ()
			if vel.Magnitude > 75 then
				(sound :: any).Volume = math.clamp((sound :: any).Volume + 0.9*dt, 0, 1)
			else
				(sound :: any).Volume = 0
			end
		end,

		[sounds.Running] = function(dt: number, sound: Playable, vel: Vector3)
			playSoundIf(sound, vel.Magnitude > 0.5 and humanoid.MoveDirection.Magnitude > 0.5)
		end,
	}

	-- state substitutions to avoid duplicating entries in the state table
	local stateRemap: {[Enum.HumanoidStateType]: Enum.HumanoidStateType} = {
		[Enum.HumanoidStateType.RunningNoPhysics] = Enum.HumanoidStateType.Running,
	}

	local activeState: Enum.HumanoidStateType = stateRemap[humanoid:GetState()] or humanoid:GetState()

	local function transitionTo(state)
		local transitionFunc: () -> () = stateTransitions[state]

		if transitionFunc then
			transitionFunc()
		end

		activeState = state
	end

	transitionTo(activeState)

	local stateChangedConn = humanoid.StateChanged:Connect(function(_, state)
		state = stateRemap[state] or state

		if state ~= activeState then
			transitionTo(state)
		end
	end)

	local steppedConn = RunService.Stepped:Connect(function(_, worldDt: number)
		-- update looped sounds on stepped
		for sound in pairs(playingLoopedSounds) do
			local updater: (number, Playable, Vector3) -> () = loopedSoundUpdaters[sound]

			if updater then
				updater(worldDt, sound, rootPart.AssemblyLinearVelocity)
			end
		end
	end)

	local function terminate()
		stateChangedConn:Disconnect()
		steppedConn:Disconnect()

		-- Unparent all sounds and empty sounds table
		-- This is needed in order to support the case where initializeSoundSystem might be called more than once for the same player,
		-- which might happen in case player character is unparented and parented back on server and reset-children mechanism is active.
		for name: string, sound: Playable in pairs(sounds) do
			sound:Destroy()
		end
		table.clear(sounds)
	end

	return terminate
end

local binding = AtomicBinding.new({
	humanoid = "Humanoid",
	rootPart = "HumanoidRootPart",
}, initializeSoundSystem)

local playerConnections = {}

local function characterAdded(character)
	binding:bindRoot(character)
end

local function characterRemoving(character)
	binding:unbindRoot(character)
end

local function playerAdded(player: Player)
	local connections = playerConnections[player]
	if not connections then
		connections = {}
		playerConnections[player] = connections
	end

	if player.Character then
		characterAdded(player.Character)
	end
	table.insert(connections, player.CharacterAdded:Connect(characterAdded))
	table.insert(connections, player.CharacterRemoving:Connect(characterRemoving))
end

local function playerRemoving(player: Player)
	local connections = playerConnections[player]
	if connections then
		for _, conn in ipairs(connections) do
			conn:Disconnect()
		end
		playerConnections[player] = nil
	end

	if player.Character then
		characterRemoving(player.Character)
	end
end

for _, player in ipairs(Players:GetPlayers()) do
	task.spawn(playerAdded, player)
end
Players.PlayerAdded:Connect(playerAdded)
Players.PlayerRemoving:Connect(playerRemoving)
