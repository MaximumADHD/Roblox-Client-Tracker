local Plugin = script.Parent.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local Action = Framework.Util.Action

export type Props = {
	currentRecordingDeviceOrientation: string,
}

return Action(script.Name, function(currentRecordingDeviceOrientation: string): Props
	return {
		currentRecordingDeviceOrientation = currentRecordingDeviceOrientation,
	}
end)
