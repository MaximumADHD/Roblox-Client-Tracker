local Plugin = script.Parent.Parent.Parent.Parent
local Framework = require(Plugin.Packages.Framework)
local Util = Framework.Util
local Action = Util.Action
local Breakpoint = require(Plugin.Src.Models.Breakpoint)

export type Props = {
	breakpoint : Breakpoint.Breakpoint,
}

return Action(script.Name, function(breakpoint : Breakpoint.Breakpoint) : Props
	return {
		breakpoint = breakpoint,
	}
end)
