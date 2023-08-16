local Themes = script.Parent
local Style = Themes.Parent

local Constants = require(Style.Constants)
local validateFont = require(Style.Validator.validateFont)

local FONT_MAP = {
	[Constants.FontName.Gotham:lower()] = require(script.Parent.Gotham),
}

return function(fontName)
	local mappedFont
	if fontName ~= nil and #fontName > 0 then
		mappedFont = FONT_MAP[fontName:lower()]
	end

	if mappedFont == nil then
		mappedFont = FONT_MAP[Constants.DefaultFontName:lower()]
	end

	assert(validateFont(mappedFont))
	return mappedFont
end
