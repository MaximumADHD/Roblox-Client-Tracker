--[[
	Theme helper functions
]]

local Constants = require(script.Parent.Constants)

local getColor = nil

local Theme = {}

function Theme.isDarkerTheme()
	-- Assume "darker" theme if the average main background colour is darker
	local mainColour = Theme.getMainBackgroundColor()
	return (mainColour.r + mainColour.g + mainColour.b) / 3 < 0.5
end

function Theme.getTitleTextColor()
	return getColor(Enum.StudioStyleGuideColor.SubText)
end

function Theme.getMainTextColor()
	return getColor(Enum.StudioStyleGuideColor.MainText)
end

function Theme.getTextDescriptionColor()
	return getColor(Enum.StudioStyleGuideColor.DimmedText)
end

function Theme.getBorderDefaultColor()
	return getColor(Enum.StudioStyleGuideColor.Border)
end

function Theme.getBorderHoverColor()
	return Theme.isDarkerTheme() and getColor(Enum.StudioStyleGuideColor.MainButton) or getColor(Enum.StudioStyleGuideColor.CurrentMarker)
end

function Theme.getMainBackgroundColor()
	return getColor(Enum.StudioStyleGuideColor.MainBackground)
end

function Theme.getBackgroundColor()
	return getColor(Enum.StudioStyleGuideColor.InputFieldBackground)
end

function Theme.getRadioButtonTextColor()
	return getColor(Enum.StudioStyleGuideColor.BrightText)
end

function Theme.getHyperlinkTextTextColor()
	return getColor(Enum.StudioStyleGuideColor.LinkText)
end

function Theme.getDisabledColor()
	return getColor(Enum.StudioStyleGuideColor.Tab)
end

function Theme.getScrollBarColor()
	return Theme.isDarkerTheme() and getColor(Enum.StudioStyleGuideColor.ScrollBar) or getColor(Enum.StudioStyleGuideColor.Border)
end

function Theme.getScrollBarBackgroundColor()
	return Theme.isDarkerTheme() and getColor(Enum.StudioStyleGuideColor.ScrollBarBackground) or Color3.fromRGB(245, 245, 245)
end

function Theme.getSeparatorColor()
	return Theme.isDarkerTheme() and getColor(Enum.StudioStyleGuideColor.Border) or getColor(Enum.StudioStyleGuideColor.Titlebar)
end

function Theme.getDefaultButtonProps()
	local BLUE_DISABLED = Color3.fromRGB(153, 218, 255)
	return {
		ButtonColor = Theme.isDarkerTheme() and getColor(Enum.StudioStyleGuideColor.MainButton) or getColor(Enum.StudioStyleGuideColor.CurrentMarker),
		ButtonHoverColor = getColor(Enum.StudioStyleGuideColor.LinkText),
		ButtonPressedColor = getColor(Enum.StudioStyleGuideColor.Button, Enum.StudioStyleGuideModifier.Pressed),
		ButtonDisabledColor = Theme.isDarkerTheme() and getColor(Enum.StudioStyleGuideColor.Button, Enum.StudioStyleGuideModifier.Disabled) or BLUE_DISABLED,
		TextColor = Color3.new(1, 1, 1),
		TextDisabledColor = Theme.isDarkerTheme() and Theme.getTextDescriptionColor() or Color3.new(1, 1, 1),
		BorderColor = getColor(Enum.StudioStyleGuideColor.Light),
	}
end

function Theme.getCancelButtonProps()
	return {
		ButtonColor = getColor(Enum.StudioStyleGuideColor.Button),
		ButtonHoverColor = getColor(Enum.StudioStyleGuideColor.Button, Enum.StudioStyleGuideModifier.Hover),
		ButtonPressedColor = getColor(Enum.StudioStyleGuideColor.Button, Enum.StudioStyleGuideModifier.Pressed),
		ButtonDisabledColor = getColor(Enum.StudioStyleGuideColor.Button, Enum.StudioStyleGuideModifier.Disabled),
		TextColor = getColor(Enum.StudioStyleGuideColor.MainText),
		TextDisabledColor = Theme.getTextDescriptionColor(),
		BorderColor = getColor(Enum.StudioStyleGuideColor.Border),
	}
end

function getColor(styleGuideColor, modifier)
	return settings().Studio.Theme:GetColor(styleGuideColor, modifier)
end

return Theme