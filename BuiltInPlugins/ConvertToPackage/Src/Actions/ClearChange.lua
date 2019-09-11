local Plugin = script.Parent.Parent.Parent
local Action = require(Plugin.Src.Actions.Action)

return Action(script.Name, function(setting)
	assert(setting ~= nil, "ClearChange setting key cannot be nil")
	return {
		setting = setting
	}
end)