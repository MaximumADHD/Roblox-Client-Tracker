local Plugin = script.Parent.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local Action = Framework.Util.Action

export type Props = {
	currentRecordingResolution: Vector2,
}

return Action(script.Name, function(currentRecordingResolution: Vector2): Props
	return {
		currentRecordingResolution = currentRecordingResolution,
	}
end)
