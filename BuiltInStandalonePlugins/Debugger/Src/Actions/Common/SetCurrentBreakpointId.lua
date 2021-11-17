local Plugin = script.Parent.Parent.Parent.Parent
local Framework = require(Plugin.Packages.Framework)
local Util = Framework.Util
local Action = Util.Action

export type Props = {
	breakpointId : number
}

return Action(script.Name, function(breakpointId : number) : Props
	return {
		breakpointId = breakpointId,
	}
end)
