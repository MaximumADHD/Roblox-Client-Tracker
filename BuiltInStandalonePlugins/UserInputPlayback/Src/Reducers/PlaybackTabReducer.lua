local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)
local Cryo = require(Plugin.Packages.Cryo)
local join = Cryo.Dictionary.join

local SetShouldSetEmulationDevice = require(Plugin.Src.Actions.PlaybackTab.SetShouldSetEmulationDevice)
local SetCurrentRecordingDurationSec = require(Plugin.Src.Actions.PlaybackTab.SetCurrentRecordingDurationSec)
local SetCurrentRecordingNumEvents = require(Plugin.Src.Actions.PlaybackTab.SetCurrentRecordingNumEvents)
local SetCurrentRecordingResolution = require(Plugin.Src.Actions.PlaybackTab.SetCurrentRecordingResolution)
local SetCurrentRecordingDeviceId = require(Plugin.Src.Actions.PlaybackTab.SetCurrentRecordingDeviceId)
local SetCurrentRecordingDeviceOrientation = require(Plugin.Src.Actions.PlaybackTab.SetCurrentRecordingDeviceOrientation)

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
	SetCurrentRecordingDurationSec = function(state: PlaybackTabStore, action: SetCurrentRecordingDurationSec.Props): PlaybackTabStore
		return join(state, {
			currentRecordingDurationSec = action.currentRecordingDurationSec,
		})
	end,
	SetCurrentRecordingNumEvents = function(state: PlaybackTabStore, action: SetCurrentRecordingNumEvents.Props): PlaybackTabStore
		return join(state, {
			currentRecordingNumEvents = action.currentRecordingNumEvents,
		})
	end,
	SetCurrentRecordingResolution = function(state: PlaybackTabStore, action: SetCurrentRecordingResolution.Props): PlaybackTabStore
		return join(state, {
			currentRecordingResolution = action.currentRecordingResolution,
		})
	end,
	SetCurrentRecordingDeviceId = function(state: PlaybackTabStore, action: SetCurrentRecordingDeviceId.Props): PlaybackTabStore
		return join(state, {
			currentRecordingDeviceId = action.currentRecordingDeviceId,
		})
	end,
	SetCurrentRecordingDeviceOrientation = function(state: PlaybackTabStore, action: SetCurrentRecordingDeviceOrientation.Props): PlaybackTabStore
		return join(state, {
			currentRecordingDeviceOrientation = action.currentRecordingDeviceOrientation,
		})
	end,
	SetShouldSetEmulationDevice = function(state: PlaybackTabStore, action: SetShouldSetEmulationDevice.Props): PlaybackTabStore
		return join(state, {
			shouldSetEmulationDevice = action.shouldSetEmulationDevice,
		})
	end,
})
