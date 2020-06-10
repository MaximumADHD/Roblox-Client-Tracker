local Framework = script.Parent.Parent.Parent

local Util = require(Framework.Util)
local Style = Util.Style
local StudioFrameworkStyles = Framework.StudioUI.StudioFrameworkStyles
local Common = require(StudioFrameworkStyles.Common)
local UIFolderData = require(Framework.UI.UIFolderData)
local DropShadow = require(UIFolderData.DropShadow.style)

return function(theme, getColor)
	local common = Common(theme, getColor)
	local dropShadow = DropShadow(theme, getColor)
	
	local Default = Style.extend(common.MainText, {
		Padding = 5,
		MaxWidth = 200,
		ShowDelay = 0.3,
		Offset = Vector2.new(10, 5),
		DropShadow = dropShadow.Default
	})

	return {
		Default = Default,
	}
end
