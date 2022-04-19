-- Roblox character sound script

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

local AtomicBinding = require(script:WaitForChild("AtomicBinding"))

local FFlagUserAtomicCharacterSounds
do
	local success, result = pcall(function()
		return UserSettings():IsUserFeatureEnabled("UserAtomicCharacterSounds2")
	end)
	FFlagUserAtomicCharacterSounds = success and result
end

local SOUND_DATA : { [string]: {[string]: any}} = {
	Climbing = {
		SoundId = "rbxasset://sounds/action_footsteps_plastic.mp3",
		Looped = true,
	},
	Died = {
		SoundId = "rbxasset://sounds/uuhhh.mp3",
	},
	FreeFalling = {
		SoundId = "rbxasset://sounds/action_falling.mp3",
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

-- map a value from one range to another
local function map(x: number, inMin: number, inMax: number, outMin: number, outMax: number): number
	return (x - inMin)*(outMax - outMin)/(inMax - inMin) + outMin
end

local function playSound(sound: Sound)
	sound.TimePosition = 0
	sound.Playing = true
end

local function shallowCopy(t)
	local out = {}
	for k, v in pairs(t) do
		out[k] = v
	end
	return out
end

local function initializeSoundSystem(instances)
	local player = instances.player
	local humanoid = instances.humanoid
	local rootPart = instances.rootPart
	
	local sounds: {[string]: Sound} = {}

	-- initialize sounds
	for name: string, props: {[string]: any} in pairs(SOUND_DATA) do
		local sound: Sound = Instance.new("Sound") 
		sound.Name = name

		-- set default values
		sound.Archivable = false
		sound.RollOffMinDistance = 5
		sound.RollOffMaxDistance = 150
		sound.Volume = 0.65

		for propName, propValue: any in pairs(props) do
			sound[propName] = propValue
		end

		sound.Parent = rootPart
		sounds[name] = sound
	end

	local playingLoopedSounds: {[Sound]: boolean?} = {}

	local function stopPlayingLoopedSounds(except: Sound?)
		for sound in pairs(shallowCopy(playingLoopedSounds)) do
			if sound ~= except then
				sound.Playing = false
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
				sounds.Splash.Volume = math.clamp(map(verticalSpeed, 100, 350, 0.28, 1), 0, 1)
				playSound(sounds.Splash)
			end
			stopPlayingLoopedSounds(sounds.Swimming)
			sounds.Swimming.Playing = true
			playingLoopedSounds[sounds.Swimming] = true
		end,

		[Enum.HumanoidStateType.Freefall] = function()
			sounds.FreeFalling.Volume = 0
			stopPlayingLoopedSounds(sounds.FreeFalling)
			playingLoopedSounds[sounds.FreeFalling] = true
		end,

		[Enum.HumanoidStateType.Landed] = function()
			stopPlayingLoopedSounds()
			local verticalSpeed = math.abs(rootPart.AssemblyLinearVelocity.Y)
			if verticalSpeed > 75 then
				sounds.Landing.Volume = math.clamp(map(verticalSpeed, 50, 100, 0, 1), 0, 1)
				playSound(sounds.Landing)
			end
		end,

		[Enum.HumanoidStateType.Running] = function()
			stopPlayingLoopedSounds(sounds.Running)
			sounds.Running.Playing = true
			playingLoopedSounds[sounds.Running] = true
		end,

		[Enum.HumanoidStateType.Climbing] = function()
			local sound = sounds.Climbing
			if math.abs(rootPart.AssemblyLinearVelocity.Y) > 0.1 then
				sound.Playing = true
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
	local loopedSoundUpdaters: {[Sound]: (number, Sound, Vector3) -> ()} = {
		[sounds.Climbing] = function(dt: number, sound: Sound, vel: Vector3)
			sound.Playing = vel.Magnitude > 0.1
		end,

		[sounds.FreeFalling] = function(dt: number, sound: Sound, vel: Vector3): ()
			if vel.Magnitude > 75 then
				sound.Volume = math.clamp(sound.Volume + 0.9*dt, 0, 1)
			else
				sound.Volume = 0
			end
		end,

		[sounds.Running] = function(dt: number, sound: Sound, vel: Vector3)
			sound.Playing = vel.Magnitude > 0.5 and humanoid.MoveDirection.Magnitude > 0.5
		end,
	}

	-- state substitutions to avoid duplicating entries in the state table
	local stateRemap: {[Enum.HumanoidStateType]: Enum.HumanoidStateType} = {
		[Enum.HumanoidStateType.RunningNoPhysics] = Enum.HumanoidStateType.Running,
	}

	local activeState: Enum.HumanoidStateType = stateRemap[humanoid:GetState()] or humanoid:GetState()

	local stateChangedConn = humanoid.StateChanged:Connect(function(_, state)
		state = stateRemap[state] or state

		if state ~= activeState then
			local transitionFunc: () -> () = stateTransitions[state]

			if transitionFunc then
				transitionFunc()
			end

			activeState = state
		end
	end)

	local steppedConn = RunService.Stepped:Connect(function(_, worldDt: number)
		-- update looped sounds on stepped
		for sound in pairs(playingLoopedSounds) do
			local updater: (number, Sound, Vector3) -> () = loopedSoundUpdaters[sound]

			if updater then
				updater(worldDt, sound, rootPart.AssemblyLinearVelocity)
			end
		end
	end)

	local humanoidAncestryChangedConn: RBXScriptConnection
	local rootPartAncestryChangedConn: RBXScriptConnection
	local characterAddedConn: RBXScriptConnection

	local function terminate()
		stateChangedConn:Disconnect()
		steppedConn:Disconnect()
		
		if not FFlagUserAtomicCharacterSounds then
			humanoidAncestryChangedConn:Disconnect()
			rootPartAncestryChangedConn:Disconnect()
			characterAddedConn:Disconnect()
		end
	end
	
	if not FFlagUserAtomicCharacterSounds then
		humanoidAncestryChangedConn = humanoid.AncestryChanged:Connect(function(_, parent)
			if not parent then
				terminate()
			end
		end)

		rootPartAncestryChangedConn = rootPart.AncestryChanged:Connect(function(_, parent)
			if not parent then
				terminate()
			end
		end)

		characterAddedConn = player.CharacterAdded:Connect(terminate)
	end
	
	return terminate
end

if FFlagUserAtomicCharacterSounds then
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
	
else
	-- wait for the first of the passed signals to fire
	local function waitForFirst(...) -- RBXScriptSignal
		local shunt: BindableEvent = Instance.new("BindableEvent")
		local slots = {...}

		local function fire(...)
			for i = 1, #slots do
				slots[i]:Disconnect()
			end

			return shunt:Fire(...)
		end

		for i = 1, #slots do -- RBXScriptSignal
			slots[i] = slots[i]:Connect(fire) -- Change to RBXScriptConnection
		end

		return shunt.Event:Wait()
	end
	
	
	local function playerAdded(player: Player)
		local function characterAdded(character: Model)
			-- Avoiding memory leaks in the face of Character/Humanoid/RootPart lifetime has a few complications:
			-- * character deparenting is a Remove instead of a Destroy, so signals are not cleaned up automatically.
			-- ** must use a waitForFirst on everything and listen for hierarchy changes.
			-- * the character might not be in the dm by the time CharacterAdded fires
			-- ** constantly check consistency with player.Character and abort if CharacterAdded is fired again
			-- * Humanoid may not exist immediately, and by the time it's inserted the character might be deparented.
			-- * RootPart probably won't exist immediately.
			-- ** by the time RootPart is inserted and Humanoid.RootPart is set, the character or the humanoid might be deparented.

			if not character.Parent then
				waitForFirst(character.AncestryChanged, player.CharacterAdded)
			end

			if player.Character ~= character or not character.Parent then
				return
			end

			local humanoid = character:FindFirstChildOfClass("Humanoid") :: Humanoid
			while character:IsDescendantOf(game) and not humanoid do
				waitForFirst(character.ChildAdded, character.AncestryChanged, player.CharacterAdded)
				humanoid = character:FindFirstChildOfClass("Humanoid") :: Humanoid
			end

			if player.Character ~= character or not character:IsDescendantOf(game) then
				return
			end

			-- must rely on HumanoidRootPart naming because Humanoid.RootPart does not fire changed signals
			local rootPart = character:FindFirstChild("HumanoidRootPart")
			while character:IsDescendantOf(game) and not rootPart do
				waitForFirst(character.ChildAdded, character.AncestryChanged, humanoid.AncestryChanged, player.CharacterAdded)
				rootPart = character:FindFirstChild("HumanoidRootPart")
			end

			if rootPart and humanoid:IsDescendantOf(game) and character:IsDescendantOf(game) and player.Character == character then
				initializeSoundSystem({
					player = player,
					humanoid = humanoid,
					rootPart = rootPart
				})
			end
		end

		if player.Character then
			characterAdded(player.Character)
		end
		player.CharacterAdded:Connect(characterAdded)
	end

	Players.PlayerAdded:Connect(playerAdded)
	for _, player in ipairs(Players:GetPlayers()) do
		playerAdded(player)
	end
end
