local Framework = script:FindFirstAncestor("UI").Parent

local StyleKey = require(Framework.Style.StyleKey)

local Image = require(Framework.UI.Components.Image)
local Box = require(Framework.UI.Components.Box)

local deepCopy = require(Framework.Util.deepCopy)
local Cryo = require(Framework.Parent.Cryo)

local UIFolderData = require(Framework.UI.Components.UIFolderData)
local RoundBox = require(UIFolderData.RoundBox.style)
local Button = require(UIFolderData.DEPRECATED_Button.style)

local roundBox = deepCopy(RoundBox)
local button = deepCopy(Button)

return {
	BackgroundColor = StyleKey.MainBackground,
	BackgroundStyle = roundBox,

	CloseButton = {
		Position = UDim2.new(1, 0, 0, 0),
		AnchorPoint = Vector2.new(0, 1),

		Image = "rbxasset://textures/DeveloperFramework/AssetPreview/close_button.png",
		Size = UDim2.fromOffset(28, 28),
	},

	ScrollingFrame = {
		ElementPadding = 10,
		Padding = {
			PaddingTop = UDim.new(0, 5),
			PaddingRight = UDim.new(0, 10),
			PaddingBottom = UDim.new(0, 25),
			PaddingLeft = UDim.new(0, 15),
		},
		AssetHeader = {
			Spacing = 5,
			VoteSpacing = 4,
		},
		AssetName = {
			Font = Enum.Font.SourceSansBold,
			TextColor = StyleKey.MainText,
			TextSize = 24,
			TextXAlignment = Enum.TextXAlignment.Left,
		},
		AssetDescription = {
			Font = Enum.Font.SourceSans,
			TextColor = StyleKey.MainText,
			TextSize = 18,
			TextXAlignment = Enum.TextXAlignment.Left,
		},
		CreatorName = {
			Font = Enum.Font.SourceSans,
			TextColor = StyleKey.MainText,
			TextSize = 18,
			TextXAlignment = Enum.TextXAlignment.Left,
		},
		FlagAsset = {
			Image = "rbxasset://textures/DeveloperFramework/AssetPreview/flag_rounded.png",
			ImageColor3 = StyleKey.Icon,
			Size = UDim2.fromOffset(24, 24),
		},
		InfoRow = {
			CodeSummary = {
				BackgroundColor = StyleKey.BackgroundPaper,
				Padding = 12,

				DisclaimerText = {
					Font = Enum.Font.SourceSans,
					TextColor = StyleKey.DimmedText,
					TextSize = 16,
					TextXAlignment = Enum.TextXAlignment.Left,
				},
			},
			Text = {
				Font = Enum.Font.SourceSans,
				TextColor = StyleKey.MainText,
				TextSize = 18,
			},
			LeftText = {
				Font = Enum.Font.SourceSans,
				TextColor = StyleKey.MainText,
				TextSize = 18,
				TextTransparency = 0.5,
				TextXAlignment = Enum.TextXAlignment.Left,
			},
			RightText = {
				Font = Enum.Font.SourceSans,
				TextColor = StyleKey.MainText,
				TextSize = 18,
				TextTruncate = Enum.TextTruncate.AtEnd,
				TextXAlignment = Enum.TextXAlignment.Right,
			},
		},
		SuggestionsSection = {
			Padding = {
				Top = 5,
				Bottom = 20,
			},
		},
	},

	-- The background of this needs to extend to the edges of the parent, so we
	-- override the padding on the ScrollingFrame here with negative margins.
	AssetRenderMargin = {
		Top = 0,
		Right = -10,
		Bottom = 0,
		Left = -15,
	},

	ButtonArea = {
		ActionButtonHeight = 30,

		ElementPadding = UDim.new(0, 10),
		Padding = {
			PaddingTop = UDim.new(0, 12),
			PaddingRight = UDim.new(0, 10),
			PaddingBottom = UDim.new(0, 15),
			PaddingLeft = UDim.new(0, 12),
		},
		Size = UDim2.new(1, 0, 0, 52),

		Context = {
			Size = UDim2.fromOffset(28, 28),
			Background = Box,
			BackgroundStyle = {
				Color = StyleKey.ImageButtonBackground,
				Transparency = 0,
			},

			Foreground = Image,
			ForegroundStyle = {
				AnchorPoint = Vector2.new(0.5, 0.5),
				Image = "rbxasset://textures/DeveloperFramework/AssetPreview/more.png",
				Position = UDim2.new(0.5, 0, 0.5, 0),
				Size = UDim2.new(0.6, 0, 0.6, 0),
				ScaleType = Enum.ScaleType.Stretch,
			},
		},

		Action = "RoundPrimary",
		ActionBuy = Cryo.Dictionary.join(button["&RoundPrimary"], {
			Foreground = Image,
			ForegroundStyle = {
				AnchorPoint = Vector2.new(0.5, 0.5),
				Image = "rbxasset://textures/ui/common/robux_small.png",
				Position = UDim2.new(0.05, 0, 0.5, 0),
				Size = UDim2.new(0, 16, 0.6, 0),
				ScaleType = Enum.ScaleType.Fit,
			},
			TextSize = 18,
		}),
		ActionSubText = {
			SpacingTop = 4,
			TextSize = 14,
			TextColor = StyleKey.ErrorText,
		},
	},
}
