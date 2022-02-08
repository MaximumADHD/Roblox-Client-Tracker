local Framework = script.Parent.Parent.Parent

local StyleKey = require(Framework.Style.StyleKey)

local Util = require(Framework.Util)
local Style = Util.Style
local THEME_REFACTOR = Util.RefactorFlags.THEME_REFACTOR

local StudioFrameworkStyles = Framework.StudioUI.StudioFrameworkStyles
local Common = require(StudioFrameworkStyles.Common)

local FFlagRemoveUILibraryPartialHyperlink = game:GetFastFlag("RemoveUILibraryPartialHyperlink")

if THEME_REFACTOR then
	return {
		Font = Enum.Font.SourceSans,
		TextSize = 18,
		TextColor = StyleKey.LinkText,

		["&Body"] = if FFlagRemoveUILibraryPartialHyperlink then {
			TextSize = 14,
		} else nil,
	}
else
	return function(theme, getColor)
		local common = Common(theme, getColor)

		local Default = Style.extend(common.MainText, {
			TextColor = theme:GetColor("LinkText"),
		})

		local Body = if FFlagRemoveUILibraryPartialHyperlink then Style.extend(Default, {
			TextSize = 14,
		}) else nil

		return {
			Default = Default,
			Body = Body,
		}
	end
end
