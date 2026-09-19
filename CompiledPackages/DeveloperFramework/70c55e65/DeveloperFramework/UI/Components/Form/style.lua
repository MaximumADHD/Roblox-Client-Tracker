local Framework = script:FindFirstAncestor("UI").Parent

local StyleKey = require(Framework.Style.StyleKey)
local StyleModifier = require(Framework.Util.StyleModifier)

return {
	FormItem = {
		Spacing = 6,
		StatusIconSize = 20,
		HelpIconSize = 16,
		DepthPadding = 10,
		WithChildrenPadding = 10,
		Padding = 28,
		StatusIconError = "rbxasset://textures/StudioSharedUI/alert_error@2x.png",
		StatusIconWarning = "rbxasset://textures/StudioSharedUI/alert_warning@2x.png",
		HelpIcon = "rbxasset://textures/StudioSharedUI/Help.png",
		IconColor = StyleKey.Icon,
		Arrow = {
			Color = StyleKey.MainText,
			Image = "rbxasset://textures/StudioSharedUI/arrowSpritesheet.png",
			ImageRectOffset = Vector2.new(12, 0),
			ImageRectSize = Vector2.new(12, 12),
			Size = UDim2.fromOffset(12, 12),
			[StyleModifier.Selected] = {
				ImageRectOffset = Vector2.new(24, 0),
			},
		},
		Font = Enum.Font.SourceSans,
		FontSize = 18,
	},
}
