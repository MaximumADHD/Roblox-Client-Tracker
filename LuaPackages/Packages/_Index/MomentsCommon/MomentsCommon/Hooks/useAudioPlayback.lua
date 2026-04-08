local MomentsCommon = script:FindFirstAncestor("MomentsCommon")
local Packages = MomentsCommon.Parent

local Players = game:GetService("Players")

local Cryo = require(Packages.Cryo)
local React = require(Packages.React)

local useCallback = React.useCallback
local useEffect = React.useEffect
local useMemo = React.useMemo
local useRef = React.useRef
local useState = React.useState
local useToggleState = require(MomentsCommon.Hooks.useToggleState)

local Types = require(MomentsCommon.Types)

local LocalPlayer = Players.LocalPlayer

local DEFAULT_VOLUME = 0.2

local function assetIdAsContent(assetId: number?)
	if not assetId then
		return nil
	end

	return `rbxassetid://{assetId}`
end

type AudioPlaybackOptions = {
	autoplay: boolean?,
	looping: boolean?,
	playbackRegion: NumberRange?,
}

export type AudioPlaybackController = Types.PlaybackController & {
	ref: React.RefObject<AudioPlayer?>,
}

local DEFAULT_PROPS: AudioPlaybackOptions = {
	autoplay = false,
	looping = false,
	playbackRegion = NumberRange.new(0, math.huge),
}

local function useAudioPlayback(
	active: boolean,
	assetId: number?,
	audioPlaybackOptions: AudioPlaybackOptions?
): AudioPlaybackController
	local options = Cryo.Dictionary.union(DEFAULT_PROPS, audioPlaybackOptions or {})

	local audioPlayerRef = useRef(nil :: AudioPlayer?)

	local isPlaying = useToggleState(options.autoplay)
	local isMuted = useToggleState(false)

	local timeLength, setTimeLength = useState(0)
	local timePosition, setTimePosition = useState(0)

	local duration, setDuration = useState(0)
	local elapsed, setElapsed = useState(0)

	local seek = useCallback(function(newTime: number)
		local audioPlayer = audioPlayerRef.current
		if audioPlayer then
			local clampedTimeElapsed = math.clamp(newTime + options.playbackRegion.Min, 0, timeLength)
			audioPlayer.TimePosition = clampedTimeElapsed
		end
	end, { timeLength, options.playbackRegion })

	local onRenderStepped = useCallback(function()
		if not active then
			return
		end

		local audioPlayer = audioPlayerRef.current
		if audioPlayer then
			setElapsed(audioPlayer.TimePosition - options.playbackRegion.Min)
			setTimePosition(audioPlayer.TimePosition)
		end
	end, { active, assetId, options.playbackRegion })

	-- To get audio playback working we need to take the assetId (which can be a
	-- stringified int) and turn it into an rbxassetid content type. Without
	-- this the AudioPlayer instance won't play anything
	assetId = useMemo(function()
		return assetIdAsContent(assetId)
	end, { assetId })

	useEffect(function()
		if not assetId then
			return
		end

		local container = Instance.new("Folder")
		container.Name = `AudioPlayback_{assetId}`

		local audioPlayer = Instance.new("AudioPlayer")
		audioPlayer.Asset = assetId
		audioPlayer.PlaybackRegion = options.playbackRegion
		audioPlayer.Looping = options.looping or false
		audioPlayer.Parent = container
		audioPlayer.Volume = DEFAULT_VOLUME

		local function updateTimeLength()
			setTimeLength(audioPlayer.TimeLength)
		end

		audioPlayer:GetPropertyChangedSignal("TimeLength"):Connect(updateTimeLength)

		updateTimeLength()

		local audioOutput = Instance.new("AudioDeviceOutput")
		audioOutput.Parent = container

		local playerToOutput = Instance.new("Wire")
		playerToOutput.SourceInstance = audioPlayer
		playerToOutput.TargetInstance = audioOutput
		playerToOutput.Parent = container

		audioPlayerRef.current = audioPlayer
		task.spawn(function()
			container.Parent = LocalPlayer:WaitForChild("PlayerGui")
		end)

		return function()
			container:Destroy()
		end
	end, { assetId })

	useEffect(function()
		local audioPlayer = audioPlayerRef.current
		if audioPlayer then
			audioPlayer.PlaybackRegion = options.playbackRegion
			audioPlayer.TimePosition = 0
		end
	end, { options.playbackRegion })

	useEffect(function()
		local regionTimeLength = options.playbackRegion.Max - options.playbackRegion.Min
		setDuration(math.min(regionTimeLength, timeLength))
	end, { timeLength, options.playbackRegion })

	useEffect(function()
		local audioPlayer = audioPlayerRef.current

		if audioPlayer then
			if isPlaying.enabled then
				audioPlayer.PlaybackSpeed = 1
				if not audioPlayer.IsPlaying then
					audioPlayer:Play()
				end
			else
				audioPlayer.PlaybackSpeed = 0
				if audioPlayer.IsPlaying then
					audioPlayer:Stop()
				end
			end
		end
	end, { assetId, isPlaying.enabled })

	useEffect(function()
		local audioPlayer = audioPlayerRef.current

		if audioPlayer then
			-- MUS-2278 TODO: We only set the Volume to 0 when isPlaying is
			-- false to work around a quirk with the Music window. It looks like
			-- the underlying music detection logic does not take into
			-- consideration when an AudioPlayer is paused. Once that is fixed
			-- we can change this line back to simply `if isMuted.enabled then`
			if isMuted.enabled or not isPlaying.enabled then
				audioPlayer.Volume = 0
			else
				audioPlayer.Volume = DEFAULT_VOLUME
			end
		end
	end, { isMuted.enabled, isPlaying.enabled })

	local onEnded = useCallback(function()
		isPlaying.disable()
	end, {})

	useEffect(function()
		local connections = {}

		if audioPlayerRef.current then
			table.insert(connections, game:GetService("RunService").RenderStepped:Connect(onRenderStepped))
			table.insert(connections, audioPlayerRef.current.Ended:Connect(onEnded))
		end

		return function()
			for _, connection in connections do
				connection:Disconnect()
			end
		end
	end, { onRenderStepped, onEnded })

	return {
		timeline = {
			duration = duration,
			elapsed = elapsed,
			seek = seek,
			timeLength = timeLength,
			timePosition = timePosition,
		},
		playback = {
			isPlaying = isPlaying.enabled,
			pause = isPlaying.disable,
			play = isPlaying.enable,
			toggle = isPlaying.toggle,
		},
		volume = {
			isMuted = isMuted.enabled,
			mute = isMuted.enable,
			unmute = isMuted.disable,
			toggle = isMuted.toggle,
		},
		ref = audioPlayerRef,
	}
end

return useAudioPlayback
