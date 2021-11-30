local Plugin = script.Parent.Parent.Parent
local Types = require(Plugin.Src.Types)

local PluginState: {[string]: Types.PluginState} = {
	Default = "Default",
	Recording = "Recording",
	Playing = "Playing",
	Disabled = "Disabled",
	ShouldStartPlayback = "ShouldStartPlayback",
	ShouldStartRecording = "ShouldStartRecording",
}

return {
	PluginState = PluginState,
}