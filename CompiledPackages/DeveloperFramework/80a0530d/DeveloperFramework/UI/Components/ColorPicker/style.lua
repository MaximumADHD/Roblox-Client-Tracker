local Framework = script:FindFirstAncestor("UI").Parent

local StyleKey = require(Framework.Style.StyleKey)

export type Style = {
	Weight: number,
	Background: Color3,
}

return {
	Size = UDim2.fromScale(1, 1),
	Padding = 10,
	Spacing = 16,
	BodySize = UDim2.new(1, 0, 1, -32),
	BodySpacing = 8,
	PickerSize = UDim2.new(0.5, 0, 1, 0),

	ColorPropertiesPanel = {
		Size = UDim2.new(0, 104, 0, 96),
		Spacing = 7,
		TextInputSize = UDim2.new(1, 0, 0, 24),
		ColorPreviewSize = UDim2.new(1, 0, 0, 46),
		TextSize = 18,
		TextColor = StyleKey.DimmedText,

		ColorPreviewPaneStyle = {
			Background = StyleKey.MainBackground,
			Image = "rbxasset://textures/StudioToolbox/RoundedBackground.png",
			SliceCenter = Rect.new(3, 3, 13, 13),
			Border = {
				Background = StyleKey.InputFieldBorder,
				Image = "rbxasset://textures/StudioToolbox/RoundedBorder.png",
				SliceCenter = Rect.new(3, 3, 13, 13),
			},
		},
	},

	ColorPickerTopControls = {
		Size = UDim2.new(1, 0, 0, 24),
		Spacing = 5,
		TitleTextSize = UDim2.new(1, -48, 0, 24),
		ColorPaneSize = UDim2.new(1, 0, 0, 26),
		ColorPaneSpacing = 10,
		ColorPanePadding = 2,
		ColorPreviewSize = UDim2.new(0.5, 2, 0, 24),
		PreviewTitleSize = UDim2.new(0, 104, 0, 24),
	},

	ColorValueSlider = {
		Size = UDim2.new(1, -4, 0, 25),
		Black = Color3.fromRGB(0, 0, 0),
		White = Color3.fromRGB(1, 1, 1),
		GradientImage = "rbxasset://textures/TagEditor/lineargradient.png",
		PositionIndicatorSize = UDim2.new(0, 8, 0, 5),
		PositionIndicatorAnchor = Vector2.new(0.5, 0),
		PositionIndicatorImage = "rbxasset://textures/TagEditor/trianglesmall.png",
	},

	HueSaturationPicker = {
		Size = UDim2.new(1, -4, 1, -50),
		Black = Color3.fromRGB(1, 1, 1),
		GradientImage = "rbxasset://textures/TagEditor/huesatgradient.png",
		PositionIndicatorSize = UDim2.new(0, 8, 0, 5),
		PositionIndicatorAnchor = Vector2.new(0.5, 1),
		PositionIndicatorImage = "rbxasset://textures/TagEditor/trianglesmall.png",
	},
}
