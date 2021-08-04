local Plugin = script.Parent.Parent.Parent
local Util = require(Plugin.Packages.Framework).Util
local Action = Util.Action

return Action(script.Name, function(view)
	return {
		view = view
	}
end)
