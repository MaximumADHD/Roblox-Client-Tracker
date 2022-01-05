local Plugin = script.Parent.Parent.Parent.Parent
local Framework = require(Plugin.Packages.Framework)
local Util = Framework.Util
local Action = Util.Action
local MetaBreakpoint = require(Plugin.Src.Models.MetaBreakpoint)

export type Props = {
	debuggerConnectionId : number,
	metaBreakpoint : MetaBreakpoint.MetaBreakpoint,
}

-- Takes in the MetaBreakpoint model and the debugger connection id
return Action(script.Name, function(debuggerConnectionId : number, metaBreakpoint : MetaBreakpoint.MetaBreakpoint) : Props
	return {
		debuggerConnectionId = debuggerConnectionId,
		metaBreakpoint = metaBreakpoint,
	}
end)
