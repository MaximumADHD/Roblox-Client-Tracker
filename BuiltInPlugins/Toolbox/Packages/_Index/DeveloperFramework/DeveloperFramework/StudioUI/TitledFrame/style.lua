local Framework = script.Parent.Parent.Parent

local FFlagRemoveUILibraryTitledFrameRadioButtonSet = game:GetFastFlag("RemoveUILibraryTitledFrameRadioButtonSet")

local StudioFrameworkStyles = Framework.StudioUI.StudioFrameworkStyles
local Common = require(StudioFrameworkStyles.Common)

local StyleKey = require(Framework.Style.StyleKey)

local Util = require(Framework.Util)
local Style = Util.Style
local THEME_REFACTOR = Util.RefactorFlags.THEME_REFACTOR

if THEME_REFACTOR then
	return {
		Padding = 10,
		TextSize = 24,
		TextColor = StyleKey.TitlebarText,

		["&Subtitle"] = FFlagRemoveUILibraryTitledFrameRadioButtonSet and {
			TextColor = StyleKey.SubText,
			TextSize = 22,
		} or nil,
	}
else
	return function(theme, getColor)
		local common = Common(theme, getColor)

		local Default = Style.extend(common.MainText, {
			Padding = 10,
			TextSize = FFlagRemoveUILibraryTitledFrameRadioButtonSet and 24 or 22,
			TextColor = theme:GetColor("TitlebarText"),
		})

		local Subtitle = FFlagRemoveUILibraryTitledFrameRadioButtonSet and Style.extend(Default, {
			TextColor = theme:GetColor("SubText"),
			TextSize = 22,
		}) or nil

		return {
			Default = Default,
			Subtitle = Subtitle,
		}
	end
end
