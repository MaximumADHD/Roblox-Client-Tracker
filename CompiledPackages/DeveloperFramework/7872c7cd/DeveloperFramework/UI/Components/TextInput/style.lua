local Framework = script:FindFirstAncestor("UI").Parent

local StyleKey = require(Framework.Style.StyleKey)

local Util = require(Framework.Util)
local StyleModifier = require(Framework.Util.StyleModifier)
local deepCopy = Util.deepCopy

local UIFolderData = require(Framework.UI.Components.UIFolderData)
local Pane = require(UIFolderData.Pane.style)
local Image = require(Framework.UI.Components.Image)

local Dash = require(Framework.Parent.Dash)
local join = Dash.join

local pane = deepCopy(Pane)

local box = pane["&Box"]
local roundBox = pane["&RoundBox"]
local borderBox = pane["&BorderBox"]

local default = {
	BackgroundColor = StyleKey.InputFieldBackground,
	BorderColor = StyleKey.InputFieldBorder,
	BottomText = {
		Font = Enum.Font.SourceSans,
		TextColor = StyleKey.DimmedText,
		TextSize = 18,
		TextXAlignment = Enum.TextXAlignment.Left,
		TextYAlignment = Enum.TextYAlignment.Top,

		[StyleModifier.Error] = {
			TextColor = StyleKey.ErrorText,
		},
	},
	BottomTextSpacing = 6,
	HorizontalComponentSpacing = 8,
	VerticalComponentSpacing = 4,
	Padding = {
		Left = 8,
		Top = 1,
		Right = 8,
		Bottom = 1,
	},
	PlaceholderTextColor = StyleKey.DimmedText,
	Size = UDim2.new(1, 0, 0, 32),
	TextXAlignment = Enum.TextXAlignment.Left,

	[StyleModifier.Disabled] = {
		BackgroundColor = StyleKey.InputFieldBackgroundDisabled,
		BorderColor = StyleKey.InputFieldBorderDisabled,
		TextColor = StyleKey.DimmedText,
	},
}

local paneBorderBox = join(borderBox, {
	-- Add top and bottom padding to prevent full-height content
	-- from covering the 1 pixel border image.
	Padding = {
		Left = 8,
		Top = 1,
		Right = 8,
		Bottom = 1,
	},
	MultiLinePadding = {
		Left = 8,
		Top = 5,
		Right = 8,
		Bottom = 5,
	},
	[StyleModifier.Hover] = {
		BorderColor = StyleKey.InputFieldBorderHover,
	},
	[StyleModifier.Selected] = {
		BorderColor = StyleKey.InputFieldBorderSelected,
	},
	[StyleModifier.Error] = {
		BorderColor = StyleKey.ErrorText,
	},
	ErrorBorderColor = StyleKey.ErrorText,
})

local propertyCellError = {
	TextColor = StyleKey.ErrorText,
	TrailingComponent = Image,
	TrailingComponentProps = {
		Size = UDim2.fromOffset(13, 13),
		Style = {
			Color = StyleKey.ErrorText,
			Image = "rbxasset://textures/DeveloperFramework/StudioTheme/clear.png",
		},
	},
}

return join(default, {
	["&Box"] = box,
	["&BorderBox"] = paneBorderBox,
	["&PropertyCellError"] = propertyCellError,
	["&RoundBox"] = roundBox,
})
