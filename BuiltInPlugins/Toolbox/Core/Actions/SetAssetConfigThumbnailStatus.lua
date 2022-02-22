local Plugin = script.Parent.Parent.Parent

local Packages = Plugin.Packages
local Util = require(Packages.Framework).Util
local Action = Util.Action

-- Thumbnail can have only one thumbnail
return Action(script.Name, function(thumbnailStatus)
	return {
		thumbnailStatus = thumbnailStatus,
	}
end)
