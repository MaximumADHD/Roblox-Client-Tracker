local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)
local Types = require(Plugin.Src.Types)
local Enums = require(Plugin.Src.Util.Enums)

type PlaybackTabStore = {
	selectedRecordingIndex: number,
	playbackFileNameOptions: {string},
	playbackMode: Types.PlaybackMode,
	shouldStartPlayback: boolean,
	currentPlaybackRecordingDataValid: boolean,
	shouldSetEmulationDevice: boolean,
}

local defaultPlaybackTabStore: PlaybackTabStore = {
	selectedRecordingIndex = 1,
	playbackFileNameOptions = {},
	playbackMode = Enums.PlaybackMode.Default,
	shouldStartPlayback = false,
	currentPlaybackRecordingDataValid = false,
	shouldSetEmulationDevice = true,
}

return Rodux.createReducer(defaultPlaybackTabStore, {
})