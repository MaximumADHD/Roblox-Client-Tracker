local Colors = require(script.Parent.Colors)

local WideView = {
	UseContainerAspectRatio = true,
	ContainerBackgroundTransparency = 0.3,
	ContainerBackgroundColor = Colors.Black,
	ContainerAspectRatio = 0.9,
	MaxAssetCardsPerRow = 4,
	ContainerSize = UDim2.new(0.7, 0, 0.95, -36),
	ContainerAnchorPoint = Vector2.new(0.5, 0.5),
	ContainerPosition = UDim2.new(0.5, 0, 0.5, 36),
	AvatarHeadShotSize = 48,
	TopSizeY = 50,
	ClipsDescendants = true,
	PlayerViewportSize = UDim2.new(0.33, 0, 1, -42),
	AssetListSize = UDim2.new(0.67, 0, 1, -42),
	AssetListPosition = UDim2.new(0.33, 0, 0, 42),
	CloseButtonPosition = UDim2.new(0, 6, 0, -30),
	DetailsThumbnailFrameSize = UDim2.new(0.4, 0, 1, -30),
	DetailsThumbnailFramePosition = UDim2.new(0, 25, 0, 30),
	DetailsThumbnailAnchorPoint = Vector2.new(0.5, 0),
	DetailsThumbnailPosition = UDim2.new(0.5, 0, 0, 0),
	DetailsThumbnailARDominantAxis = Enum.DominantAxis.Width,
	DetailsFramePosition = UDim2.new(0.4, 30, 0, 30),
	DetailsFrameSize = UDim2.new(0.6, -30, 1, -30),
	AssetCardMaxSizeX = 190,
	AssetCardMaxSizeY = 279,
	DefaultCameraOffset = CFrame.new(0, 2, -5),
	ToolOffset = CFrame.new(0, 2, -8),
	TryOnPosition = UDim2.new(0, 25, 0, 30),
	TryOnSize = UDim2.new(0.4, 0, 1, -30),
	BorderPaddingSize = 40,
	AssetTextMaxSize = 18,
}

setmetatable(WideView,
	{
		__newindex = function(t, key, index)
		end,
		__index = function(t, index)
			error("WideView table has no value: " .. tostring(index))
		end
	}
)

return WideView