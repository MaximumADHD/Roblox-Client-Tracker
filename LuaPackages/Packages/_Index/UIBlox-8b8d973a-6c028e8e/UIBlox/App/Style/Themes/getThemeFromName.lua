local Themes = script.Parent
local Style = Themes.Parent

local validateTheme = require(Style.Validator.validateTheme)

return function (themeName, defaultTheme, themeMap)
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