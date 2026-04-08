local MomentsCreationFlow = script:FindFirstAncestor("MomentsCreationFlow")
local Packages = MomentsCreationFlow.Parent

local Players = game:GetService("Players")

local React = require(Packages.React)

local useEffect = React.useEffect

local Constants = require(MomentsCreationFlow.Constants)

local LocalPlayer = Players.LocalPlayer

local SEGMENT_SELECTOR_WIDTH = Constants.AudioWaveform.SegmentSelectorWidth
local WAVEFORM_WIDTH = Constants.AudioWaveform.WaveformWidth
local WAVEFORM_PADDING = Constants.AudioWaveform.WaveformPadding

local function assetIdAsContent(assetId: number)
	return `rbxassetid://{assetId}`
end

local function normalizeWaveform(waveform: { number }): { number }
	local max = 0

	-- First pass: clamp negative values to 0 and find max
	local clamped = {}
	for _, value in waveform do
		local clampedValue = math.max(0, value)
		table.insert(clamped, clampedValue)
		max = math.max(max, clampedValue)
	end

	-- Avoid division by zero (when all values were negative or zero)
	if max == 0 then
		return clamped
	end

	-- Normalize each value to be between 0 and 1
	local normalized = {}
	for _, value in clamped do
		table.insert(normalized, value / max)
	end

	return normalized
end

local function useAudioWaveform(audioAssetId: number, segmentDuration: number)
	local waveform, setWaveform = React.useState({})
	local audioPlayerRef = React.useRef(nil)

	local samplesPerSecond = React.useMemo(function()
		return (SEGMENT_SELECTOR_WIDTH / (WAVEFORM_WIDTH + WAVEFORM_PADDING)) / segmentDuration
	end, { segmentDuration })

	local assetId = React.useMemo(function()
		return assetIdAsContent(audioAssetId)
	end, { audioAssetId })

	useEffect(function(): (() -> ())?
		local container = Instance.new("Folder")
		container.Name = "AudioWaveform"

		local audioPlayer = Instance.new("AudioPlayer")
		audioPlayer.Asset = assetId
		audioPlayer.Parent = container

		audioPlayerRef.current = audioPlayer
		container.Parent = LocalPlayer:WaitForChild("PlayerGui")

		return function()
			container:Destroy()
		end
	end, {
		audioAssetId,
		segmentDuration,
	})

	local onAudioPlayerReady = React.useCallback(function()
		local audioPlayer = audioPlayerRef.current

		if audioPlayer and audioPlayer.IsReady then
			task.spawn(function()
				local asyncWaveform = audioPlayer:GetWaveformAsync(
					NumberRange.new(0, audioPlayer.TimeLength),
					samplesPerSecond * audioPlayer.TimeLength
				)
				setWaveform(normalizeWaveform(asyncWaveform))
			end)
		end
	end, {})

	useEffect(function()
		local audioPlayer = audioPlayerRef.current
		local connections = {}
		if audioPlayer then
			table.insert(connections, audioPlayer:GetPropertyChangedSignal("IsReady"):Connect(onAudioPlayerReady))
		end

		return function()
			for _, connection in connections do
				connection:Disconnect()
			end
		end
	end, {})

	return waveform
end

return useAudioWaveform
