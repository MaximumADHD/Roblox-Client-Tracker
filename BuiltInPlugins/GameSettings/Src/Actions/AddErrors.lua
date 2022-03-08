-- Adds a value to the Settings Error table.

local Plugin = script.Parent.Parent.Parent
local Action = require(Plugin.Packages.Framework).Util.Action

return Action(script.Name, function(errors)
	return {
		errors = errors,
	}
end)
