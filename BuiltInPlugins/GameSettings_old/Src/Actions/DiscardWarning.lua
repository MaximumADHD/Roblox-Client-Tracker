-- Removes a value from the Settings Warning table.

local Plugin = script.Parent.Parent.Parent
local Action = require(Plugin.Src.Actions.Action)

return Action(script.Name, function(key)
	return {
		key = key,
	}
end)