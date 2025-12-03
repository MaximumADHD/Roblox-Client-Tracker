local CorePackages = game:GetService("CorePackages")

local Colors = require(script.Parent.Colors)
local TopBarConstants = require(script.Parent.Parent.TopBar.Constants)

local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local FFlagTopBarStyleUseDisplayUIScale = SharedFlags.FFlagTopBarStyleUseDisplayUIScale

local CompactView = {
	ContainerBackgroundTransparency = 0,
	ContainerBackgroundColor = Colors.Carbon,
	UseContainerAspectRatio = false,
	ContainerAspectRatio = nil,
	MaxAssetCardsPerRow = 3,
	ContainerSize = if FFlagTopBarStyleUseDisplayUIScale
		then function(scale: number)
			return UDim2.new(1, 0, 1, -TopBarConstants.TopBarHeight * scale)
		end 
		else UDim2.new(1, 0, 1, -TopBarConstants.TopBarHeight),
	ContainerAnchorPoint = Vector2.new(0.5, 0),
	ContainerPosition = if FFlagTopBarStyleUseDisplayUIScale
		then function(scale: number)
			return UDim2.new(0.5, 0, 0, TopBarConstants.TopBarHeight * scale)
		end
		else UDim2.new(0.5, 0, 0, TopBarConstants.TopBarHeight),
	AvatarHeadShotSize = 48,
	TopSizeY = 90,
	ClipsDescendants = false,
	PlayerViewportSize = UDim2.new(1, 0, 0.41, 0),
	AssetListSize = UDim2.new(1, 0, 0.59, -42),
	AssetListPosition = UDim2.new(0, 0, 0.41, 42),
	CloseButtonPosition = UDim2.new(0, 6, 0, -20),
	DetailsThumbnailFrameSize = UDim2.new(1, 0, 0.4, 0),
	DetailsThumbnailFramePosition = UDim2.new(0, 0, 0, 15),
	DetailsThumbnailAnchorPoint = Vector2.new(0.5, 0.5),
	DetailsThumbnailPosition = UDim2.new(0.5, 0, 0.5, 0),
	DetailsThumbnailARDominantAxis = Enum.DominantAxis.Height,
	DetailsFramePosition = UDim2.new(0, 15, 0.4, 15),
	DetailsFrameSize = UDim2.new(1, -30, 0.6, -30),
	AssetCardMaxSizeX = 108,
	AssetCardMaxSizeY = 157,
	DefaultCameraOffset = CFrame.new(0, 2, -5),
	ToolOffset = CFrame.new(0, 2, -8),
	TryOnPosition = UDim2.new(0, 0, 0, 15),
	TryOnSize = UDim2.new(1, 0, 0.4, 0),
	BorderPaddingSize = 20,
	AssetTextMaxSize = 14,
}

setmetatable(CompactView, {
	__newindex = function(t, key, index) end,
	__index = function(t, index)
		error("CompactView table has no value: " .. tostring(index))
	end,
})

return CompactView
