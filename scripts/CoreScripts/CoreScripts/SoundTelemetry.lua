local CorePackages = game:GetService("CorePackages")
local AnalyticsService = game:GetService("RbxAnalyticsService")
local UserGameSettings = UserSettings():GetService("UserGameSettings")
local SoundService = game:GetService("SoundService")

local RobloxGui = game:GetService("CoreGui"):WaitForChild("RobloxGui")
local CoreGuiModules = RobloxGui:WaitForChild("Modules")
local GetFFlagEnableSoundSessionTelemetry = require(CoreGuiModules.Flags.GetFFlagEnableSoundSessionTelemetry)
local GetFIntSoundSessionTelemetryThrottle = require(CoreGuiModules.Flags.GetFIntSoundSessionTelemetryThrottle)
local EngineFeatureRbxAnalyticsServiceExposePlaySessionId = game:GetEngineFeature("RbxAnalyticsServiceExposePlaySessionId")

local LoggingProtocol = require(CorePackages.Workspace.Packages.LoggingProtocol)

local myLoggingProtocol = LoggingProtocol.default

type TelemetryEventConfig = LoggingProtocol.TelemetryEventConfig

local AggregatedData = require(CoreGuiModules.AggregatedData)
local PlayingSounds = require(CoreGuiModules.PlayingSounds)

local sessionEventConfig : TelemetryEventConfig = {
	eventName = "SoundSessionPlayback",
	backends = {
		LoggingProtocol.TelemetryBackends.EventIngest, -- Sends to SuperSet
	},
	throttlingPercentage = GetFIntSoundSessionTelemetryThrottle(),

	-- the following 3 fields are for static documentation generation purposes only
	lastUpdated = { 23, 13, 6 }, -- June 13, 2023
	description = [[ Aggregated session-end event of all music playback data ]],
	links = "https://roblox.atlassian.net/wiki/spaces/MUS/pages/2065826132/Scaled+Analytics+Tech+Spec",
}

local trackedSounds : { [Sound] : { any } } = {} -- Tracks ALL sounds, including sound effects.

local aggregatedData: any = AggregatedData.new()
local playingSounds = PlayingSounds.new(aggregatedData)

local function logSessionEvent()	
	local assetIds = {}
	local loopCounts = {}
	local playbackSeconds = {}
	for id, data in pairs(aggregatedData) do
		table.insert(assetIds, id)
		table.insert(loopCounts, data.loopcount)
		table.insert(playbackSeconds, data.playtime)
	end

	-- Standardized params get cleared out by the time the end-of-session event fires and this code triggers
	-- But if we get the placeid/sessionid/etc ourselves then they have valid values.
	local customFields = {
		asset_ids = table.concat(assetIds, ","),
		loop_counts = table.concat(loopCounts, ","),
		playback_seconds = table.concat(playbackSeconds, ","),
		placeid = tostring(game.PlaceId),
		sessionid = AnalyticsService:GetSessionId(),
		universeid = tostring(game.GameId),
	}

	if EngineFeatureRbxAnalyticsServiceExposePlaySessionId then
		customFields.playsessionid = AnalyticsService:GetPlaySessionId()
	end

	myLoggingProtocol:logRobloxTelemetryEvent(sessionEventConfig, nil, customFields)
end

local function aggregateEndSessionData()
	-- Remove all currently playing sounds
	-- This will handle the aggregation logic for us
	for soundId, data in pairs(playingSounds.sounds) do
		for instanceid, loopcount in pairs(data.instances) do
			playingSounds:removeSound(soundId, instanceid)
		end
	end

	logSessionEvent()
end

local function isAudible(sound: Sound)
	local masterVolume = UserGameSettings.MasterVolume
	local groupVolume = if sound.SoundGroup then sound.SoundGroup.Volume else 1
	local volume = sound.Volume
	-- Luau FIXME: RollOffGain are read-only properties on the Sound instance,
	-- so unsure why these were flagged with TypeError: Key 'RollOffGain' not found in class 'Sound'
	local attenuationFactor = (sound:: any).RollOffGain
	local volumeThreshold = 0.01  -- This is an experimentally-determined reasonable threshold of audibility
	return masterVolume * groupVolume * volume * attenuationFactor > volumeThreshold
end


local function onPlayed(sound: Sound)
	if GetFFlagEnableSoundSessionTelemetry() and isAudible(sound) then 
		playingSounds:addSound(sound.SoundId, sound:GetDebugId(10))
	end
end

local function onPaused(sound: Sound)
	if GetFFlagEnableSoundSessionTelemetry() then 
		playingSounds:removeSound(sound.SoundId, sound:GetDebugId(10))
	end
end

local function onStopped(sound: Sound)
	if GetFFlagEnableSoundSessionTelemetry() then 
		playingSounds:removeSound(sound.SoundId, sound:GetDebugId(10))
	end
end

local function onEnded(sound: Sound)
	if GetFFlagEnableSoundSessionTelemetry() then 
		playingSounds:removeSound(sound.SoundId, sound:GetDebugId(10))
	end
end

local function onResumed(sound: Sound)
	if GetFFlagEnableSoundSessionTelemetry() and isAudible(sound) then 
		playingSounds:addSound(sound.SoundId, sound:GetDebugId(10))
	end
end

local function onLooped(sound: Sound, numTimesLooped: number)
	if GetFFlagEnableSoundSessionTelemetry() then 
		playingSounds:loopSound(sound.SoundId, sound:GetDebugId(10))
	end
end

local function unhookSoundEvents(sound: Sound)
	local connections = trackedSounds[sound]
	if connections ~= nil then 
		for _, connection in connections do
			connection:Disconnect()
		end
	end
	trackedSounds[sound] = nil
end

local function hookupSoundEvents(sound: Sound)	
	-- Handle the case where the sound is already set to Playing when it's loaded into the DM
	if sound.Playing then
		onPlayed(sound)
	end 

	local playedSoundConnection = sound.Played:Connect(function()	
		-- Wait for the sound to be loaded if it is not already loaded.
		if sound.TimeLength == 0 or not sound.IsLoaded then
			local loadedConnection = nil
			loadedConnection = sound.Loaded:Connect(function()
				onPlayed(sound)
				loadedConnection:Disconnect()
			end)
		else
			onPlayed(sound)
		end
	end)

	local pausedSoundConnection = sound.Paused:Connect(function()
		onPaused(sound)
	end)

	local stoppedSoundConnection = sound.Stopped:Connect(function()
		onStopped(sound)
	end)

	local endedSoundConnection = sound.Ended:Connect(function()
		onEnded(sound)
	end)

	local resumedSoundConnection = sound.Resumed:Connect(function()
		onResumed(sound)
	end)

	local didLoopSoundConnection = sound.DidLoop:Connect(function(_, numTimesLooped)
		onLooped(sound, numTimesLooped)
	end)

	local ancestryChangedConnection = sound.AncestryChanged:Connect(function(child, parent)
		if child:FindFirstAncestorOfClass("DataModel") == nil then
			unhookSoundEvents(sound)
		end
	end)

	local soundConnections = { playedSoundConnection, pausedSoundConnection, stoppedSoundConnection, endedSoundConnection, resumedSoundConnection, didLoopSoundConnection, ancestryChangedConnection}
	trackedSounds[sound] = soundConnections

end

if GetFFlagEnableSoundSessionTelemetry() then
	if game:GetEngineFeature("AudioInstanceAddedApiEnabled") then
		SoundService.AudioInstanceAdded:Connect(function(instance)		
			local shouldTrack = instance:IsA("Sound") -- TODO: Add support for AudioListener here when we're ready

			if shouldTrack and not trackedSounds[instance :: Sound] then
				hookupSoundEvents(instance :: Sound)
			end
		end)
	end

	game.Close:Connect(function() 
		aggregateEndSessionData()
	end)
end
