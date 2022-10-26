local Themes = script.Parent
local Style = Themes.Parent

local UIBloxConfig = require(Style.Parent.Parent.UIBloxConfig)
local validateTheme = if UIBloxConfig.useNewThemeColorPalettes
	then require(Style.Validator.validateThemeNew)
	else require(Style.Validator.validateTheme)

return function(themeName, defaultTheme, themeMap)
	local mappedTheme
	if themeName ~= nil and #themeName > 0 then
		mappedTheme = themeMap[string.lower(themeName)]
	end

	if mappedTheme == nil then
		mappedTheme = themeMap[defaultTheme]
	end
	assert(validateTheme(mappedTheme))
	return mappedTheme
end
