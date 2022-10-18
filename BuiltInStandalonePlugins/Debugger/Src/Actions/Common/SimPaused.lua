local Plugin = script.Parent.Parent.Parent.Parent
local Framework = require(Plugin.Packages.Framework)
local Util = Framework.Util
local Action = Util.Action
local DebuggerStateToken = require(Plugin.Src.Models.DebuggerStateToken)

export type Props = {
	debuggerStateToken: DebuggerStateToken.DebuggerStateToken,
	threadId: number,
	hitException: boolean,
}

return Action(script.Name, function(debuggerStateToken: DebuggerStateToken.DebuggerStateToken, threadId: number, hitException: boolean): Props
	return {
		debuggerStateToken = debuggerStateToken,
		threadId = threadId,
		hitException = hitException,
	}
end)
