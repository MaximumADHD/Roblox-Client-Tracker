--!strict
local Style = script.Parent
local App = Style.Parent
local UIBlox = App.Parent
local UIBloxConfig = require(UIBlox.UIBloxConfig)

return {
	IconSizeMap = if UIBloxConfig.enableNewIconSizes
		then require(script.IconSizeMapNew)
		else require(script.IconSizeMap),
}
