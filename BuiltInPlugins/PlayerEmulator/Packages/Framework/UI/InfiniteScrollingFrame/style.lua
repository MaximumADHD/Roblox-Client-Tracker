local Framework = script.Parent.Parent.Parent

local StudioFrameworkStyles = Framework.StudioUI.StudioFrameworkStyles
local Common = require(StudioFrameworkStyles.Common)

local StyleKey = require(Framework.Style.StyleKey)

local Util = require(Framework.Util)
local FlagsList = Util.Flags.new({
	FFlagRefactorDevFrameworkTheme = {"RefactorDevFrameworkTheme"},
})

if FlagsList:get("FFlagRefactorDevFrameworkTheme") then
	return {
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		BackgroundColor3 = StyleKey.MainBackground,

		TopImage = "rbxasset://textures/StudioToolbox/ScrollBarTop.png",
		MidImage = "rbxasset://textures/StudioToolbox/ScrollBarMiddle.png",
		BottomImage = "rbxasset://textures/StudioToolbox/ScrollBarBottom.png",

		ScrollingEnabled = true,
		ScrollingDirection = Enum.ScrollingDirection.Y,
		ScrollBarThickness = 8,
		ScrollBarImageTransparency = 0.5,
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
