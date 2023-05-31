local Style = script.Parent
local App = Style.Parent
local UIBlox = App.Parent
local UIBloxConfig = require(UIBlox.UIBloxConfig)

return {
	DarkTheme = if UIBloxConfig.useNewThemeColorPalettes
		then require(script.DarkThemeNew)
		else require(script.DarkTheme),
	LightTheme = if UIBloxConfig.useNewThemeColorPalettes
		then require(script.LightThemeNew)
		else require(script.LightTheme),
}
