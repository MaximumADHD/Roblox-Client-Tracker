local Plugin = script.Parent.Parent.Parent
local Action = require(Plugin.Core.Actions.Action)

return Action(script.Name, function(setting, value)
	return {
		setting = setting,
		value = value,
	}
end)