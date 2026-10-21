local Menu = script.Parent
local App = Menu.Parent
local UIBlox = App.Parent

local StyleTypes = require(UIBlox.App.Style.StyleTypes)

local getCellDefaultTokens = function(style: StyleTypes.AppStyle)
	assert(style.Tokens ~= nil, "Design token support is not enabled!")
	return {
		iconSize = style.Tokens.Size.Size_800,
		selectedIconSize = style.Tokens.Size.Size_800,
		iconPaddingLeft = style.Tokens.Size.Size_300,
		textPadding = {
			left = style.Tokens.Size.Size_300,
			right = style.Tokens.Size.Size_300,
		},
		fontStyle = {
			Font = style.Tokens.Typography.TitleLarge.Font,
			RelativeSize = style.Tokens.Typography.TitleLarge.FontSize / style.Font.BaseSize,
			RelativeMinSize = style.Tokens.Typography.TitleLarge.FontSize / style.Font.BaseSize,
		},
		dividerSize = style.Tokens.Stroke.Standard,
		selectedIconPaddingRight = style.Tokens.Size.Size_300,
	}
end

local getBaseMenuDefaultTokens = function(style: StyleTypes.AppStyle)
	assert(style.Tokens ~= nil, "Design token support is not enabled!")
	return {
		elementHeight = style.Tokens.Size.Size_1400,
		borderCornerRadius = style.Tokens.Radius.Medium,
		background = {
			Color = style.Tokens.Color.Surface.Surface_300.Color3,
			Transparency = style.Tokens.Color.Surface.Surface_300.Transparency,
		},
	}
end

local getDropdownMenuCellDefaultTokens = function(style: StyleTypes.AppStyle)
	return {
		iconSize = style.Tokens.Size.Size_900,
		containerPadding = {
			left = style.Tokens.Size.Size_400,
			right = style.Tokens.Size.Size_600,
		},
		textFont = style.Tokens.Typography.TitleLarge,
		iconTextSpacing = style.Tokens.Size.Size_400,
		border = {
			cornerRadius = style.Tokens.Radius.Medium,
			size = style.Tokens.Stroke.Standard,
		},
	}
end

local getDropdownMenuDefaultTokens = function(style: StyleTypes.AppStyle)
	return {
		height = UDim.new(0, style.Tokens.Size.Size_1200),
		menuStateColors = {
			buttonDefault = {
				Color = style.Tokens.Color.ActionSubtle.Border.Color3,
				Transparency = style.Tokens.Color.ActionSubtle.Border.Transparency,
			},
			contentDefault = {
				Color = style.Tokens.Color.Content.Default.Color3,
				Transparency = style.Tokens.Color.Content.Default.Transparency,
			},
			alert = {
				Color = style.Tokens.Color.ActionAlert.Border.Color3,
				Transparency = style.Tokens.Color.ActionAlert.Border.Transparency,
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
