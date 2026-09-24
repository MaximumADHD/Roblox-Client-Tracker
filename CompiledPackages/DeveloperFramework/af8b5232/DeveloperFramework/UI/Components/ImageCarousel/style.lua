local Framework = script:FindFirstAncestor("UI").Parent
local StyleKey = require(Framework.Style.StyleKey)

local BUTTON_OFFSET = 20

return {
	LeftButton = {
		Icon = "rbxasset://textures/DeveloperFramework/icon_backward.png",
		Padding = { Right = 3 },
		Position = UDim2.new(0, BUTTON_OFFSET, 0.5, 0),
		ShouldMoveRight = false,
		ZIndex = 2,
	},
	MoveButtons = {
		AnchorPoint = Vector2.new(0.5, 0.5),
		BackgroundColor = StyleKey.SecondaryMain,
		Color = StyleKey.SecondaryMuted,
		Cursor = "PointingHand",
		HoverColor = StyleKey.SecondaryStatesHoverBackground,
		IconScaleType = Enum.ScaleType.Fit,
		IconSize = 16,
		ImageTransparency = 0.5,
		Size = UDim2.new(0, 24, 0, 24),
	},
	RightButton = {
		Icon = "rbxasset://textures/DeveloperFramework/icon_forward.png",
		Padding = { Left = 3 },
		Position = UDim2.new(1, -BUTTON_OFFSET, 0.5, 0),
		ShouldMoveRight = true,
		ZIndex = 3,
	},
	ImageScaleType = Enum.ScaleType.Fit,
	Size = UDim2.new(1, 0, 1, 0),
}
