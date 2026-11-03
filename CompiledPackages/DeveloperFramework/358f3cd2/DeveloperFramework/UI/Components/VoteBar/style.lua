local Framework = script:FindFirstAncestor("UI").Parent

local RoundBox = require(Framework.UI.Components.RoundBox)
local Image = require(Framework.UI.Components.Image)
local Util = require(Framework.Util)
local Cryo = require(Framework.Parent.Cryo)
local deepCopy = Util.deepCopy
local StyleModifier = require(Framework.Util.StyleModifier)

local StyleKey = require(Framework.Style.StyleKey)

local UIFolderData = require(Framework.UI.Components.UIFolderData)
local RoundBoxStyle = require(UIFolderData.RoundBox.style)

local Votes = require(UIFolderData.Votes.style)

local roundBox = deepCopy(RoundBoxStyle)
local votes = deepCopy(Votes)

local function buttonStyle(_image, selectedColor, imageRotation)
	local base = {
		Size = UDim2.fromOffset(28, 28),
		Foreground = Image,
		ThumbStyle = {
			Size = UDim2.new(0, 12, 0, 15),
			AnchorPoint = Vector2.new(0.5, 0.5),
			Position = UDim2.new(0.5, 0, 0.5, 0),
			Rotation = imageRotation,
			BackgroundTransparency = 1,
			Image = "rbxasset://textures/DeveloperFramework/Votes/rating_up_white.png",
		},
		Background = RoundBox,
		BackgroundStyle = Cryo.Dictionary.join(roundBox, {
			Color = StyleKey.ButtonDisabled,
		}),

		[StyleModifier.Selected] = {
			BackgroundStyle = Cryo.Dictionary.join(roundBox, {
				Color = selectedColor,
			}),
		},
	}

	return Cryo.Dictionary.join(base, {
		CanVote = Cryo.Dictionary.join(base, {
			BackgroundStyle = Cryo.Dictionary.join(roundBox, {
				Color = StyleKey.ImageButtonBackground,
			}),
			[StyleModifier.Hover] = {
				BackgroundStyle = Cryo.Dictionary.join(roundBox, {
					Color = StyleKey.ImageButtonHover,
				}),
			},
		}),
	})
end

return {
	Background = RoundBox,
	BackgroundStyle = Cryo.Dictionary.join(roundBox, {
		Color = StyleKey.SubBackground,
		BorderTransparency = 1,
	}),
	Padding = {
		Top = 0,
		Right = 10,
		Left = 10,
		Bottom = 0,
	},
	Size = UDim2.new(1, 0, 0, 36),

	Buttons = {
		VoteUp = buttonStyle(
			"rbxasset://textures/DeveloperFramework/Votes/rating_up_white.png",
			StyleKey.SuccessMain,
			0
		),
		VoteDown = buttonStyle(
			"rbxasset://textures/DeveloperFramework/Votes/rating_up_white.png",
			StyleKey.ErrorMain,
			180
		),
	},

	VoteCount = {
		Font = Enum.Font.SourceSans,
		TextColor = StyleKey.MainText,
		TextSize = 14,
	},

	Votes = Cryo.Dictionary.join(votes, {
		Text = Cryo.Dictionary.join(votes.Text, {
			TextSize = 18,
		}),
	}),
}
