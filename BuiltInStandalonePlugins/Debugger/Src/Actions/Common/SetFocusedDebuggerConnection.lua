local Plugin = script.Parent.Parent.Parent.Parent
local Framework = require(Plugin.Packages.Framework)
local Action = Framework.Util.Action

export type Props = {
	debuggerConnectionId: number,
}

return Action(script.Name, function(debuggerConnectionId: number): Props
	return {
		debuggerConnectionId = debuggerConnectionId,
	}
end)
