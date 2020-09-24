local Framework = script.Parent.Parent.Parent

local Util = require(Framework.Util)
local Cryo = Util.Cryo
local deepCopy = Util.deepCopy
local Style = Util.Style
local FlagsList = Util.Flags.new({
	FFlagRefactorDevFrameworkTheme = {"RefactorDevFrameworkTheme"},
})

local StudioFrameworkStyles = Framework.StudioUI.StudioFrameworkStyles
local Common = require(StudioFrameworkStyles.Common)
local UIFolderData = require(Framework.UI.UIFolderData)
local InfiniteScrollingFrame = require(UIFolderData.InfiniteScrollingFrame.style)

if FlagsList:get("FFlagRefactorDevFrameworkTheme") then
	local infiniteScrollingFrame = deepCopy(InfiniteScrollingFrame)
	return Cryo.Dictionary.join(infiniteScrollingFrame, {
		AutoSizeCanvas = true,
		AutoSizeLayoutElement = "UIListLayout",
		AutoSizeLayoutOptions = {
			Padding = UDim.new(0, 4),
		},
	})
else
	return function(theme, getColor)
		local common = Common(theme, getColor)

		local Default = Style.extend(common.Scroller, {
			AutoSizeCanvas = true,
			AutoSizeLayoutElement = "UIListLayout",
			AutoSizeLayoutOptions = {
				Padding = UDim.new(0, 4),
			},
		})

		return {
			Default = Default,
		}
	end
end
