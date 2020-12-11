local Plugin = script.Parent.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local StyleKey = Framework.Style.StyleKey

local Util = Framework.Util
local UI = Framework.UI
local Decoration = UI.Decoration
local Style = Util.Style
local deepCopy = Util.deepCopy

local UIFolderData = Framework.UIData
local ScrollingFrame = require(UIFolderData.ScrollingFrame.style)
local RoundBox = require(UIFolderData.RoundBox.style)
local LinkText = require(UIFolderData.LinkText.style)

local FlagsList = Util.Flags.new({
	FFlagRefactorDevFrameworkTheme = {"RefactorDevFrameworkTheme"},
})

if FlagsList:get("FFlagRefactorDevFrameworkTheme") then
	return {
		Background = Decoration.RoundBox,
		BackgroundStyle = RoundBox,
		ScrollingFrame = ScrollingFrame,
		BackgroundColor = StyleKey.MainBackground,
		Padding = 1,
		RowHeight = 24,
		IconPadding = 5,
		HoverColor = StyleKey.ButtonHover,
		SelectedColor = StyleKey.DialogMainButton,
		SelectedTextColor = StyleKey.DialogMainButtonText,
		Link = deepCopy(LinkText)
	}
else
	return function(theme, getColor)
		local roundBox = RoundBox(theme, getColor)
		local linkStyle = LinkText(theme, getColor)
		local scrollingFrame = ScrollingFrame(theme, getColor)

		local Default = Style.new({
			Background = Decoration.RoundBox,
			BackgroundStyle = roundBox.Default,
			BackgroundColor = theme:GetColor("MainBackground"),
			ScrollingFrame = Style.extend(scrollingFrame.Default, {}),
			Padding = 1,
			RowHeight = 24,
			IconPadding = 5,
			HoverColor = theme:GetColor("Button", "Hover"),
			SelectedColor = theme:GetColor("DialogMainButton"),
			SelectedTextColor = theme:GetColor("DialogMainButtonText"),
			Link = linkStyle.Default
		})

		return {
			Default = Default,
		}
	end
end