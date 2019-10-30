local Plugin = script.Parent.Parent.Parent

local Action = require(Plugin.Core.Actions.Action)

-- Thumbnail can have only one thumbnail
return Action(script.Name, function(thumbnailStatus)
	return {
		thumbnailStatus = thumbnailStatus,
	}
end)
