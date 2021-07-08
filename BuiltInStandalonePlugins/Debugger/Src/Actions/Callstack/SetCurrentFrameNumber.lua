local Plugin = script.Parent.Parent.Parent.Parent
local Framework = require(Plugin.Packages.Framework)
local Util = Framework.Util
local Action = Util.Action

export type Props = {
	currentFrame : number,
}

return Action(script.Name, function(currentFrame : number) : Props
	return {
		currentFrame = currentFrame
	}
end)
