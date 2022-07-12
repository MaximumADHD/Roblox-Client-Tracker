local Plugin = script.Parent.Parent.Parent
local Action = require(Plugin.Packages.Framework).Util.Action

return Action(script.Name, function(currentGroupMetadata)
	return {
		currentGroupMetadata = currentGroupMetadata
	}
end)
