local Framework = script.Parent.Parent.Parent

local StudioFrameworkStyles = Framework.StudioUI.StudioFrameworkStyles
local Common = require(StudioFrameworkStyles.Common)

local StyleKey = require(Framework.Style.StyleKey)

local Util = require(Framework.Util)
local THEME_REFACTOR = Util.RefactorFlags.THEME_REFACTOR

if THEME_REFACTOR then
	return {
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		BackgroundColor3 = StyleKey.MainBackground,

		TopImage = "rbxasset://textures/StudioSharedUI/ScrollBarTop.png",
		MidImage = "rbxasset://textures/StudioSharedUI/ScrollBarMiddle.png",
		BottomImage = "rbxasset://textures/StudioSharedUI/ScrollBarBottom.png",

		ScrollingEnabled = true,
		ScrollingDirection = Enum.ScrollingDirection.Y,
		ScrollBarThickness = 8,
		ScrollBarImageTransparency = 0,
		ScrollBarImageColor3 = StyleKey.ScrollBar,
		VerticalScrollBarInset = Enum.ScrollBarInset.Always
	}
else
	return function(theme, getColor)
		local common = Common(theme, getColor)

		local Default = common.Scroller

		return {
			Default = Default,
		}
	end
end
