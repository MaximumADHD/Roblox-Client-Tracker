local Plugin = script.Parent.Parent.Parent.Parent
local Framework = require(Plugin.Packages.Framework)
local Util = Framework.Util
local Action = Util.Action

export type Props = {
	currentThreadId : number,
}

return Action(script.Name, function(currentThreadId : number) : Props
	return {
		currentThreadId = currentThreadId 
	}
end)
