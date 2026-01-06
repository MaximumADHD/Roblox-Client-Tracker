export type FontFace = Enum.Font | Font

export type FontStyle = {
	Font: FontFace?,
	FontSize: number?,
	LineHeight: number?,
}

local function getFontFace(fontStyle: FontStyle?): Font?
	local fontProp = fontStyle and fontStyle.Font
	if typeof(fontProp) == "EnumItem" and fontProp:IsA("Font") then
		return Font.fromEnum(fontProp)
	else
		return fontProp
	end
end

return getFontFace
