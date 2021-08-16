-- Resets the store

local Plugin = script.Parent.Parent.Parent
local Action = require(Plugin.Framework).Util.Action

return Action(script.Name, function()
	return {}
end)
