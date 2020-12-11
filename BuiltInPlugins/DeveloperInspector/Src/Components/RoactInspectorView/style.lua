local Plugin = script.Parent.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local StyleKey = Framework.Style.StyleKey

local Util = Framework.Util
local deepCopy = Util.deepCopy
local Style = Util.Style

local Common = Framework.StudioUI.Common

local UIFolderData = Framework.UIData
local Box = require(UIFolderData.Box.style)

local FlagsList = Util.Flags.new({
	FFlagRefactorDevFrameworkTheme = {"RefactorDevFrameworkTheme"},
})

if FlagsList:get("FFlagRefactorDevFrameworkTheme") then
	local box = deepCopy(Box)
	return {
		Tabs = {
			BackgroundColor = StyleKey.MainBackground,
			BorderColor = StyleKey.Border,
		},
		SelectedIconColor = StyleKey.DialogMainButton,
		IconColor = StyleKey.MainText,
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
			IconColor = theme:GetColor("MainText"),
			Tabs = {
				BackgroundColor = theme:GetColor("MainBackground"),
				BorderColor = theme:GetColor("Border")
			},
			BackgroundColor = theme:GetColor("CategoryItem"),
			BackgroundStyle = box.Default,
			SelectedIconColor = theme:GetColor("DialogMainButton"),
			Padding = 5,
			HeaderHeight = 28
		})

		return {
			Default = Default
		}
	end

end