local Framework = script.Parent.Parent.Parent

local Util = require(Framework.Util)
local Style = Util.Style

local UI = require(Framework.UI)
local Decoration = UI.Decoration

local UIFolderData = require(Framework.UI.UIFolderData)
local RoundBox = require(UIFolderData.RoundBox.style)

return function(theme, getColor)
	local roundBox = RoundBox(theme, getColor)

	local Default = Style.new({
		Background = Decoration.RoundBox,
		Foreground = Decoration.RoundBox,
		BackgroundStyle = Style.extend(roundBox.Default, {
			Color = theme:GetColor("Button"),
		}),
		ForegroundStyle = Style.extend(roundBox.Default, {
			Color = theme:GetColor("DialogMainButton", "Selected"),
		}),
	})

	return {
		Default = Default,
	}
end
