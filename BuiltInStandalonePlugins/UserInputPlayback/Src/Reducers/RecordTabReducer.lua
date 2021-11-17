local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)
local Cryo = require(Plugin.Packages.Cryo)
local join = Cryo.Dictionary.join

local Types = require(Plugin.Src.Types)
local Enums = require(Plugin.Src.Util.Enums)

local SetRecordingMode = require(Plugin.Src.Actions.RecordTab.SetRecordingMode)
local SetShouldStart = require(Plugin.Src.Actions.RecordTab.SetShouldStart)
local SetScreenSize = require(Plugin.Src.Actions.RecordTab.SetScreenSize)
local SetEmulationDeviceId = require(Plugin.Src.Actions.RecordTab.SetEmulationDeviceId)
local SetEmulationDeviceOrientation = require(Plugin.Src.Actions.RecordTab.SetEmulationDeviceOrientation)

type RecordTabStore = {
	recordingMode: Types.RecordingMode,
	shouldStart: boolean,
	screenSize: Vector2,
	emulationDeviceId: string,
	emulationDeviceOrientation: string,
}

local defaultRecordTabStore: RecordTabStore = {
	recordingMode = Enums.RecordingMode.Default,
	shouldStart = false,
	screenSize = Vector2.new(),
	emulationDeviceId = "Unknown",
	emulationDeviceOrientation = "Unknown",
}

return Rodux.createReducer(defaultRecordTabStore, {
	SetRecordingMode = function(state: RecordTabStore, action: SetRecordingMode.Props): RecordTabStore
		return join(state, {
			recordingMode = action.recordingMode,
		})
	end,
	SetShouldStart = function(state: RecordTabStore, action: SetShouldStart.Props): RecordTabStore
		return join(state, {
			shouldStart = action.shouldStart,
		})
	end,
	SetScreenSize = function(state: RecordTabStore, action: SetScreenSize.Props): RecordTabStore
		return join(state, {
			screenSize = action.screenSize,
		})
	end,
	SetEmulationDeviceId = function(state: RecordTabStore, action: SetEmulationDeviceId.Props): RecordTabStore
		return join(state, {
			emulationDeviceId = action.emulationDeviceId,
		})
	end,
	SetEmulationDeviceOrientation = function(state: RecordTabStore, action: SetEmulationDeviceOrientation.Props): RecordTabStore
		return join(state, {
			emulationDeviceOrientation = action.orientation,
		})
	end,
})