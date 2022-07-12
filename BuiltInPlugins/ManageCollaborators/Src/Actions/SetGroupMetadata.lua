local Plugin = script.Parent.Parent.Parent
local Framework = require(Plugin.Packages.Framework)
local Action = Framework.Util.Action

return Action(script.Name, function(newGroupMetadata)
	return {
		newGroupMetadata = newGroupMetadata
	}
end)
