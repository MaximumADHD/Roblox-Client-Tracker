-- singleton
local Page = script.Parent.Parent

local ConstantColors = require(Page.Util.ConstantColors)

local FFlagRemoveStudioThemeFromPlugins = game:GetFastFlag("RemoveStudioThemeFromPlugins", false)

local Theme = {}

local getThemeData = nil
local isDarkTheme = nil

function Theme.getBackgroundColor(props)
	return getThemeData(props) and getThemeData(props).backgroundColor or ConstantColors.White
end

function Theme.getTitleTextColor(props)
	return getThemeData(props) and getThemeData(props).titledFrame.text or ConstantColors.TitleText
end

function Theme.getBodyTextColor(props)
	return isDarkTheme(props) and getThemeData(props).textBox.text or ConstantColors.BodyText
end

function Theme.getBodyTextInputColor(props)
	if props.PlayerChoice then
		return isDarkTheme(props) and getThemeData(props).textBox.text or ConstantColors.BodyText
	else
		return isDarkTheme(props) and getThemeData(props).textBox.text or ConstantColors.TitleText
	end
end

function Theme.getButtonPressedTextColor(props)
	return ConstantColors.White
end

function Theme.getButtonHoveredTextColor(props)
	return Theme.getTitleTextColor(props)
end

function Theme.getButtonTextColor(props)
	return Theme.getTitleTextColor(props)
end

function Theme.getButtonPressedImageColor(props)
	return ConstantColors.White
end

function Theme.getButtonHoveredImageColor(props)
	return isDarkTheme(props) and ConstantColors.DarkGrey2 or ConstantColors.White
end

function Theme.getButtonImageColor(props)
	return isDarkTheme(props) and ConstantColors.DarkGrey or ConstantColors.White
end

function Theme.getDividerColor(props)
	return getThemeData(props) and getThemeData(props).separator or ConstantColors.DefaultColor
end

function Theme.getBorderColor(props)
	return getThemeData(props) and getThemeData(props).separator or ConstantColors.DefaultColor
end
-- TODO: jbousellam - remove with FFlagRemoveStudioThemeFromPlugins
function Theme.getCheckboxBGColor()
	assert(not FFlagRemoveStudioThemeFromPlugins)
	return settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.InputFieldBackground)
end

function Theme.getRadioButtonTextColor(props)
	if FFlagRemoveStudioThemeFromPlugins then
		return if (getThemeData(props) and getThemeData(props).radioButton) then getThemeData(props).radioButton.title else nil
	else
		return (getThemeData(props) and getThemeData(props).radioButton) and getThemeData(props).radioButton.title
		or settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.BrightText)
	end
end

getThemeData = function(props)
	return props.ThemeData and props.ThemeData.theme
end

isDarkTheme = function(props)
	return getThemeData(props) and getThemeData(props).isDarkerTheme
end

return Theme