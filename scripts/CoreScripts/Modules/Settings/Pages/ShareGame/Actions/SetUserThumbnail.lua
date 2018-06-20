local Modules = game:GetService("CoreGui").RobloxGui.Modules
local ShareGame = Modules.Settings.Pages.ShareGame
local Action = require(ShareGame.Action)

return Action(script.Name, function(userId, image, thumbnailType, thumbnailSize)
	return {
		userId = userId,
		image = image,
		thumbnailType = thumbnailType,
		thumbnailSize = thumbnailSize,
	}
end)