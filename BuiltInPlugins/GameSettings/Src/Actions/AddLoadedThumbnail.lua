-- Adds a new loaded thumbnail

local Plugin = script.Parent.Parent.Parent
local Action = require(Plugin.Src.Actions.Action)

return Action(script.Name, function(thumbnailType, thumbnail, key)
	return {
		thumbnailType = thumbnailType,
		thumbnail = thumbnail,
		key = key,
	}
end)