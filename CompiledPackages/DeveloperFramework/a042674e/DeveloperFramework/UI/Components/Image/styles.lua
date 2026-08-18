local Framework = script:FindFirstAncestor("UI").Parent
local rule = require(Framework.Styling.createStyleRule)

return rule(".Component-Image", {
	Size = UDim2.fromScale(1, 1),
	BackgroundTransparency = 1,
	BorderSizePixel = 1,
}, {
	rule(".Icon16", {
		Size = UDim2.fromOffset(16, 16),
	}),
	rule(".Primary", {
		ImageColor3 = "$TextPrimary",
	}),
	rule(".ArrowIcon", {
		Image = "rbxasset://textures/StudioToolbox/ArrowDownIconWhite.png",
		ImageColor3 = "$TextPrimary",
		Size = UDim2.fromOffset(12, 12),
	}),
	rule(".ErrorIcon", {
		Image = "rbxasset://textures/DeveloperFramework/StudioTheme/clear.png",
		ImageColor3 = "$TextError",
		Size = UDim2.fromOffset(16, 16),
	}),
})
