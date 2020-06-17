-- Removes a key from the Settings Errors table.

local Plugin = script.Parent.Parent.Parent
local Action = require(Plugin.Src.Actions.Action)

return Action(script.Name, function(error)
	return {
		error = error,
	}
end)