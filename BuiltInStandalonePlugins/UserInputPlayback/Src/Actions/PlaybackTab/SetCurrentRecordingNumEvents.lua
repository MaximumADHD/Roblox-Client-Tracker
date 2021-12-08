local Plugin = script.Parent.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local Action = Framework.Util.Action

export type Props = {
	currentRecordingNumEvents: number,
}

return Action(script.Name, function(currentRecordingNumEvents: number): Props
	assert(currentRecordingNumEvents >= 0, "Number of events should not be negative")
	return {
		currentRecordingNumEvents = currentRecordingNumEvents,
	}
end)
