-- Sets if the Game Settings window is currently open or working (saving or loading).

local Plugin = script.Parent.Parent.Parent
local Action = require(Plugin.Src.Actions.Action)

return Action(script.Name, function(currentStatus)
	return {
		currentStatus = currentStatus,
	}
end)