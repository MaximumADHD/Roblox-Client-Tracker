local Framework = script.Parent.Parent.Parent

local StudioFrameworkStyles = Framework.StudioUI.StudioFrameworkStyles
local Common = require(StudioFrameworkStyles.Common)

local Util = require(Framework.Util)
local Style = Util.Style

return function(theme, getColor)
	local common = Common(theme, getColor)

	local Default = Style.extend(common.MainText, {
		Padding = 10,
		TextSize = 22,
		TextColor = theme:GetColor("TitlebarText"),
	})

	return {
		Default = Default,
	}
end
