local Plugin = script.Parent.Parent.Parent

local Action = require(Plugin.Src.Actions.Action)

return Action(script.Name, function(screen)
	local errmsg = "screen arg must be a string, received %s"
	assert(type(screen) == "string", string.format(errmsg, tostring(screen)))
	return {
		currentScreen = screen,
	}
end)
