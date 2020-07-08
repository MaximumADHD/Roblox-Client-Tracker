local Framework = script.Parent.Parent.Parent

local StudioFrameworkStyles = Framework.StudioUI.StudioFrameworkStyles
local Common = require(StudioFrameworkStyles.Common)
local UIFolderData = require(Framework.UI.UIFolderData)
local Util = require(Framework.Util)
local RoundBox = require(UIFolderData.RoundBox.style)
local Style = Util.Style

return function(theme, getColor)
	local common = Common(theme, getColor)
	local roundBox = RoundBox(theme, getColor)

	return {
		Default = Style.extend(common.Border, {
			BackgroundStyle = roundBox.Default,
			Width = 240,
			MaxHeight = 240,
			Offset = Vector2.new(0, 0),
			Text = Style.extend(common.MainText, {
				TextXAlignment = Enum.TextXAlignment.Left,
			})
		})
	}

end