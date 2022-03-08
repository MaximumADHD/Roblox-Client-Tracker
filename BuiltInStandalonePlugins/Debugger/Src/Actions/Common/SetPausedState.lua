local Plugin = script.Parent.Parent.Parent.Parent
local Framework = require(Plugin.Packages.Framework)
local Util = Framework.Util
local Action = Util.Action

export type Props = {
	pause : boolean
}

return Action(script.Name, function(pause : boolean) : Props
	return {
		pause = pause,
	}
end)
