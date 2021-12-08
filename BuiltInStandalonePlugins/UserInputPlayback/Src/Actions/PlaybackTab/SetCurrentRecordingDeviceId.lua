local Plugin = script.Parent.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local Action = Framework.Util.Action

export type Props = {
	currentRecordingDeviceId: string,
}

return Action(script.Name, function(currentRecordingDeviceId: string): Props
	return {
		currentRecordingDeviceId = currentRecordingDeviceId,
	}
end)
