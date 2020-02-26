
local Plugin = script.Parent.Parent.Parent

local Action = require(Plugin.Packages.Framework.Util.Action)
local Screens = require(Plugin.Src.Util.Screens)

return Action(script.Name, function(screen)
	assert(typeof(screen) == "table", string.format("SetScreen requires a table, not %s", typeof(screen)))
	assert(Screens[screen.Key] ~= nil, string.format("Invalid SetScreen: %s does not exist", screen.Key))

	return {
		screen = screen
	}
end)
