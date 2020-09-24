local Framework = script.Parent.Parent.Parent

local StyleKey = require(Framework.Style.StyleKey)

local StudioFrameworkStyles = Framework.StudioUI.StudioFrameworkStyles
local Common = require(StudioFrameworkStyles.Common)

local Util = require(Framework.Util)
local Style = Util.Style
local FlagsList = Util.Flags.new({
	FFlagRefactorDevFrameworkTheme = {"RefactorDevFrameworkTheme"},
})

if FlagsList:get("FFlagRefactorDevFrameworkTheme") then
	return {
		Color = StyleKey.MainBackground,
		Transparency = 0,
		BorderSize = 0,
	}
else
	return function(theme, getColor)
		local common = Common(theme, getColor)

		local Default = Style.extend(common.Background, {
			Transparency = 0,
			BorderSize = 0,
		})

		return {
			Default = Default,
		}
	end
end