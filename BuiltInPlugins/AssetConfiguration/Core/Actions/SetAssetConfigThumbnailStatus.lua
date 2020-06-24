local Plugin = script.Parent.Parent.Parent

local Libs = Plugin.Libs
local Util = require(Libs.Framework.Util)
local Action = Util.Action

-- Thumbnail can have only one thumbnail
return Action(script.Name, function(thumbnailStatus)
	return {
		thumbnailStatus = thumbnailStatus,
	}
end)
