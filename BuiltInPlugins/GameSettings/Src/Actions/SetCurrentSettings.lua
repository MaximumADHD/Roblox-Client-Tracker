-- Sets all store settings to their loaded values.

local Plugin = script.Parent.Parent.Parent
local Action = require(Plugin.Framework).Util.Action

return Action(script.Name, function(settings)
	return {
		settings = settings,
	}
end)
