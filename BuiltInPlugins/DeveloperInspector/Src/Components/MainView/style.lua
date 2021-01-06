local Plugin = script.Parent.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local StyleKey = Framework.Style.StyleKey

local Util = Framework.Util
local deepCopy = Util.deepCopy
local Style = Util.Style

local Common = Framework.StudioUI.Common

local UIFolderData = Framework.UIData
local Box = require(UIFolderData.Box.style)

local THEME_REFACTOR = Util.RefactorFlags.THEME_REFACTOR

if THEME_REFACTOR then
	local box = deepCopy(Box)
	return {
		BackgroundColor = StyleKey.CategoryItem,
		BackgroundStyle = box,
		Padding = 5,
		HeaderHeight = 28
	}
else
	return function(theme, getColor)
		local common = Common(theme, getColor)
		local box = Box(theme, getColor)
		local Default = Style.extend(common.MainText, {
			BackgroundColor = theme:GetColor("CategoryItem"),
			BackgroundStyle = box.Default,
			Padding = 5,
			HeaderHeight = 28
		})

		return {
			Default = Default
		}
	end
end