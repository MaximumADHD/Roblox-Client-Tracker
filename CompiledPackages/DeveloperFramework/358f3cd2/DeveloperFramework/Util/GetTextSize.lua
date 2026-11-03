local TextService = game:GetService("TextService")

local Framework = script.Parent.Parent
local Foundation = require(Framework.Parent.Foundation)

local FFlagFoundationStudioFontFaceMigration = Foundation.Utility.Flags.FoundationStudioFontFaceMigration

local FONT_SIZE_MEDIUM = 16
local FONT = Enum.Font.SourceSans
local DEFAULT_FRAME_SIZE = Vector2.new(math.huge, math.huge)

local cachedLegacyFontsByFace: { [string]: Enum.Font }?

local function getFaceKey(font: Font): string
	return `{font.Family}|{font.Weight.Value}|{font.Style.Value}`
end

local function getLegacyFontsByFace(): { [string]: Enum.Font }
	if cachedLegacyFontsByFace then
		return cachedLegacyFontsByFace
	end

	local legacyFontsByFace = {}
	for _, legacyFont in Enum.Font:GetEnumItems() do
		if legacyFont ~= Enum.Font.Unknown then
			local success, font = pcall(Font.fromEnum, legacyFont)
			if success then
				legacyFontsByFace[getFaceKey(font)] = legacyFont
			end
		end
	end
	cachedLegacyFontsByFace = legacyFontsByFace
	return legacyFontsByFace
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

-- TextService:GetTextSize only accepts Enum.Font. Faces without an exact enum
-- equivalent are measured with the nearest BuilderSans weight.
local function getLegacyFont(font: Font | Enum.Font): Enum.Font
	if typeof(font) == "EnumItem" then
		return font :: Enum.Font
	end

	local fontFace = font :: Font
	return getLegacyFontsByFace()[getFaceKey(fontFace)] or getBuilderSansFallback(fontFace.Weight)
end

local function GetTextSize(text: string, fontSize: number?, font: (Font | Enum.Font)?, frameSize: Vector2?)
	if FFlagFoundationStudioFontFaceMigration then
		return TextService:GetTextSize(
			text,
			fontSize or FONT_SIZE_MEDIUM,
			if font then getLegacyFont(font) else FONT,
			frameSize or DEFAULT_FRAME_SIZE
		)
	end
	fontSize = fontSize or FONT_SIZE_MEDIUM
	font = font or FONT
	frameSize = frameSize or DEFAULT_FRAME_SIZE
	return TextService:GetTextSize(text, fontSize, font :: Enum.Font, frameSize)
end

return GetTextSize
