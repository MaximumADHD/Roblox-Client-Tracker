local Plugin = script.Parent.Parent.Parent
local Action = require(Plugin.Src.Actions.Action)

local StateModelTemplate = require(Plugin.Src.Util.StateModelTemplate)

return Action(script.Name, function()
	return {
		templatesArrayToAdd = {StateModelTemplate.new()},
	}
end)