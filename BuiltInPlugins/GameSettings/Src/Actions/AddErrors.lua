-- Adds a value to the Settings Error table.

local Plugin = script.Parent.Parent.Parent
local Action = require(Plugin.Framework.Util).Action

return Action(script.Name, function(errors)
	return {
		errors = errors,
	}
end)