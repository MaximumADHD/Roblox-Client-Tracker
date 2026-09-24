local Framework = script:FindFirstAncestor("UI").Parent

local StyleKey = require(Framework.Style.StyleKey)

local width = 12
local height = 15

return {
	Size = UDim2.new(1, 0, 0, height),

	Text = {
		Font = Enum.Font.SourceSans,
		TextColor = StyleKey.MainText,
		TextSize = 18,
	},

	VoteCount = {
		Font = Enum.Font.SourceSans,
		TextColor = StyleKey.SubText,
		TextSize = 14,
	},

	GoodRatingColor = StyleKey.TextSuccess,
	OkayRatingColor = StyleKey.TextWarning,
	PoorRatingColor = StyleKey.TextError,

	ThumbUp = {
		Colors = {
			Gray = StyleKey.SecondaryContrast,
			Green = StyleKey.SuccessMain,
			Red = StyleKey.ErrorMain,
			Yellow = StyleKey.WarningMain,
		},
		Icon = "rbxasset://textures/DeveloperFramework/Votes/rating_up_white.png",
	},

	Icon = {
		Image = "rbxasset://textures/DeveloperFramework/Votes/rating_small.png",
		Size = UDim2.fromOffset(width, height),
		AnchorPoint = Vector2.new(0.5, 0.5),
		Position = UDim2.new(0.5, 0, 0.5, 0),
		BackgroundTransparency = 1,
	},
}
