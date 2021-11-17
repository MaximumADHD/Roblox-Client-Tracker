local Plugin = script.Parent.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local Action = Framework.Util.Action

export type Props = {
	emulationDeviceId: string,
}

return Action(script.Name, function(emulationDeviceId: string): Props
	return {
		emulationDeviceId = emulationDeviceId,
	}
end)
