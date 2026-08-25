local Menu = script.Parent
local App = Menu.Parent
local UIBlox = App.Parent

local StyleTypes = require(UIBlox.App.Style.StyleTypes)
local UIBloxConfig = require(UIBlox.UIBloxConfig)

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

local getDropdownMenuCellDefaultTokens = function(style: StyleTypes.AppStyle)
	return {
		iconSize = if UIBloxConfig.deprecateComponentGlobalSemanticTokenUse
			then style.Tokens.Size.Size_900
			else style.Tokens.Global.Size_450,
		containerPadding = {
			left = if UIBloxConfig.deprecateComponentGlobalSemanticTokenUse
				then style.Tokens.Size.Size_400
				else style.Tokens.Global.Space_200,
			right = if UIBloxConfig.deprecateComponentGlobalSemanticTokenUse
				then style.Tokens.Size.Size_600
				else style.Tokens.Global.Space_300,
		},
		textFont = if UIBloxConfig.deprecateComponentGlobalSemanticTokenUse
			then style.Tokens.Typography.TitleLarge
			else style.Tokens.Semantic.Typography.Subheader,
		iconTextSpacing = if UIBloxConfig.deprecateComponentGlobalSemanticTokenUse
			then style.Tokens.Size.Size_400
			else style.Tokens.Global.Space_200,
		border = {
			cornerRadius = if UIBloxConfig.deprecateComponentGlobalSemanticTokenUse
				then style.Tokens.Radius.Medium
				else style.Tokens.Semantic.Radius.Medium,
			size = if UIBloxConfig.deprecateComponentGlobalSemanticTokenUse
				then style.Tokens.Stroke.Standard
				else style.Tokens.Global.Stroke_100,
		},
	}
end

local getDropdownMenuDefaultTokens = function(style: StyleTypes.AppStyle)
	return {
		height = UDim.new(
			0,
			if UIBloxConfig.deprecateComponentGlobalSemanticTokenUse
				then style.Tokens.Size.Size_1200
				else style.Tokens.Global.Size_600
		),
		menuStateColors = {
			buttonDefault = {
				Color = if UIBloxConfig.deprecateComponentGlobalSemanticTokenUse
					then style.Tokens.Color.ActionSubtle.Border.Color3
					else style.Tokens.Semantic.Color.Action.Secondary.Border.Color3,
				Transparency = if UIBloxConfig.deprecateComponentGlobalSemanticTokenUse
					then style.Tokens.Color.ActionSubtle.Border.Transparency
					else style.Tokens.Semantic.Color.Action.Secondary.Border.Transparency,
			},
			contentDefault = {
				Color = if UIBloxConfig.deprecateComponentGlobalSemanticTokenUse
					then style.Tokens.Color.Content.Default.Color3
					else style.Tokens.Semantic.Color.Text.Default.Color3,
				Transparency = if UIBloxConfig.deprecateComponentGlobalSemanticTokenUse
					then style.Tokens.Color.Content.Default.Transparency
					else style.Tokens.Semantic.Color.Text.Default.Transparency,
			},
			alert = {
				Color = if UIBloxConfig.deprecateComponentGlobalSemanticTokenUse
					then style.Tokens.Color.ActionAlert.Border.Color3
					else style.Tokens.Semantic.Color.Action.Alert.Border.Color3,
				Transparency = if UIBloxConfig.deprecateComponentGlobalSemanticTokenUse
					then style.Tokens.Color.ActionAlert.Border.Transparency
					else style.Tokens.Semantic.Color.Action.Alert.Border.Transparency,
			},
		},
	}
end

return {
	getBaseMenuDefaultTokens = getBaseMenuDefaultTokens,
	getCellDefaultTokens = getCellDefaultTokens,
	getDropdownMenuCellDefaultTokens = getDropdownMenuCellDefaultTokens,
	getDropdownMenuDefaultTokens = getDropdownMenuDefaultTokens,
}
