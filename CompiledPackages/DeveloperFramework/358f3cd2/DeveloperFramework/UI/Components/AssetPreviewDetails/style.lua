local Framework = script:FindFirstAncestor("UI").Parent

local Util = require(Framework.Util)
local Cryo = require(Framework.Parent.Cryo)
local deepCopy = Util.deepCopy

local StyleKey = require(Framework.Style.StyleKey)

local UIFolderData = require(Framework.UI.Components.UIFolderData)

local Votes = require(UIFolderData.Votes.style)

local votes = deepCopy(Votes)

local ICON_SIZE = 12

return {
	BackgroundColor = StyleKey.SubBackground,
	LeftWidthScale = 0.6,
	MinBreakpointWidth = 200,
	Padding = 15,
	Size = UDim2.new(1, 0, 0, 36),
	VoteSpacingHorizontal = 10,
	VoteSpacingVertical = 3,

	InfoRow = {
		DescriptionText = {
			Font = Enum.Font.SourceSans,
			TextColor = StyleKey.TextSecondary,
			TextSize = 14,
		},

		DescriptionSpacing = 2,
		ElementPadding = 4,

		TitleText = {
			Font = Enum.Font.SourceSans,
			TextColor = StyleKey.BrightText,
			TextSize = 18,
			TextXAlignment = Enum.TextXAlignment.Left,
		},
	},

	AssetHeader = {
		Spacing = 5,
		VoteSpacing = 4,
	},

	PackageIcon = {
		Image = "rbxasset://textures/DeveloperFramework/AssetPreview/package.png",
		Color = StyleKey.Icon,
		Size = UDim2.fromOffset(ICON_SIZE, ICON_SIZE),
	},

	ScriptArea = {
		ScriptIcon = {
			Image = "rbxasset://textures/StudioToolbox/script.png",
			Size = UDim2.fromOffset(ICON_SIZE, ICON_SIZE),
		},

		ScriptInfoIcon = {
			Image = "rbxasset://textures/StudioToolbox/AssetPreview/info.png",
			Size = UDim2.fromOffset(ICON_SIZE, ICON_SIZE),
		},
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
