local Plugin = script.Parent.Parent.Parent
local Types = require(Plugin.Src.Types)

local PlaybackMode: {[string]: Types.PlaybackMode} = {
	Default = "Default",
	Playing = "Playing",
	Disabled = "Disabled",
}

return {
	PlaybackMode = PlaybackMode,
}