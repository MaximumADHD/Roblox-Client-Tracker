local Plugin = script.Parent.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local Action = Framework.Util.Action

export type Props = {
	currentRecordingDurationSec: number,
}

return Action(script.Name, function(currentRecordingDurationSec: number): Props
	assert(currentRecordingDurationSec >= 0, "Duration should not be negative")
	return {
		currentRecordingDurationSec = currentRecordingDurationSec,
	}
end)
