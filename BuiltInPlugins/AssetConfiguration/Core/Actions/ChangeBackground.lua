local Plugin = script.Parent.Parent.Parent

local Libs = Plugin.Libs
local Util = require(Libs.Framework.Util)
local Action = Util.Action

return Action(script.Name, function(settings, index, selected)
	return {
		settings = settings,
		index = index,
		selected = selected,
	}
end)
