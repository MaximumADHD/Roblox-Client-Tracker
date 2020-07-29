local Framework = script.Parent.Parent.Parent

local Util = require(Framework.Util)
local Style = Util.Style

local StudioFrameworkStyles = Framework.StudioUI.StudioFrameworkStyles
local Common = require(StudioFrameworkStyles.Common)
local StyleModifier = Util.StyleModifier

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
