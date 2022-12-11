local Players = game:GetService("Players")

local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local React = require(VirtualEvents.Parent.React)

local function useHostAvatarImageId(
	hostId: number,
	thumbType: Enum.ThumbnailType?,
	thumbSize: Enum.ThumbnailSize?,
	mockPlayers: any?
)
	Players = if mockPlayers then mockPlayers else Players

	local imageId, setImageId = React.useState(nil)

	local actualThumbType = if thumbType then thumbType else Enum.ThumbnailType.HeadShot
	local actualThumbSize = if thumbSize then thumbSize else Enum.ThumbnailSize.Size420x420

	React.useEffect(function()
		task.spawn(function()
			local newImageId = Players:GetUserThumbnailAsync(hostId, actualThumbType, actualThumbSize)
			setImageId(newImageId)
		end)
	end, { hostId, actualThumbType, actualThumbSize } :: { any })

	return imageId
end

return useHostAvatarImageId
