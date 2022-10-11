local Page = script.Parent.Parent
local Plugin = script.Parent.Parent.Parent.Parent
local Action = require(Plugin.Packages.Framework).Util.Action

local StateModelTemplate = require(Page.Util.StateModelTemplate)

return Action(script.Name, function()
	return {
		templatesArrayToAdd = { StateModelTemplate.new() },
	}
end)
