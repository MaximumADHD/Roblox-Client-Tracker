
local Plugin = script.Parent.Parent.Parent

local Action = require(Plugin.Src.Actions.Action)
local Screens = require(Plugin.Src.Util.Screens)

return Action(script.Name, function(screen)
	assert(type(screen) == "string", string.format("SetScreen requires a string, not %s", type(screen)))
	assert(Screens[screen] ~= nil, string.format("Invalid SetScreen: %s does not exist", screen))

	return {
		screen = screen
	}
end)
