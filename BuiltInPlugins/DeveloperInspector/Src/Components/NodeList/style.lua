local Plugin = script.Parent.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local StyleKey = Framework.Style.StyleKey

local Util = Framework.Util
local UI = Framework.UI
local Decoration = UI.Decoration
local deepCopy = Util.deepCopy

local UIFolderData = Framework.UIData
local ScrollingFrame = require(UIFolderData.ScrollingFrame.style)
local RoundBox = require(UIFolderData.RoundBox.style)
local LinkText = require(UIFolderData.LinkText.style)

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
	Link = deepCopy(LinkText),
}
