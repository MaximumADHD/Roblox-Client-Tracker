local Plugin = script.Parent.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local Action = Framework.Util.Action
local Types = require(Plugin.Src.Types)

export type Props = {
	recordingMode: Types.RecordingMode,
}

return Action(script.Name, function(recordingMode: Types.RecordingMode): Props
	return {
		recordingMode = recordingMode,
	}
end)
