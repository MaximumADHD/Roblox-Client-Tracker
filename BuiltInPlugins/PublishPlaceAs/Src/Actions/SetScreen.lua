local Plugin = script.Parent.Parent.Parent

local Action = require(Plugin.Src.Actions.Action)
local Constants = require(Plugin.Src.Resources.Constants)

return Action(script.Name, function(screen)
	local errmsg = "SetScreen requires a string, not %s"
	assert(type(screen) == "string", string.format(errmsg, type(screen)))

	errmsg = "Invalid SetScreen: %s does not exist"
	assert(Constants.SCREENS[screen] ~= nil, string.format(errmsg, screen))

	return {
		screen = screen,
	}
end)
