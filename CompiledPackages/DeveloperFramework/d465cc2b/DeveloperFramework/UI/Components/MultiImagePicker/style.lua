local Framework = script:FindFirstAncestor("UI").Parent

local Colors = require(Framework.Style.Colors)
local StyleKey = require(Framework.Style.StyleKey)

local DEFAULT_THUMBNAIL_WIDTH = 267
local DEFAULT_THUMBNAIL_HEIGHT = 150

return {
	-- General styling
	Colors = {
		Black = Colors.Black,
		Blue = Colors.Blue,
		Error = Color3.new(1, 0.266, 0.266),
		White = Colors.White,
	},

	DottedBorder = {
		Image = "rbxasset://textures/GameSettings/DottedBorder.png",
		SliceCenter = Rect.new(2, 2, 265, 148),
	},

	FontStyle = {
		Normal = {
			Font = Enum.Font.SourceSans,
			TextSize = 22,
			TextColor3 = StyleKey.MainText,
		},
		Smaller = {
			Font = Enum.Font.SourceSans,
			TextSize = 20,
			TextColor3 = StyleKey.MainText,
		},
	},

	Hyperlink = StyleKey.LinkText,

	Thumbnail = {
		Background = StyleKey.SubBackground2,
		Count = StyleKey.DimmedText,
		DefaultMaxCount = 10,
		DefaultSize = UDim2.new(0, DEFAULT_THUMBNAIL_WIDTH, 0, DEFAULT_THUMBNAIL_HEIGHT),
	},

	ModeratedImage = "rbxasset://textures/GameSettings/ModeratedAsset.jpg",
	VideoPlaceholder = "rbxasset://textures/GameSettings/placeholder.png",

	-- Component styling
	DeleteThumbnailDialog = {
		MinContentHeight = 1000,
		MinContentWidth = 300,
	},

	DragDestination = {
		Background = StyleKey.SubBackground,
		Border = StyleKey.CurrentMarkerSelected,
	},

	HoverBarButton = {
		RoundedBackgroundImage = "rbxasset://textures/StudioToolbox/RoundedBackground.png",
		RoundedFrameSlice = Rect.new(3, 3, 13, 13),
	},

	NewThumbnail = {
		Background = StyleKey.SubBackground,
		Border = StyleKey.SubBackground2,
		PlusColor = StyleKey.MainText,

		Plus = {
			Image = "rbxasset://textures/GameSettings/CenterPlus.png",
			RectOffset = Vector2.new(121, 63),
			RectSize = Vector2.new(24, 24),
		},
	},

	PreviewThumbnailDialog = {
		AltTextInputHeight = 50,
		ButtonPadding = UDim.new(0, 20),
		Height = 380,
		ImagePadding = 10,
		MaxAltTextLength = 1000,
		Size = UDim2.new(0, DEFAULT_THUMBNAIL_WIDTH * 2, 0, DEFAULT_THUMBNAIL_HEIGHT * 2),

		TooltipIcon = {
			PaddingX = 5,
			Size = 14,
			Image = "rbxasset://textures/GameSettings/MoreDetails.png",
			Color = StyleKey.SubText,
			HoverColor = StyleKey.MainTextHover,
		},
	},

	RoundArrowButton = {
		ButtonImage = "rbxasset://textures/GameSettings/RoundArrowButton.png",
		ButtonSize = UDim2.new(0, 48, 0, 48),
	},

	ThumbnailHoverBar = {
		Padding = UDim.new(0, 6),
		ZoomImage = "rbxasset://textures/GameSettings/zoom.png",
		DeleteImage = "rbxasset://textures/GameSettings/delete.png",
	},

	ThumbnailSet = {
		Padding = UDim2.new(0, 30, 0, 30),
	},
}
