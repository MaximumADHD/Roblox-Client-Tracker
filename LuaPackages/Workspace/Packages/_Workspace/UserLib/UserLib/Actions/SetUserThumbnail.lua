local UserLib = script:FindFirstAncestor("UserLib")
local Packages = UserLib.Parent

local Action = require(Packages.Rodux).makeActionCreator

return Action(script.Name, function(userId, image, thumbnailType, thumbnailSize)
	return {
		userId = userId,
		image = image,
		thumbnailType = thumbnailType,
		thumbnailSize = thumbnailSize,
	}
end)
