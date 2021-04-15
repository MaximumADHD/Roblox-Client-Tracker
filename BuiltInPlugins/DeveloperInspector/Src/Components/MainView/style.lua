local Plugin = script.Parent.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local StyleKey = Framework.Style.StyleKey

local Util = Framework.Util
local deepCopy = Util.deepCopy

local UIFolderData = Framework.UIData
local Box = require(UIFolderData.Box.style)

local box = deepCopy(Box)
return {
	BackgroundColor = StyleKey.CategoryItem,
	BackgroundStyle = box,
	Padding = 5,
	HeaderHeight = 28
}
