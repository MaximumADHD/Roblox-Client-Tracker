local Colors = require(script.Parent.Colors)
local TopBarConstants = require(script.Parent.Parent.TopBar.Constants)

local WideLandscapeView = {
	ContainerBackgroundTransparency = 0,
	ContainerBackgroundColor = Colors.Carbon,
	UseContainerAspectRatio = false,
	ContainerAspectRatio = nil,
	MaxAssetCardsPerRow = 4,
	ContainerSize = function(scale: number)
			return UDim2.new(1, 0, 1, -TopBarConstants.TopBarHeight * scale)
		end 
,
	ContainerAnchorPoint = Vector2.new(0.5, 0),
	ContainerPosition = function(scale: number)
			return UDim2.new(0.5, 0, 0, TopBarConstants.TopBarHeight * scale)
		end
,
	AvatarHeadShotSize = 48,
	TopSizeY = 50,
	PlayerViewportSize = UDim2.new(0.33, 0, 1, -42),
	AssetListSize = UDim2.new(0.67, 0, 1, -42),
	AssetListPosition = UDim2.new(0.33, 0, 0, 42),
	CloseButtonPosition = UDim2.new(0, 6, 0, -20),
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
	BorderPaddingSize = 20,
	AssetTextMaxSize = 14,
}

setmetatable(WideLandscapeView, {
	__newindex = function(t, key, index) end,
	__index = function(t, index)
		error("WideLandscapeView table has no value: " .. tostring(index))
	end,
})

return WideLandscapeView
