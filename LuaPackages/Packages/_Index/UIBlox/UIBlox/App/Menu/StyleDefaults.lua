local Menu = script.Parent
local App = Menu.Parent
local UIBlox = App.Parent

local StyleTypes = require(UIBlox.App.Style.StyleTypes)

local getCellDefaultTokens = function(style: StyleTypes.AppStyle)
	assert(style.Tokens ~= nil, "Design token support is not enabled!")
	return {
		iconSize = style.Tokens.Component.MenuCell.Base.IconFrame.Size,
		selectedIconSize = style.Tokens.Component.MenuCell.Base.CheckFrame.Size,
		iconPaddingLeft = style.Tokens.Component.MenuCell.Base.Container.Spacing.Leading,
		textPadding = {
			left = style.Tokens.Component.MenuCell.Base.TextFrame.Spacing.Leading,
			right = style.Tokens.Component.MenuCell.Base.TextFrame.Spacing.Trailing,
		},
		fontStyle = {
			Font = style.Tokens.Component.MenuCell.Base.Text.Typography.Font,
			RelativeSize = style.Tokens.Component.MenuCell.Base.Text.Typography.FontSize / style.Font.BaseSize,
			RelativeMinSize = style.Tokens.Component.MenuCell.Base.Text.Typography.FontSize / style.Font.BaseSize,
		},
		dividerSize = style.Tokens.Component.MenuCell.Divider.Container.BorderWidth,
		selectedIconPaddingRight = style.Tokens.Component.MenuCell.Base.Container.Spacing.Trailing,
	}
end

local getBaseMenuDefaultTokens = function(style: StyleTypes.AppStyle)
	assert(style.Tokens ~= nil, "Design token support is not enabled!")
	return {
		elementHeight = style.Tokens.Component.MenuCell.Base.Container.Height,
		borderCornerRadius = style.Tokens.Component.BaseMenu.BorderRadius,
		background = {
			Color = style.Tokens.Component.BaseMenu.BackgroundColor.Color3,
			Transparency = style.Tokens.Component.BaseMenu.BackgroundColor.Transparency,
		},
	}
end

return {
	getBaseMenuDefaultTokens = getBaseMenuDefaultTokens,
	getCellDefaultTokens = getCellDefaultTokens,
}
