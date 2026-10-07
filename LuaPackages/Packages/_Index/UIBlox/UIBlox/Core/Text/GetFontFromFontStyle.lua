local UIBlox = script.Parent.Parent.Parent
local validateFontInfo = require(UIBlox.Core.Style.Validator.validateFontInfo)
local StyleTypes = require(UIBlox.App.Style.StyleTypes)

type FontInfo = validateFontInfo.FontInfo
type TypographyItem = StyleTypes.TypographyItem

-- Palette entries keep the legacy `Font` for Enum.Font-only consumers and carry the token Font in `FontFace`.
local function getFontFromFontStyle(fontStyle: FontInfo | TypographyItem): Font | Enum.Font
	return (fontStyle :: FontInfo).FontFace or fontStyle.Font
end

return getFontFromFontStyle
