local Framework = script.Parent.Parent.Parent

local StyleKey = require(Framework.Style.StyleKey)

local Util = require(Framework.Util)
local Style = Util.Style
local THEME_REFACTOR = Util.RefactorFlags.THEME_REFACTOR

local StudioFrameworkStyles = Framework.StudioUI.StudioFrameworkStyles
local Common = require(StudioFrameworkStyles.Common)

local FFlagDevFrameworkAddUnobtrusiveLinkTextStyle = game:GetFastFlag("DevFrameworkAddUnobtrusiveLinkTextStyle")

if THEME_REFACTOR then
	return {
		Font = Enum.Font.SourceSans,
		TextSize = 18,
		TextColor = StyleKey.LinkText,

		["&Body"] = {
			TextSize = 14,
		},

		["&Unobtrusive"] = FFlagDevFrameworkAddUnobtrusiveLinkTextStyle and {
			ShowUnderline = false,
			TextColor = StyleKey.MainText,
			TextColorHovered = StyleKey.BrightText,
			TextSize = 14,
		} or nil,
	}
else
	return function(theme, getColor)
		local common = Common(theme, getColor)

		local Default = Style.extend(common.MainText, {
			TextColor = theme:GetColor("LinkText"),
		})

		local Body = Style.extend(Default, {
			TextSize = 14,
		})

		local Unobtrusive = FFlagDevFrameworkAddUnobtrusiveLinkTextStyle and Style.extend(Default, {
			ShowUnderline = false,
			TextColor = theme:GetColor("MainText"),
			TextColorHovered = theme:GetColor("BrightText"),
			TextSize = 14,
		}) or nil

		return {
			Default = Default,
			Body = Body,
			Unobtrusive = Unobtrusive,
		}
	end
end
