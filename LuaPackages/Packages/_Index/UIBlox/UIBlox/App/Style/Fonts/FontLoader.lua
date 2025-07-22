local Fonts = script.Parent
local Style = Fonts.Parent
local App = Style.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent
local Cryo = require(Packages.Cryo)
local UIBloxConfig = require(UIBlox.UIBloxConfig)
local StyleTypes = require(Style.StyleTypes)

local FONT_CONFIG = {
	BASE_SIZE = 16,
	FACTOR = 1.26,
}

local FontLoader = {}
FontLoader.__index = FontLoader

function FontLoader.new(tokens: StyleTypes.Tokens)
	local self = {
		_tokens = tokens,
	}
	setmetatable(self, FontLoader)
	return self
end

function FontLoader:loadFont()
	local tokens: StyleTypes.Tokens = self._tokens
	local baseSize = FONT_CONFIG.BASE_SIZE
	local nominalSizeFactor = FONT_CONFIG.FACTOR
	local fontWithToken = {
		BaseSize = baseSize * nominalSizeFactor,
		HeadingLarge = {
			-- selene: allow(incorrect_standard_library_use)
			Font = Enum.Font.BuilderSansBold,
			RelativeSize = tokens.Global.Size_350 / baseSize,
			RelativeMinSize = tokens.Global.Size_300 / baseSize,
		},
		HeadingSmall = {
			-- selene: allow(incorrect_standard_library_use)
			Font = Enum.Font.BuilderSansBold,
			RelativeSize = tokens.Global.Size_250 / baseSize,
			RelativeMinSize = tokens.Global.Size_200 / baseSize,
		},
		TitleLarge = {
			-- selene: allow(incorrect_standard_library_use)
			Font = Enum.Font.BuilderSansBold,
			RelativeSize = tokens.Global.Size_200 / baseSize,
			RelativeMinSize = tokens.Global.Size_150 / baseSize,
		},
		BodyLarge = {
			-- selene: allow(incorrect_standard_library_use)
			Font = Enum.Font.BuilderSans,
			RelativeSize = tokens.Global.Size_200 / baseSize,
			RelativeMinSize = tokens.Global.Size_150 / baseSize,
		},
		CaptionLarge = {
			-- selene: allow(incorrect_standard_library_use)
			Font = Enum.Font.BuilderSansMedium,
			RelativeSize = tokens.Global.Size_150 / baseSize,
			RelativeMinSize = tokens.Global.Size_100 / baseSize,
		},
		BodySmall = {
			-- selene: allow(incorrect_standard_library_use)
			Font = Enum.Font.BuilderSans,
			RelativeSize = tokens.Global.Size_150 / baseSize,
			RelativeMinSize = tokens.Global.Size_100 / baseSize,
		},
		CaptionSmall = {
			-- selene: allow(incorrect_standard_library_use)
			Font = Enum.Font.BuilderSansMedium,
			RelativeSize = tokens.Global.Size_125 / baseSize,
			RelativeMinSize = tokens.Global.Size_100 / baseSize,
		},
	}
	local fontWithLegacyName = self:mapLegacyFont(fontWithToken, baseSize)
	return Cryo.Dictionary.join(fontWithLegacyName, fontWithToken)
end

function FontLoader:mapLegacyFont(fontWithToken, baseSize)
	return {
		Title = if UIBloxConfig.enableFontScaling
			then fontWithToken.HeadingLarge
			else {
				Font = fontWithToken.HeadingLarge.Font,
				RelativeSize = 28 / baseSize,
				RelativeMinSize = 24 / baseSize,
			},
		Header1 = if UIBloxConfig.enableFontScaling
			then fontWithToken.HeadingSmall
			else {
				Font = fontWithToken.HeadingSmall.Font,
				RelativeSize = 20 / baseSize,
				RelativeMinSize = 16 / baseSize,
			},
		Header2 = if UIBloxConfig.enableFontScaling
			then fontWithToken.TitleLarge
			else {
				Font = fontWithToken.TitleLarge.Font,
				RelativeSize = 16 / baseSize,
				RelativeMinSize = 12 / baseSize,
			},
		SubHeader1 = if UIBloxConfig.enableFontScaling
			then fontWithToken.TitleLarge
			else {
				Font = fontWithToken.TitleLarge.Font,
				RelativeSize = 16 / baseSize,
				RelativeMinSize = 12 / baseSize,
			},
		Body = if UIBloxConfig.enableFontScaling
			then fontWithToken.BodyLarge
			else {
				Font = fontWithToken.BodyLarge.Font,
				RelativeSize = 16 / baseSize,
				RelativeMinSize = 12 / baseSize,
			},
		CaptionHeader = if UIBloxConfig.enableFontScaling
			then fontWithToken.CaptionLarge
			else {
				Font = fontWithToken.CaptionLarge.Font,
				RelativeSize = 12 / baseSize,
				RelativeMinSize = 9 / baseSize,
			},
		CaptionSubHeader = if UIBloxConfig.enableFontScaling
			then fontWithToken.CaptionLarge
			else {
				Font = fontWithToken.CaptionLarge.Font,
				RelativeSize = 12 / baseSize,
				RelativeMinSize = 9 / baseSize,
			},
		CaptionBody = if UIBloxConfig.enableFontScaling
			then fontWithToken.BodySmall
			else {
				Font = fontWithToken.BodySmall.Font,
				RelativeSize = 12 / baseSize,
				RelativeMinSize = 9 / baseSize,
			},
		Footer = if UIBloxConfig.enableFontScaling
			then fontWithToken.CaptionSmall
			else {
				Font = fontWithToken.CaptionSmall.Font,
				RelativeSize = 10 / baseSize,
				RelativeMinSize = 8 / baseSize,
			},
	}
end

return FontLoader
