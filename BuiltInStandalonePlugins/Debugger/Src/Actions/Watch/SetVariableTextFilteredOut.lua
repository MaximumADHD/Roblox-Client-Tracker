local Plugin = script.Parent.Parent.Parent.Parent
local Framework = require(Plugin.Packages.Framework)
local Util = Framework.Util
local Action = Util.Action

export type Props = {
	debuggerStateToken : DebuggerStateToken.DebuggerStateToken,
	threadId : number,
	frameNumber : number,
	path : string,
	filteredOut : bool
}

return Action(script.Name, function(debuggerStateToken : DebuggerStateToken.DebuggerStateToken, 
	threadId : number, frameNumber : number, path : string, filteredOut : bool) : Props
	return {
		debuggerStateToken = debuggerStateToken,
		threadId = threadId,
		frameNumber = frameNumber,
		path = path,
		filteredOut = filteredOut
	}
end)
