local Plugin = script.Parent.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local Action = Framework.Util.Action

export type Props = {
	screenSize: Vector2,
}

return Action(script.Name, function(screenSize: Vector2): Props
	return {
		screenSize = screenSize,
	}
end)
