local Packages = script.Parent.Parent.Parent.Parent
local Framework = require(Packages.Framework)
local StyleKey = Framework.Style.StyleKey

return {
	PlaceholderTextColor = StyleKey.DimmedText,
	ValueTextBoxPadding = 12,
	ValueTextBoxWidth = 64,
	FramePadding = 96,
}