local Themes = script.Parent
local Style = Themes.Parent

local Constants = require(Style.Constants)
local validateFont = require(Style.Validator.validateFont)
local FontLoader = require(script.Parent.FontLoader)
local StyleTypes = require(Style.StyleTypes)

return function(fontName, enableFontNameMapping: boolean?, tokens: StyleTypes.Tokens)
	local fontLoader = FontLoader.new(enableFontNameMapping, tokens)
	local fontMap = {
		[Constants.FontName.Gotham:lower()] = fontLoader:loadFont(),
	}
	local mappedFont
	if fontName ~= nil and #fontName > 0 then
		mappedFont = fontMap[fontName:lower()]
	end

	if mappedFont == nil then
		mappedFont = fontMap[Constants.DefaultFontName:lower()]
	end

	assert(validateFont(mappedFont))
	return mappedFont
end
