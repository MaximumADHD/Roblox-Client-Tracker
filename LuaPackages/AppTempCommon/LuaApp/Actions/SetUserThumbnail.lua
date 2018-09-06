local CorePackages = game:GetService("CorePackages")
local Common = CorePackages.AppTempCommon.Common

local Action = require(Common.Action)

return Action(script.Name, function(userId, image, thumbnailType, thumbnailSize)
	return {
		userId = userId,
		image = image,
		thumbnailType = thumbnailType,
		thumbnailSize = thumbnailSize,
	}
end)