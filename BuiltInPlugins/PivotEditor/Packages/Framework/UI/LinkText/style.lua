local Framework = script.Parent.Parent.Parent

local StyleKey = require(Framework.Style.StyleKey)

local Util = require(Framework.Util)
local Style = Util.Style
local FlagsList = Util.Flags.new({
	FFlagRefactorDevFrameworkTheme = {"RefactorDevFrameworkTheme"},
})

local StudioFrameworkStyles = Framework.StudioUI.StudioFrameworkStyles
local Common = require(StudioFrameworkStyles.Common)

if FlagsList:get("FFlagRefactorDevFrameworkTheme") then
	return {
		TextColor = StyleKey.LinkText,
	}
else
	return function(theme, getColor)
		local common = Common(theme, getColor)

		local Default = Style.extend(common.MainText, {
			TextColor = theme:GetColor("LinkText"),
		})

		return {
			Default = Default,
		}
	end
end