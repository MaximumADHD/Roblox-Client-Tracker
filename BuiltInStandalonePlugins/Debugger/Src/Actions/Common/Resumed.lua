local Plugin = script.Parent.Parent.Parent.Parent
local Framework = require(Plugin.Packages.Framework)
local Util = Framework.Util
local Action = Util.Action
local DebuggerStateToken = require(Plugin.Src.Models.DebuggerStateToken)

return Action(script.Name, function(debuggerStateToken : DebuggerStateToken.DebuggerStateToken, threadId : number)
	return {
		debuggerStateToken = debuggerStateToken,
		threadId = threadId
	}
end)
