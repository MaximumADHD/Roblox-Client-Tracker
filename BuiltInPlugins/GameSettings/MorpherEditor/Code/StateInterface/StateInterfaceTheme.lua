-- singleton

local paths = require(script.Parent.Parent.Paths)

local Theme = {}

local getThemeData = nil
local isDarkTheme = nil

function Theme.getBackgroundColor(props)
	return getThemeData(props) and getThemeData(props).backgroundColor or paths.ConstantColors.White
end

function Theme.getTitleTextColor(props)
	return getThemeData(props) and getThemeData(props).titledFrame.text or paths.ConstantColors.TitleText
end

function Theme.getBodyTextColor(props)
	return isDarkTheme(props) and getThemeData(props).textBox.text or paths.ConstantColors.BodyText
end

function Theme.getBodyTextInputColor(props)
	if props.PlayerChoice then
		return isDarkTheme(props) and getThemeData(props).textBox.text or paths.ConstantColors.BodyText
	else
		return isDarkTheme(props) and getThemeData(props).textBox.text or paths.ConstantColors.TitleText
	end
end

function Theme.getButtonPressedTextColor(props)
	return paths.ConstantColors.White
end

function Theme.getButtonHoveredTextColor(props)
	return Theme.getTitleTextColor(props)
end

function Theme.getButtonTextColor(props)
	return Theme.getTitleTextColor(props)
end

function Theme.getButtonPressedImageColor(props)
	return paths.ConstantColors.White
end

function Theme.getButtonHoveredImageColor(props)
	return isDarkTheme(props) and paths.ConstantColors.DarkGrey2 or paths.ConstantColors.White
end

function Theme.getButtonImageColor(props)
	return isDarkTheme(props) and paths.ConstantColors.DarkGrey or paths.ConstantColors.White
end

function Theme.getDividerColor(props)
	return getThemeData(props) and getThemeData(props).separator or paths.ConstantColors.DefaultColor
end

function Theme.getBorderColor(props)
	return getThemeData(props) and getThemeData(props).separator or paths.ConstantColors.DefaultColor
end

function Theme.getCheckboxBGColor()
	return settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.InputFieldBackground)
end

function Theme.getRadioButtonTextColor(props)
	return (getThemeData(props) and getThemeData(props).radioButton) and getThemeData(props).radioButton.title or  settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.BrightText)
end

getThemeData = function(props)
	return props.ThemeData and props.ThemeData.theme and props.ThemeData.theme.PluginTheme
end

isDarkTheme = function(props)
	return getThemeData(props) and getThemeData(props).isDarkerTheme
end

return Theme