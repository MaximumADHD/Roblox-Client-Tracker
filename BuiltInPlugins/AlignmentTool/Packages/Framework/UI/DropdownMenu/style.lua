local Framework = script.Parent.Parent.Parent

local StudioFrameworkStyles = Framework.StudioUI.StudioFrameworkStyles
local Common = require(StudioFrameworkStyles.Common)
local Util = require(Framework.Util)
local Style = Util.Style

return function(theme, getColor)
	local common = Common(theme, getColor)

	return {
		Default = Style.extend(common.Border, {
			ShowBorder = true,
			BorderImage = "rbxasset://textures/StudioToolbox/RoundedBorder.png",
			BorderSliceCenter = Rect.new(3, 3, 13, 13),
			MenuBackgroundColor = theme:GetColor("Button"),
			Offset = Vector2.new(0, 0),
			Text = Style.extend(common.MainText, {
				TextXAlignment = Enum.TextXAlignment.Left,
			})
		})
	}

end