local Plugin = script.Parent.Parent.Parent
local Types = require(Plugin.Src.Types)

local RecordingMode: {[string]: Types.RecordingMode} = {
	Default = "Default",
	Recording = "Recording",
	Disabled = "Disabled",
}

local PlaybackMode: {[string]: Types.PlaybackMode} = {
	Default = "Default",
	Playing = "Playing",
	Disabled = "Disabled",
}

return {
	RecordingMode = RecordingMode,
	PlaybackMode = PlaybackMode,
}