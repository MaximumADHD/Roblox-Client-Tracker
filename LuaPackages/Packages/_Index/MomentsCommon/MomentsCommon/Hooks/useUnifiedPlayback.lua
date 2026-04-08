local MomentsCommon = script:FindFirstAncestor("MomentsCommon")
local Packages = MomentsCommon.Parent

local Cryo = require(Packages.Cryo)
local React = require(Packages.React)

local useAudioPlayback = require(MomentsCommon.Hooks.useAudioPlayback)
local useCallback = React.useCallback
local useEffect = React.useEffect
local useImageDisplay = require(MomentsCommon.Hooks.useImageDisplay)
local useMemo = React.useMemo
local useRef = React.useRef
local useToggleState = require(MomentsCommon.Hooks.useToggleState)
local useVideoPlayback = require(MomentsCommon.Hooks.useVideoPlayback)

local Signal = require(MomentsCommon.Utils.Signal)

local Constants = require(MomentsCommon.Constants)
local Types = require(MomentsCommon.Types)

export type UnifiedPlaybackOptions = {
	autoplay: boolean?,
	content: Content?,
	edits: Types.Edits?,
	looping: boolean?,
	captureType: Enum.CaptureType?,
}

local DEFAULT_PROPS: UnifiedPlaybackOptions = {
	autoplay = false,
	edits = {
		music = nil,
		trim = nil,
	},
	looping = false,
	content = nil,
	captureType = nil,
}

local function useUnifiedPlayback(
	active: boolean,
	unifiedPlaybackOptions: UnifiedPlaybackOptions
): Types.UnifiedPlaybackController
	local options = Cryo.Dictionary.union(DEFAULT_PROPS, unifiedPlaybackOptions)
	local isPlaying = useToggleState(false)
	local isMuted = useToggleState(false)
	local onContentLoadedSignalRef = useRef(Signal.new())

	local audioAssetId = useMemo(function()
		if options.edits.music then
			return options.edits.music.assetId
		end

		return nil
	end, { options.edits })

	local videoPlaybackRegion = useMemo(function()
		if options.captureType == Enum.CaptureType.Screenshot then
			return NumberRange.new(0, Constants.ScreenshotMusicDuration)
		end

		if options.edits.trim then
			return NumberRange.new(options.edits.trim.startTime, options.edits.trim.endTime)
		end

		return NumberRange.new(0, math.huge)
	end, { options.edits, options.captureType })

	local audioPlaybackRegion = useMemo(function()
		if options.edits.music then
			return NumberRange.new(
				options.edits.music.startTime,
				options.edits.music.startTime + (videoPlaybackRegion.Max - videoPlaybackRegion.Min)
			)
		end

		return NumberRange.new(0, math.huge)
	end, { options.edits, videoPlaybackRegion })

	local audioPlayback = useAudioPlayback(active, audioAssetId, {
		playbackRegion = audioPlaybackRegion,
		looping = unifiedPlaybackOptions.looping,
	})

	local videoPlayback =
		useVideoPlayback(active, if options.captureType == Enum.CaptureType.Screenshot then nil else options.content, {
			playbackRegion = videoPlaybackRegion,
			looping = unifiedPlaybackOptions.looping,
		})

	local imageDisplay =
		useImageDisplay(active, if options.captureType == Enum.CaptureType.Screenshot then options.content else nil)

	local seek = useCallback(function(offset: number)
		if not videoPlayback.ref.current or not videoPlayback.ref.current.IsLoaded then
			return
		end

		videoPlayback.timeline.seek(offset)
		audioPlayback.timeline.seek(offset)
	end, { videoPlayback.timeline.seek, audioPlayback.timeline.seek })

	useEffect(function()
		if
			(not videoPlayback.ref.current or not videoPlayback.ref.current.IsLoaded)
			and (not imageDisplay.ref.current or not imageDisplay.isLoadedRef.current)
		then
			return
		end

		if active then
			isPlaying.enable()
		else
			isPlaying.disable()
		end
	end, { active })

	useEffect(function()
		if
			(not videoPlayback.ref.current or not videoPlayback.ref.current.IsLoaded)
			and (not imageDisplay.ref.current or not imageDisplay.isLoadedRef.current)
		then
			return
		end

		if isPlaying.enabled then
			videoPlayback.playback.play()
			audioPlayback.playback.play()
		else
			videoPlayback.playback.pause()
			audioPlayback.playback.pause()
		end
	end, { isPlaying.enabled })

	useEffect(function()
		if isMuted.enabled then
			audioPlayback.volume.mute()
		else
			audioPlayback.volume.unmute()
		end

		if audioAssetId or isMuted.enabled then
			videoPlayback.volume.mute()
		else
			videoPlayback.volume.unmute()
		end
	end, { isMuted.enabled, audioAssetId })

	local onContentLoaded = useCallback(function(assetType: Enum.AssetType)
		if active and options.autoplay then
			isPlaying.enable()
		end
		onContentLoadedSignalRef.current:fire(assetType)
	end, { active, options.autoplay })

	local onImageLoaded = useCallback(function()
		onContentLoaded(Enum.AssetType.Image)
	end, { onContentLoaded })

	local onVideoLoaded = useCallback(function()
		onContentLoaded(Enum.AssetType.Video)
	end, { onContentLoaded })

	local onVideoDidLoop = useCallback(function()
		audioPlayback.timeline.seek(0)
	end, { audioPlayback.timeline.seek })

	useEffect(function()
		local connections = {}

		if videoPlayback.onVideoDidLoopSignalRef.current then
			table.insert(connections, videoPlayback.onVideoDidLoopSignalRef.current:connect(onVideoDidLoop))
		end

		if videoPlayback.onVideoLoadedSignalRef.current then
			table.insert(connections, videoPlayback.onVideoLoadedSignalRef.current:connect(onVideoLoaded))
		end

		if imageDisplay.onImageLoadedSignalRef.current then
			table.insert(connections, imageDisplay.onImageLoadedSignalRef.current:connect(onImageLoaded))
		end

		return function()
			for _, connection in connections do
				connection.disconnect()
			end
		end
	end, { onVideoLoaded, onVideoDidLoop, onImageLoaded })

	return {
		timeline = if options.captureType == Enum.CaptureType.Video
			then {
				duration = videoPlayback.timeline.duration,
				elapsed = videoPlayback.timeline.elapsed,
				seek = seek,
				timeLength = videoPlayback.timeline.timeLength,
				timePosition = videoPlayback.timeline.timePosition,
			}
			else {
				duration = Constants.ScreenshotMusicDuration,
				elapsed = audioPlayback.timeline.elapsed,
				seek = seek,
				timeLength = Constants.ScreenshotMusicDuration,
				timePosition = audioPlayback.timeline.timePosition,
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
		audio = {
			timeLength = audioPlayback.timeline.timeLength,
			timePosition = audioPlayback.timeline.timePosition,
		},
		onContentLoadedSignalRef = onContentLoadedSignalRef,
		imageRef = imageDisplay.updateRef,
		videoRef = videoPlayback.updateRef,
		audioRef = audioPlayback.ref,
	}
end

return useUnifiedPlayback
