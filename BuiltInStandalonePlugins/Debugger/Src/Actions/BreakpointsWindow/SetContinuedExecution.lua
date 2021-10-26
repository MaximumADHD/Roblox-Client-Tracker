local Plugin = script.Parent.Parent.Parent.Parent
local Framework = require(Plugin.Packages.Framework)
local Action = Framework.Util.Action

export type Props = {
	breakpointId : number,
	isEnabled : boolean,
}

return Action(script.Name, function(breakpointId : number, isEnabled : boolean) : Props
	return {
		breakpointId = breakpointId,
		isEnabled = isEnabled,
	}
end)
