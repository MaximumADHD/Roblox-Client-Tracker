local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)

type PlaybackTabStore = {
	selectedRecordingIndex: number,
	playbackFileNameOptions: {string},
	currentPlaybackRecordingDataValid: boolean,
	currentRecordingDurationSec: number,
	currentRecordingNumEvents: number,
	currentRecordingResolution: Vector2,
	currentRecordingDeviceId: string,
	currentRecordingDeviceOrientation: string,
	shouldSetEmulationDevice: boolean,
}

local defaultPlaybackTabStore: PlaybackTabStore = {
	selectedRecordingIndex = 1,
	playbackFileNameOptions = {},
	currentPlaybackRecordingDataValid = false,
	currentRecordingDurationSec = 0,
	currentRecordingNumEvents = 0,
	currentRecordingResolution = Vector2.new(),
	currentRecordingDeviceId = "Unknown",
	currentRecordingDeviceOrientation = "Unknown",
	shouldSetEmulationDevice = true,
}

return Rodux.createReducer(defaultPlaybackTabStore, {
})