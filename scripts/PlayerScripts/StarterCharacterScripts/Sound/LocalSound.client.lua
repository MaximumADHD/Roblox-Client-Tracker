--[[
	Author: @spotco
	This script runs locally for the player of the given humanoid.
	This script triggers humanoid sound play/pause actions locally.

	The Playing/TimePosition properties of Sound objects bypass FilteringEnabled, so this triggers the sound
	immediately for the player and is replicated to all other players.

	This script is optimized to reduce network traffic through minimizing the amount of property replication.
]]--

--All sounds are referenced by this ID
local SFX = {
	Died = 0;
	Running = 1;
	Swimming = 2;
	Climbing = 3,
	Jumping = 4;
	GettingUp = 5;
	FreeFalling = 6;
	FallingDown = 7;
	Landing = 8;
	Splash = 9;
}

local Humanoid = nil
local Head = nil
--SFX ID to Sound object
local Sounds = {}
local SoundService = game:GetService("SoundService")

do
	local Figure = script.Parent.Parent
	Head = Figure:WaitForChild("Head")
	while not Humanoid do
		for _,NewHumanoid in pairs(Figure:GetChildren()) do
			if NewHumanoid:IsA("Humanoid") then
				Humanoid = NewHumanoid
				break
			end
		end
		if Humanoid then break end
		Figure.ChildAdded:wait()
	end
	Sounds[SFX.Died] = 			Head:WaitForChild("Died")
	Sounds[SFX.Running] = 		Head:WaitForChild("Running")
	Sounds[SFX.Swimming] = 	Head:WaitForChild("Swimming")
	Sounds[SFX.Climbing] = 	Head:WaitForChild("Climbing")
	Sounds[SFX.Jumping] = 		Head:WaitForChild("Jumping")
	Sounds[SFX.GettingUp] = 	Head:WaitForChild("GettingUp")
	Sounds[SFX.FreeFalling] = 	Head:WaitForChild("FreeFalling")
	Sounds[SFX.Landing] = 		Head:WaitForChild("Landing")
	Sounds[SFX.Splash] = 		Head:WaitForChild("Splash")

	local DefaultServerSoundEvent = game:GetService("ReplicatedStorage"):FindFirstChild("DefaultServerSoundEvent")
	if DefaultServerSoundEvent then
		DefaultServerSoundEvent.OnClientEvent:connect(function(sound, playing, resetPosition)
			if UserSettings():IsUserFeatureEnabled("UserPlayCharacterLoopSoundWhenFE") then
				if resetPosition and sound.TimePosition ~= 0 then
					sound.TimePosition = 0
				end
				if sound.IsPlaying ~= playing then
					sound.Playing = playing
				end
			else
				if sound.TimePosition ~= 0 then
					sound.TimePosition = 0
				end
				if not sound.IsPlaying then
					sound.Playing = true
				end
			end
		end)
	end
end

local IsSoundFilteringEnabled = function()
	return game.Workspace.FilteringEnabled and SoundService.RespectFilteringEnabled
end

local Util
Util = {

	--Define linear relationship between (pt1x,pt2x) and (pt2x,pt2y). Evaluate this at x.
	YForLineGivenXAndTwoPts = function(x,pt1x,pt1y,pt2x,pt2y)
		--(y - y1)/(x - x1) = m
		local m = (pt1y - pt2y) / (pt1x - pt2x)
		--float b = pt1.y - m * pt1.x;
		local b = (pt1y - m * pt1x)
		return m * x + b
	end;

	--Clamps the value of "val" between the "min" and "max"
	Clamp = function(val,min,max)
		return math.min(max,math.max(min,val))	
	end;

	--Gets the horizontal (x,z) velocity magnitude of the given part
	HorizontalSpeed = function(Head)
		local hVel = Head.Velocity + Vector3.new(0,-Head.Velocity.Y,0)
		return hVel.magnitude	
	end;

	--Gets the vertical (y) velocity magnitude of the given part
	VerticalSpeed = function(Head)
		return math.abs(Head.Velocity.Y)
	end;

	--Setting Playing/TimePosition values directly result in less network traffic than Play/Pause/Resume/Stop
	--If these properties are enabled, use them.
	Play = function(sound)		
		if IsSoundFilteringEnabled() then
			sound.CharacterSoundEvent:FireServer(true, true)
		end
		if sound.TimePosition ~= 0 then
			sound.TimePosition = 0
		end
		if not sound.IsPlaying then
			sound.Playing = true
		end
	end;

	Pause = function(sound)
		if UserSettings():IsUserFeatureEnabled("UserPlayCharacterLoopSoundWhenFE") and IsSoundFilteringEnabled() then
			sound.CharacterSoundEvent:FireServer(false, false)
		end
		if sound.IsPlaying then
			sound.Playing = false
		end
	end;

	Resume = function(sound)
		if UserSettings():IsUserFeatureEnabled("UserPlayCharacterLoopSoundWhenFE") and IsSoundFilteringEnabled() then
			sound.CharacterSoundEvent:FireServer(true, false)
		end
		if not sound.IsPlaying then
			sound.Playing = true
		end
	end;

	Stop = function(sound)
		if UserSettings():IsUserFeatureEnabled("UserPlayCharacterLoopSoundWhenFE") and IsSoundFilteringEnabled() then
			sound.CharacterSoundEvent:FireServer(false, true)
		end
		if sound.IsPlaying then
			sound.Playing = false
		end
		if sound.TimePosition ~= 0 then
			sound.TimePosition = 0
		end
	end;
}

do
	-- List of all active Looped sounds
	local playingLoopedSounds = {}

	-- Last seen Enum.HumanoidStateType
	local activeState = nil

	-- Verify and set that "sound" is in "playingLoopedSounds".
	function setSoundInPlayingLoopedSounds(sound)
		for i=1, #playingLoopedSounds do
			if playingLoopedSounds[i] == sound then
				return
			end
		end	
		table.insert(playingLoopedSounds,sound)
	end

	-- Stop all active looped sounds except parameter "except". If "except" is not passed, all looped sounds will be stopped.
	function stopPlayingLoopedSoundsExcept(except)
		for i=#playingLoopedSounds,1,-1 do
			if playingLoopedSounds[i] ~= except then
				Util.Pause(playingLoopedSounds[i])			
				table.remove(playingLoopedSounds,i)	
			end
		end
	end

	-- Table of Enum.HumanoidStateType to handling function
	local stateUpdateHandler = {
		[Enum.HumanoidStateType.Dead] = function()
			stopPlayingLoopedSoundsExcept()
			local sound = Sounds[SFX.Died]
			Util.Play(sound)
		end;

		[Enum.HumanoidStateType.RunningNoPhysics] = function()
			stateUpdated(Enum.HumanoidStateType.Running)
		end;

		[Enum.HumanoidStateType.Running] = function()	
			local sound = Sounds[SFX.Running]
			stopPlayingLoopedSoundsExcept(sound)

			if Util.HorizontalSpeed(Head) > 0.5 then
				Util.Resume(sound)
				setSoundInPlayingLoopedSounds(sound)
			else
				stopPlayingLoopedSoundsExcept()
			end
		end;

		[Enum.HumanoidStateType.Swimming] = function()
			if activeState ~= Enum.HumanoidStateType.Swimming and Util.VerticalSpeed(Head) > 0.1 then
				local splashSound = Sounds[SFX.Splash]
				splashSound.Volume = Util.Clamp(
					Util.YForLineGivenXAndTwoPts(
						Util.VerticalSpeed(Head), 
						100, 0.28, 
						350, 1),
					0,1)
				Util.Play(splashSound)
			end

			do
				local sound = Sounds[SFX.Swimming]
				stopPlayingLoopedSoundsExcept(sound)
				Util.Resume(sound)
				setSoundInPlayingLoopedSounds(sound)
			end
		end;

		[Enum.HumanoidStateType.Climbing] = function()
			local sound = Sounds[SFX.Climbing]
			if Util.VerticalSpeed(Head) > 0.1 then
				Util.Resume(sound)
				stopPlayingLoopedSoundsExcept(sound)
			else
				stopPlayingLoopedSoundsExcept()
			end		
			setSoundInPlayingLoopedSounds(sound)
		end;

		[Enum.HumanoidStateType.Jumping] = function()
			if activeState == Enum.HumanoidStateType.Jumping then
				return
			end		
			stopPlayingLoopedSoundsExcept()
			local sound = Sounds[SFX.Jumping]
			Util.Play(sound)
		end;

		[Enum.HumanoidStateType.GettingUp] = function()
			stopPlayingLoopedSoundsExcept()
			local sound = Sounds[SFX.GettingUp]
			Util.Play(sound)
		end;

		[Enum.HumanoidStateType.Freefall] = function()
			if activeState == Enum.HumanoidStateType.Freefall then
				return
			end
			local sound = Sounds[SFX.FreeFalling]
			sound.Volume = 0
			stopPlayingLoopedSoundsExcept()
		end;

		[Enum.HumanoidStateType.FallingDown] = function()
			stopPlayingLoopedSoundsExcept()
		end;

		[Enum.HumanoidStateType.Landed] = function()
			stopPlayingLoopedSoundsExcept()
			if Util.VerticalSpeed(Head) > 75 then
				local landingSound = Sounds[SFX.Landing]
				landingSound.Volume = Util.Clamp(
					Util.YForLineGivenXAndTwoPts(
						Util.VerticalSpeed(Head), 
						50, 0, 
						100, 1),
					0,1)
				Util.Play(landingSound)			
			end
		end;

		[Enum.HumanoidStateType.Seated] = function()
			stopPlayingLoopedSoundsExcept()
		end;	
	}

	

	-- Handle state event fired or OnChange fired
	function stateUpdated(state)
		if stateUpdateHandler[state] ~= nil then
			stateUpdateHandler[state]()
		end
		activeState = state
	end

	

	Humanoid.Died:connect(			function() stateUpdated(Enum.HumanoidStateType.Dead) 			end)
	Humanoid.Running:connect(		function() stateUpdated(Enum.HumanoidStateType.Running) 		end)
	Humanoid.Swimming:connect(		function() stateUpdated(Enum.HumanoidStateType.Swimming) 		end)
	Humanoid.Climbing:connect(		function() stateUpdated(Enum.HumanoidStateType.Climbing) 		end)
	Humanoid.Jumping:connect(		function() stateUpdated(Enum.HumanoidStateType.Jumping) 		end)
	Humanoid.GettingUp:connect(		function() stateUpdated(Enum.HumanoidStateType.GettingUp) 		end)
	Humanoid.FreeFalling:connect(		function() stateUpdated(Enum.HumanoidStateType.Freefall) 		end)
	Humanoid.FallingDown:connect(		function() stateUpdated(Enum.HumanoidStateType.FallingDown) 	end)

	

	-- required for proper handling of Landed event

	Humanoid.StateChanged:connect(function(old, new)
		stateUpdated(new)
	end)

	

	function onUpdate(stepDeltaSeconds, tickSpeedSeconds)
		local stepScale = stepDeltaSeconds / tickSpeedSeconds
		do
			local sound = Sounds[SFX.FreeFalling]
			if activeState == Enum.HumanoidStateType.Freefall then
				if Head.Velocity.Y < 0 and Util.VerticalSpeed(Head) > 75 then
					Util.Resume(sound)

					--Volume takes 1.1 seconds to go from volume 0 to 1
					local ANIMATION_LENGTH_SECONDS = 1.1

					local normalizedIncrement = tickSpeedSeconds / ANIMATION_LENGTH_SECONDS									
					sound.Volume = Util.Clamp(sound.Volume + normalizedIncrement * stepScale, 0, 1)
				else
					sound.Volume = 0
				end			
			else
				Util.Pause(sound)
			end
		end

		do
			local sound = Sounds[SFX.Running]
			if activeState == Enum.HumanoidStateType.Running then
				if Util.HorizontalSpeed(Head) < 0.5 then
					Util.Pause(sound)
				end
			end
		end		
	end

	
	local lastTick = tick()
	local TICK_SPEED_SECONDS = 0.25
	while true do
		onUpdate(tick() - lastTick,TICK_SPEED_SECONDS)
		lastTick = tick()
		wait(TICK_SPEED_SECONDS)
	end

end