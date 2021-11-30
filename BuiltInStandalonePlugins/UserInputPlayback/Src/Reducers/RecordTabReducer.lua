local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)
local Cryo = require(Plugin.Packages.Cryo)
local join = Cryo.Dictionary.join

local SetScreenSize = require(Plugin.Src.Actions.RecordTab.SetScreenSize)
local SetEmulationDeviceId = require(Plugin.Src.Actions.RecordTab.SetEmulationDeviceId)
local SetEmulationDeviceOrientation = require(Plugin.Src.Actions.RecordTab.SetEmulationDeviceOrientation)

type RecordTabStore = {
	screenSize: Vector2,
	emulationDeviceId: string,
	emulationDeviceOrientation: string,
}

local defaultRecordTabStore: RecordTabStore = {
	screenSize = Vector2.new(),
	emulationDeviceId = "Unknown",
	emulationDeviceOrientation = "Unknown",
}

return Rodux.createReducer(defaultRecordTabStore, {
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