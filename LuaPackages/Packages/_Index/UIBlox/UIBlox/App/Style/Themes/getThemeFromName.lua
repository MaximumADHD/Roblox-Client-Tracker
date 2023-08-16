local Themes = script.Parent
local Style = Themes.Parent

local Constants = require(Style.Constants)
local UIBloxConfig = require(Style.Parent.Parent.UIBloxConfig)
local validateTheme = if UIBloxConfig.useNewThemeColorPalettes
	then require(Style.Validator.validateThemeNew)
	else require(Style.Validator.validateTheme)

-- We use lowercased versions of the theme names here just in case there are any
-- inconsistencies in casing. Ideally we reference the shared enum ubiquitously
-- and can trust that NotificationService.SelectedTheme returns one of a set of strings.
local THEME_MAP: { [string]: any } = {
	[Constants.ThemeName.Dark:lower()] = if UIBloxConfig.useNewThemeColorPalettes
		then require(Themes.DarkThemeNew)
		else require(Themes.DarkTheme),
	[Constants.ThemeName.Light:lower()] = if UIBloxConfig.useNewThemeColorPalettes
		then require(Themes.LightThemeNew)
		else require(Themes.LightTheme),
}

return function(themeName: string)
	local mappedTheme
	if themeName ~= nil and #themeName > 0 then
		mappedTheme = THEME_MAP[themeName:lower()]
	end

	if mappedTheme == nil then
		mappedTheme = THEME_MAP[Constants.DefaultThemeName:lower()]
	end
	assert(validateTheme(mappedTheme))
	return mappedTheme
end
