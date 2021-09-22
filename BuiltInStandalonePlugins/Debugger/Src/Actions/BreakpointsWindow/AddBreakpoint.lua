local Plugin = script.Parent.Parent.Parent.Parent
local Framework = require(Plugin.Packages.Framework)
local Util = Framework.Util
local Action = Util.Action
local Breakpoint = require(Plugin.Src.Models.Breakpoint)

export type Props = {
	debuggerConnectionId : number,
	breakpoint : Breakpoint.Breakpoint,
}

-- Takes in the Breakpoint model and the debugger connection id
return Action(script.Name, function(debuggerConnectionId : number, breakpoint : Breakpoint.Breakpoint) : Props
	return {
		debuggerConnectionId = debuggerConnectionId,
		breakpoint = breakpoint,
	}
end)
