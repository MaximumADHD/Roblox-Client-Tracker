local Framework = script.Parent.Parent.Parent

local Util = require(Framework.Util)
local Style = Util.Style
local FlagsList = Util.Flags.new({
	FFlagRefactorDevFrameworkTheme = {"RefactorDevFrameworkTheme"},
})

local StudioFrameworkStyles = Framework.StudioUI.StudioFrameworkStyles
local Common = require(StudioFrameworkStyles.Common)
local StyleModifier = Util.StyleModifier

if FlagsList:get("FFlagRefactorDevFrameworkTheme") then
	return {
		[StyleModifier.Disabled] = {
			TextTransparency = 0.5,
		},
	}
else
	return function(theme, getColor)
		local common = Common(theme, getColor)

		local Default = Style.extend(common.MainText, {
			[StyleModifier.Disabled] = {
				TextTransparency = 0.5,
			},
		})

		return {
			Default = Default,
		}
	end
end