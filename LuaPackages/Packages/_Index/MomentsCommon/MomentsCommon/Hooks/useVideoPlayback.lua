local MomentsCommon = script:FindFirstAncestor("MomentsCommon")
local Packages = MomentsCommon.Parent

local Cryo = require(Packages.Cryo)
local React = require(Packages.React)

local useCallback = React.useCallback
local useEffect = React.useEffect
local useRef = React.useRef
local useState = React.useState
local useToggleState = require(MomentsCommon.Hooks.useToggleState)

local Signal = require(MomentsCommon.Utils.Signal)

local Types = require(MomentsCommon.Types)

local DEFAULT_VOLUME = 0.2
local TIME_TOLERANCE = 0.001

type Signal<Args...> = Signal.Signal<Args...>

export type VideoPlaybackController = Types.PlaybackController & {
	onVideoDidLoopSignalRef: React.RefObject,
	onVideoLoadedSignalRef: React.RefObject,
	ref: React.RefObject<VideoFrame?>,
	updateRef: (videoFrame: VideoFrame) -> (),
}

type VideoPlaybackOptions = {
	autoplay: boolean?,
	looping: boolean?,
	playbackRegion: NumberRange?,
}

local DEFAULT_PROPS: VideoPlaybackOptions = {
	autoplay = false,
	looping = false,
	playbackRegion = NumberRange.new(0, math.huge),
}

local function useVideoPlayback(
	active: boolean,
	videoContent: Content,
	videoPlaybackOptions: VideoPlaybackOptions?
): VideoPlaybackController
	local options = Cryo.Dictionary.union(DEFAULT_PROPS, videoPlaybackOptions or {})

	local videoFrameRef = useRef(nil :: VideoFrame?)

	-- this toggles each time the ref is updated
	local refUpdateTracker = useToggleState(false)
	local isPlaying = useToggleState(options.autoplay)
	local isMuted = useToggleState(false)

	local timeLength, setTimeLength = useState(0)
	local timePosition, setTimePosition = useState(0)

	local duration, setDuration = useState(0)
	local elapsed, setElapsed = useState(0)

	local onVideoDidLoopSignalRef = useRef(Signal.new())
	local onVideoLoadedSignalRef = useRef(Signal.new())

	local seek = useCallback(function(newTime: number)
		local videoFrame = videoFrameRef.current
		if videoFrame then
			local clampedTimeElapsed = math.clamp(newTime + options.playbackRegion.Min, 0, timeLength)
			videoFrame.TimePosition = clampedTimeElapsed
		end
	end, { timeLength, options.playbackRegion })

	local onVideoLoaded = useCallback(function()
		local videoFrame = videoFrameRef.current
		if videoFrame then
			onVideoLoadedSignalRef.current:fire()
			local regionTimeLength = options.playbackRegion.Max - options.playbackRegion.Min
			videoFrame.Volume = if isMuted.enabled then 0 else DEFAULT_VOLUME
			setDuration(math.min(regionTimeLength, videoFrame.TimeLength))
			setTimeLength(videoFrame.TimeLength)
		end
	end, { options.playbackRegion, isMuted.enabled })

	local onRenderStepped = useCallback(function()
		if not active then
			return
		end

		local videoFrame = videoFrameRef.current
		if videoFrame then
			setElapsed(videoFrame.TimePosition - options.playbackRegion.Min)
			setTimePosition(videoFrame.TimePosition)
		end
	end, { active, options.playbackRegion })

	local onVideoDidLoop = useCallback(function()
		if not videoFrameRef.current then
			return
		end

		local videoFrame = videoFrameRef.current
		videoFrame.TimePosition = options.playbackRegion.Min

		onVideoDidLoopSignalRef.current:fire()
	end, { options.playbackRegion } :: { any })

	useEffect(function()
		local videoFrame = videoFrameRef.current
		if not videoFrame then
			return
		end

		if videoContent then
			videoFrame.VideoContent = videoContent
		end
	end, { refUpdateTracker.enabled, videoContent })

	useEffect(function()
		local videoFrame = videoFrameRef.current
		if not videoFrame then
			return
		end

		local onVideoLoadedConnection = videoFrame.Loaded:Connect(onVideoLoaded)
		local onRenderSteppedConnection = game:GetService("RunService").RenderStepped:Connect(onRenderStepped)
		local onVideoDidLoopConnection = videoFrame.DidLoop:Connect(onVideoDidLoop)

		return function()
			onVideoLoadedConnection:Disconnect()
			onRenderSteppedConnection:Disconnect()
			onVideoDidLoopConnection:Disconnect()
		end
	end, { refUpdateTracker.enabled, onRenderStepped, onVideoLoaded, onVideoDidLoop })

	useEffect(function()
		local videoFrame = videoFrameRef.current
		if videoFrame then
			videoFrame.Looped = options.looping
		end
	end, { refUpdateTracker.enabled, options.looping })

	useEffect(function()
		local videoFrame = videoFrameRef.current
		if videoFrame then
			videoFrame.Playing = isPlaying.enabled
		end
	end, { refUpdateTracker.enabled, isPlaying.enabled })

	useEffect(function()
		local videoFrame = videoFrameRef.current
		if videoFrame then
			videoFrame.Volume = if isMuted.enabled then 0 else DEFAULT_VOLUME
		end
	end, { refUpdateTracker.enabled, isMuted.enabled })

	useEffect(function()
		local videoFrame = videoFrameRef.current
		if not videoFrame then
			return
		end

		if timePosition >= options.playbackRegion.Max + TIME_TOLERANCE then
			if not isPlaying.enabled then
				timePosition = options.playbackRegion.Max
			elseif options.looping then
				videoFrame.TimePosition = options.playbackRegion.Min
				onVideoDidLoopSignalRef.current:fire()
			else
				isPlaying.disable()
			end
		end

		if timePosition < options.playbackRegion.Min - TIME_TOLERANCE then
			videoFrame.TimePosition = options.playbackRegion.Min
		end
	end, {
		timePosition,
		options.playbackRegion,
		options.looping,
		isPlaying.disable,
	})

	useEffect(function()
		local videoFrame = videoFrameRef.current
		if videoFrame then
			local regionTimeLength = options.playbackRegion.Max - options.playbackRegion.Min
			setDuration(math.min(regionTimeLength, videoFrame.TimeLength))
		end
	end, { options.playbackRegion })

	local updateRef = useCallback(function(videoFrame: VideoFrame)
		refUpdateTracker.toggle()
		videoFrameRef.current = videoFrame
	end, { refUpdateTracker.toggle })

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
		onVideoDidLoopSignalRef = onVideoDidLoopSignalRef,
		onVideoLoadedSignalRef = onVideoLoadedSignalRef,
		ref = videoFrameRef,
		updateRef = updateRef,
	}
end

return useVideoPlayback
