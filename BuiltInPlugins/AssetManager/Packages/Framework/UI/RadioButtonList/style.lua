local Framework = script.Parent.Parent.Parent

local Util = require(Framework.Util)
local Cryo = Util.Cryo
local Style = Util.Style
local FlagsList = Util.Flags.new({
	FFlagRefactorDevFrameworkTheme = {"RefactorDevFrameworkTheme"},
})

local StudioFrameworkStyles = Framework.StudioUI.StudioFrameworkStyles
local Common = require(StudioFrameworkStyles.Common)

if FlagsList:get("FFlagRefactorDevFrameworkTheme") then
	return {
		Padding = 6,
	}
else
	return function(theme, getColor)
		local common = Common(theme, getColor)

		local Default = Style.extend(common.MainText, {
			Padding = 6,
		})

		return {
			Default = Default,
		}
	end
end