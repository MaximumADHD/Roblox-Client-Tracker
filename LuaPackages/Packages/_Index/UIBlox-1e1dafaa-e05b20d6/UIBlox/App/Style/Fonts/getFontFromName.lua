local Themes = script.Parent
local Style = Themes.Parent

local validateFont = require(Style.Validator.validateFont)

return function (fontName, defaultFont, fontMap)
	local mappedFont
	if fontName ~= nil and #fontName > 0 then
		mappedFont = fontMap[string.lower(fontName)]
	end

	if mappedFont == nil then
		mappedFont = fontMap[defaultFont]
	end

	assert(validateFont(mappedFont))
	return mappedFont
end