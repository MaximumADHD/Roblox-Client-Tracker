local Framework = script:FindFirstAncestor("UI").Parent

local FrameworkStyle = Framework.Style
local StyleKey = require(FrameworkStyle.StyleKey)

local foundationDark = require(Framework.Style.Themes.FoundationDark)

local Util = require(Framework.Util)
local StyleModifier = require(Framework.Util.StyleModifier)
local deepCopy = Util.deepCopy

local UIFolderData = require(Framework.UI.Components.UIFolderData)
local Pane = require(UIFolderData.Pane.style)

local getFFlagDevFrameworkAdjustTextFontSize = require(Framework.SharedFlags.getFFlagDevFrameworkAdjustTextFontSize)

local Dash = require(Framework.Parent.Dash)
local join = Dash.join

local pane = deepCopy(Pane)

local box = pane["&Box"]
local roundBox = pane["&RoundBox"]
local borderBox = pane["&BorderBox"]

local foundationDarkTheme = if getFFlagDevFrameworkAdjustTextFontSize() then foundationDark(1) else nil :: never

local default = {
	Content = {
		Padding = {
			Left = 18,
			Top = 10,
			Right = 18,
			Bottom = 10,
		},
		Spacing = 10,
	},
	Header = {
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
		HorizontalAlignment = Enum.HorizontalAlignment.Left,
		Padding = {
			Left = 10,
			Right = 10,
		},
		Size = UDim2.new(1, 0, 0, 32),
		Spacing = 6,
		Text = {
			Font = Enum.Font.SourceSansBold,
			TextColor = StyleKey.TitlebarText,
			TextSize = 18,
		},
		VerticalAlignment = Enum.VerticalAlignment.Center,
	},
}

return join(default, {
	["&Box"] = box,
	["&BorderBox"] = borderBox,
	["&RoundBox"] = roundBox,
	["&Section"] = join(box, {
		Header = join(default.Header, {
			Background = StyleKey.Titlebar,
		}),
	}),
	["&SectionTitleSmall"] = if getFFlagDevFrameworkAdjustTextFontSize()
		then join(box, {
			Header = join(default.Header, {
				Background = StyleKey.Titlebar,
				Text = {
					Font = Enum.Font.BuilderSansBold,
					TextColor = StyleKey.TitlebarText,
					TextSize = foundationDarkTheme.Typography.TitleSmall.FontSize,
				},
			}),
		})
		else nil,
	["&Title"] = join(box, {
		Header = join(default.Header, {
			Background = StyleKey.Titlebar,
			Text = {
				Font = Enum.Font.SourceSansBold,
				TextColor = StyleKey.TitlebarText,
				TextSize = 32,
			},
		}),
	}),
})
