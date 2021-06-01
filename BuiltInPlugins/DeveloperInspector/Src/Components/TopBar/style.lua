local Plugin = script.Parent.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local StyleKey = Framework.Style.StyleKey

return {
	Padding = 2,
	HeaderHeight = 33,
	ButtonSize = 32,
	IconSize = 24,
	HeaderBorderColor = StyleKey.Border,
	SelectedIconColor = StyleKey.DialogMainButton,
	IconColor = StyleKey.MainText,
}
