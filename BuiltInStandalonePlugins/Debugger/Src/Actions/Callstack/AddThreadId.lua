local Plugin = script.Parent.Parent.Parent.Parent
local Framework = require(Plugin.Packages.Framework)
local Util = Framework.Util
local Action = Util.Action

export type Props = {
	threadId : number,
	displayString : string,
}
return Action(script.Name, function(threadId : number, displayString : string) : Props
	return {
		threadId = threadId,
		displayString = displayString,
	}
end)
