local CorePackages = game:GetService("CorePackages")
local UserGameSettings = UserSettings():GetService("UserGameSettings")

local RobloxGui = game:GetService("CoreGui"):WaitForChild("RobloxGui")
local CoreGuiModules = RobloxGui:WaitForChild("Modules")
local GetFFlagEnableSoundTelemetry = require(CoreGuiModules.Flags.GetFFlagEnableSoundTelemetry)
local GetFIntSoundTelemetryThrottlingPercentage = require(CoreGuiModules.Flags.GetFIntSoundTelemetryThrottlingPercentage)

local LoggingProtocol = require(CorePackages.UniversalApp.Logging.LoggingProtocol)
local myLoggingProtocol = LoggingProtocol.default

type TelemetryEventConfig = LoggingProtocol.TelemetryEventConfig

local myConfig : TelemetryEventConfig = {
	eventName = "SoundTelemetryTracking",
	backends = {
		LoggingProtocol.TelemetryBackends.EventIngest, -- Sends to SuperSet
	},
	throttlingPercentage = 10000, -- 100%
	
	-- the following 3 fields are for static documentation generation purposes only
	lastUpdated = { 23, 14, 3 }, -- March 14, 2023
	description = [[ Hopefully we will get some logging of in-experience music ]],
	links = "https://roblox.atlassian.net/wiki/spaces/MUS/pages/1895989494/Music+Telemetry+Instrumentation+Tech+Spec",
}

local myStandardizedFields = {
	myLoggingProtocol.StandardizedFields.addPlaceId,
	myLoggingProtocol.StandardizedFields.addUniverseId,
	myLoggingProtocol.StandardizedFields.addSessionId,
}

local MIN_MUSIC_LENGTH = 6 -- Sounds with length greater than 6 seconds are considered as "Music" (vs Sound Effect)
local trackedSounds : { [Sound] : { any } } = {} -- Tracks ALL sounds, including sound effects.

-- Only consider developer-uploaded sounds, not ambient experience sounds (eg. footfalls from walking around)
local function isMusic(sound: Sound)
	return if string.find(tostring(sound.SoundId), "rbxassetid://") and sound.TimeLength > MIN_MUSIC_LENGTH then true else false
end

local function logTelemetryEvent(sound: Sound, eventName: string, numTimesLooped: number?)
	if isMusic(sound) then
		local groupVolume = if sound.SoundGroup then sound.SoundGroup.Volume else 1 -- 1 if not part of a group
		local loopCount = if eventName == "DidLoop" then numTimesLooped else 0 -- 0 if not looped
	
		myLoggingProtocol:logRobloxTelemetryEvent(
			myConfig,
			myStandardizedFields,
			{
				assetId = sound.SoundId,
				debugId = sound:GetDebugId(10),
				soundEvent = eventName,
				volume = sound.Volume,
				groupVolume = groupVolume,
				masterVolume = UserGameSettings.MasterVolume,
				length = sound.TimeLength,
				playbackSpeed = sound.PlaybackSpeed,
				timePosition = sound.TimePosition,
				loopCount = loopCount,
				isSpatial = sound.IsSpatial,
				attenuationFactor = sound.RollOffGain,
			}
		)
	end
end

local function hookupSoundEvents(sound: Sound)
	local playedSoundConnection = sound.Played:Connect(function()
		-- Wait for the sound to be loaded if it is not already loaded.
		if sound.TimeLength == 0 or not sound.IsLoaded then
			local loadedConnection = nil
			loadedConnection = sound.Loaded:Connect(function()
				logTelemetryEvent(sound, "Played")
				loadedConnection:Disconnect()
			end)
		else
			logTelemetryEvent(sound, "Played")
		end
	end)

	local pausedSoundConnection = sound.Paused:Connect(function()
		logTelemetryEvent(sound, "Paused")
	end)

	local stoppedSoundConnection = sound.Stopped:Connect(function()
		logTelemetryEvent(sound, "Stopped")
	end)

	local endedSoundConnection = sound.Ended:Connect(function()
		logTelemetryEvent(sound, "Ended")
	end)

	local resumedSoundConnection = sound.Resumed:Connect(function()
		logTelemetryEvent(sound, "Resumed")
	end)

	local didLoopSoundConnection = sound.DidLoop:Connect(function(_, numTimesLooped)
		logTelemetryEvent(sound, "DidLoop", numTimesLooped)
	end)

	local soundConnections = { playedSoundConnection, pausedSoundConnection, stoppedSoundConnection, endedSoundConnection, resumedSoundConnection, didLoopSoundConnection}
	trackedSounds[sound] = soundConnections
end

local function unhookSoundEvents(sound: Sound)
	local connections = trackedSounds[sound]
	for _, connection in connections do
		connection:Disconnect()
	end
	trackedSounds[sound] = nil
end

-- Throttle number of clients sending events
if GetFFlagEnableSoundTelemetry() and (math.random(0, 100)) < GetFIntSoundTelemetryThrottlingPercentage() then
	for _, instance in ipairs(game:GetDescendants()) do
		if instance:IsA("Sound") and not trackedSounds[instance] then
			hookupSoundEvents(instance)
		end
	end
	
	game.DescendantAdded:Connect(function(instance)
		if instance:IsA("Sound") and not trackedSounds[instance] then
			hookupSoundEvents(instance)
		end
	end)

	game.DescendantRemoving:Connect(function(instance)
		if instance:IsA("Sound") and trackedSounds[instance] then
			unhookSoundEvents(instance)
		end
	end)
end
