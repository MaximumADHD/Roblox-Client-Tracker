local Fonts = script.Parent
local Style = Fonts.Parent
local App = Style.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent
local Cryo = require(Packages.Cryo)
local Gotham = require(Fonts.Gotham)
local StyleTypes = require(Style.StyleTypes)

local FONT_CONFIG = {
	BASE_SIZE = 16,
	FACTOR = 1.2,
}

local FontLoader = {}
FontLoader.__index = FontLoader

function FontLoader.new(enableFontNameMapping: boolean?, tokens: StyleTypes.Tokens)
	local self = {
		_enableFontNameMapping = enableFontNameMapping,
		_tokens = tokens,
	}
	setmetatable(self, FontLoader)
	return self
end

function FontLoader:loadFont()
	if self._enableFontNameMapping ~= true then
		return Gotham
	end
	local tokens: StyleTypes.Tokens = self._tokens
	local baseSize = FONT_CONFIG.BASE_SIZE
	local nominalSizeFactor = FONT_CONFIG.FACTOR
	local fontWithToken = {
		BaseSize = baseSize * nominalSizeFactor,
		HeadingLarge = {
			Font = Enum.Font.GothamBlack,
			RelativeSize = tokens.Global.Size_350 / baseSize,
			RelativeMinSize = tokens.Global.Size_300 / baseSize,
		},
		HeadingSmall = {
			Font = Enum.Font.GothamMedium,
			RelativeSize = tokens.Global.Size_250 / baseSize,
			RelativeMinSize = tokens.Global.Size_200 / baseSize,
		},
		TitleLarge = {
			Font = Enum.Font.GothamMedium,
			RelativeSize = tokens.Global.Size_200 / baseSize,
			RelativeMinSize = tokens.Global.Size_150 / baseSize,
		},
		BodyLarge = {
			Font = Enum.Font.Gotham,
			RelativeSize = tokens.Global.Size_200 / baseSize,
			RelativeMinSize = tokens.Global.Size_150 / baseSize,
		},
		CaptionLarge = {
			Font = Enum.Font.GothamMedium,
			RelativeSize = tokens.Global.Size_150 / baseSize,
			RelativeMinSize = tokens.Global.Size_100 / baseSize,
		},
		BodySmall = {
			Font = Enum.Font.Gotham,
			RelativeSize = tokens.Global.Size_150 / baseSize,
			RelativeMinSize = tokens.Global.Size_100 / baseSize,
		},
		CaptionSmall = {
			Font = Enum.Font.GothamMedium,
			-- TODO: We don't have token Global.Size_125(10) yet, use FontSize_25(10) temporarily
			RelativeSize = tokens.Global.FontSize_25 / baseSize,
			RelativeMinSize = tokens.Global.Size_100 / baseSize,
		},
	}
	local fontWithLegacyName = self:mapLegacyFont(fontWithToken)
	return Cryo.Dictionary.join(fontWithLegacyName, fontWithToken)
end

function FontLoader:mapLegacyFont(fontWithToken)
	return {
		Title = fontWithToken.HeadingLarge,
		Header1 = fontWithToken.HeadingSmall,
		Header2 = fontWithToken.TitleLarge,
		SubHeader1 = fontWithToken.TitleLarge,
		Body = fontWithToken.BodyLarge,
		CaptionHeader = fontWithToken.CaptionLarge,
		CaptionSubHeader = fontWithToken.CaptionLarge,
		CaptionBody = fontWithToken.BodySmall,
		Footer = fontWithToken.CaptionSmall,
	}
end

return FontLoader
