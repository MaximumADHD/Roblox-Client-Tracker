local Fonts = script.Parent
local Style = Fonts.Parent
local App = Style.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent
local Cryo = require(Packages.Cryo)
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
