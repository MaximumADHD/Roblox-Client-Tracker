local Plugin = script.Parent.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local Action = Framework.Util.Action

export type Props = {
	shouldSetEmulationDevice: boolean,
}

return Action(script.Name, function(shouldSetEmulationDevice: boolean): Props
	return {
		shouldSetEmulationDevice = shouldSetEmulationDevice,
	}
end)
