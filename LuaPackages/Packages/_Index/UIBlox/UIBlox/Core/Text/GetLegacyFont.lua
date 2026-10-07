local UIBlox = script.Parent.Parent.Parent
local Constants = require(UIBlox.App.Style.Constants)

local legacyFontsByFace: { [string]: Enum.Font } = {}
local COMIC_NEUE_ANGULAR_FAMILY = Font.fromEnum(Enum.Font.Cartoon).Family
local COMIC_NEUE_FAMILY = Constants.ComicNeueFontFamily

local function getFaceKey(font: Font): string
	return `{font.Family}|{font.Weight.Value}|{font.Style.Value}`
end

for _, legacyFont in Enum.Font:GetEnumItems() do
	if legacyFont ~= Enum.Font.Unknown then
		local success, font = pcall(Font.fromEnum, legacyFont)
		if success then
			legacyFontsByFace[getFaceKey(font)] = legacyFont
		end
	end
end

local function getBuilderSansFallback(weight: Enum.FontWeight): Enum.Font
	if weight.Value >= Enum.FontWeight.ExtraBold.Value then
		return Enum.Font.BuilderSansExtraBold
	elseif weight.Value >= Enum.FontWeight.SemiBold.Value then
		return Enum.Font.BuilderSansBold
	elseif weight.Value >= Enum.FontWeight.Medium.Value then
		return Enum.Font.BuilderSansMedium
	end
	return Enum.Font.BuilderSans
end

local function getComicNeueFallback(font: Font): Enum.Font?
	if font.Family == COMIC_NEUE_FAMILY or font.Family == COMIC_NEUE_ANGULAR_FAMILY then
		return Enum.Font.Cartoon
	end
	return nil
end

-- TextService:GetTextSize requires Enum.Font. BuilderSans and Comic Neue are the
-- supported migration families. Other custom families use BuilderSans as a finite
-- best-effort fallback rather than propagating sentinel frame bounds.
local function getLegacyFont(font: Font | Enum.Font): (Enum.Font?, boolean)
	if typeof(font) == "EnumItem" then
		if font == Enum.Font.Unknown then
			return nil, false
		end
		return font, false
	end

	local legacyFont = legacyFontsByFace[getFaceKey(font)]
	if legacyFont then
		return legacyFont, false
	end

	local comicNeueFallback = getComicNeueFallback(font)
	if comicNeueFallback then
		return comicNeueFallback, true
	end

	return getBuilderSansFallback(font.Weight), true
end

return getLegacyFont
