local Framework = script:FindFirstAncestor("UI").Parent

local Image = require(Framework.UI.Components.Image)

local StyleModifier = require(Framework.Util.StyleModifier)
local StyleKey = require(Framework.Style.StyleKey)

local yellow = Color3.fromRGB(246, 183, 2)

local filled = {
	Foreground = Image,
	ForegroundStyle = {
		Color = yellow,
		Image = "rbxasset://textures/DeveloperFramework/Favorites/star_filled.png",
	},
}

return {
	ElementPadding = UDim.new(0, 5),
	Size = UDim2.new(1, 0, 0, 20),
	IconSize = UDim2.fromOffset(14, 14),

	Button = {
		Filled = filled,

		Unfilled = {
			Foreground = Image,
			ForegroundStyle = {
				Color = StyleKey.MainText,
				Image = "rbxasset://textures/DeveloperFramework/Favorites/star_stroke_white.png",
			},

			[StyleModifier.Hover] = {
				ForegroundStyle = {
					Color = yellow,
					Image = "rbxasset://textures/StudioToolbox/AssetPreview/star_filled.png",
				},
			},
		},
	},

	Spacing = 5,

	Text = {
		Font = Enum.Font.SourceSans,
		TextColor = StyleKey.MainText,
		TextSize = 18,
	},
}
