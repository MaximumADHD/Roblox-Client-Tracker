-- Adds a value to the Settings Warning table.

local Plugin = script.Parent.Parent.Parent
local Action = require(Plugin.Framework).Util.Action

return Action(script.Name, function(key)
	return {
		key = key,
	}
end)
