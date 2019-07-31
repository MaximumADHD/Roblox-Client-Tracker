-- Adds a value to the Settings Changed table.

local Plugin = script.Parent.Parent.Parent
local Action = require(Plugin.Src.Actions.Action)

return Action(script.Name, function(setting, value)
	assert(setting ~= nil, "AddChange setting key cannot be nil")
	assert(value ~= nil, "AddChange value cannot be nil. You probably meant Cryo.None")
	return {
		setting = setting,
		value = value,
	}
end)
