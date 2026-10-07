local Fonts = script.Parent
local Style = Fonts.Parent
local App = Style.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent
local Cryo = require(Packages.Cryo)
local Foundation = require(Packages.Foundation)
local normalizeFontFace = Foundation.Utility.normalizeFontFace
local FFlagFoundationFontFaceMigration = Foundation.Utility.Flags.FoundationFontFaceMigration
local Constants = require(Style.Constants)
local StyleTypes = require(Style.StyleTypes)
local UIBloxConfig = require(UIBlox.UIBloxConfig)

local FONT_CONFIG = {
	BASE_SIZE = 16,
	FACTOR = 1.26,
}

local function getOverrideFontFace(fontOverride: Font | Enum.Font, tokenFontFace: Font): Font
	if typeof(fontOverride) == "Font" then
		return fontOverride
	elseif fontOverride == Enum.Font.Cartoon then
		-- Font.fromEnum(Cartoon) resolves to Comic Neue Angular, not the Comic Neue family used by typography tokens.
		return Font.new(Constants.ComicNeueFontFamily, tokenFontFace.Weight, tokenFontFace.Style)
	end
	return Font.fromEnum(fontOverride)
end

local FontLoader = {}
FontLoader.__index = FontLoader

function FontLoader.new(tokens: StyleTypes.Tokens)
	local self = {
		_tokens = tokens,
	}
	setmetatable(self, FontLoader)
	return self
end

function FontLoader:loadFont(fontOverride: (Font | Enum.Font)?)
	local tokens: StyleTypes.Tokens = self._tokens
	local baseSize = FONT_CONFIG.BASE_SIZE
	local nominalSizeFactor = FONT_CONFIG.FACTOR
	local fontWithToken = {
		BaseSize = baseSize * nominalSizeFactor,
		HeadingLarge = {
			-- selene: allow(incorrect_standard_library_use)
			Font = Enum.Font.BuilderSansBold,
			FontFace = if FFlagFoundationFontFaceMigration
				then normalizeFontFace(tokens.Typography.HeadingLarge.Font) :: Font
				else nil,
			RelativeSize = (if UIBloxConfig.deprecateComponentGlobalSemanticTokenUse
				then tokens.Size.Size_700
				else tokens.Global.Size_350) / baseSize,
			RelativeMinSize = (if UIBloxConfig.deprecateComponentGlobalSemanticTokenUse
				then tokens.Size.Size_600
				else tokens.Global.Size_300) / baseSize,
		},
		HeadingSmall = {
			-- selene: allow(incorrect_standard_library_use)
			Font = Enum.Font.BuilderSansBold,
			FontFace = if FFlagFoundationFontFaceMigration
				then normalizeFontFace(tokens.Typography.HeadingSmall.Font) :: Font
				else nil,
			RelativeSize = (if UIBloxConfig.deprecateComponentGlobalSemanticTokenUse
				then tokens.Size.Size_500
				else tokens.Global.Size_250) / baseSize,
			RelativeMinSize = (if UIBloxConfig.deprecateComponentGlobalSemanticTokenUse
				then tokens.Size.Size_400
				else tokens.Global.Size_200) / baseSize,
		},
		TitleLarge = {
			-- selene: allow(incorrect_standard_library_use)
			Font = Enum.Font.BuilderSansBold,
			FontFace = if FFlagFoundationFontFaceMigration
				then normalizeFontFace(tokens.Typography.TitleLarge.Font) :: Font
				else nil,
			RelativeSize = (if UIBloxConfig.deprecateComponentGlobalSemanticTokenUse
				then tokens.Size.Size_400
				else tokens.Global.Size_200) / baseSize,
			RelativeMinSize = (if UIBloxConfig.deprecateComponentGlobalSemanticTokenUse
				then tokens.Size.Size_300
				else tokens.Global.Size_150) / baseSize,
		},
		BodyLarge = {
			-- selene: allow(incorrect_standard_library_use)
			Font = Enum.Font.BuilderSans,
			FontFace = if FFlagFoundationFontFaceMigration
				then normalizeFontFace(tokens.Typography.BodyLarge.Font) :: Font
				else nil,
			RelativeSize = (if UIBloxConfig.deprecateComponentGlobalSemanticTokenUse
				then tokens.Size.Size_400
				else tokens.Global.Size_200) / baseSize,
			RelativeMinSize = (if UIBloxConfig.deprecateComponentGlobalSemanticTokenUse
				then tokens.Size.Size_300
				else tokens.Global.Size_150) / baseSize,
		},
		CaptionLarge = {
			-- selene: allow(incorrect_standard_library_use)
			Font = Enum.Font.BuilderSansMedium,
			FontFace = if FFlagFoundationFontFaceMigration
				then normalizeFontFace(tokens.Typography.CaptionLarge.Font) :: Font
				else nil,
			RelativeSize = (if UIBloxConfig.deprecateComponentGlobalSemanticTokenUse
				then tokens.Size.Size_300
				else tokens.Global.Size_150) / baseSize,
			RelativeMinSize = (if UIBloxConfig.deprecateComponentGlobalSemanticTokenUse
				then tokens.Size.Size_200
				else tokens.Global.Size_100) / baseSize,
		},
		BodySmall = {
			-- selene: allow(incorrect_standard_library_use)
			Font = Enum.Font.BuilderSans,
			FontFace = if FFlagFoundationFontFaceMigration
				then normalizeFontFace(tokens.Typography.BodySmall.Font) :: Font
				else nil,
			RelativeSize = (if UIBloxConfig.deprecateComponentGlobalSemanticTokenUse
				then tokens.Size.Size_300
				else tokens.Global.Size_150) / baseSize,
			RelativeMinSize = (if UIBloxConfig.deprecateComponentGlobalSemanticTokenUse
				then tokens.Size.Size_200
				else tokens.Global.Size_100) / baseSize,
		},
		CaptionSmall = {
			-- selene: allow(incorrect_standard_library_use)
			Font = Enum.Font.BuilderSansMedium,
			FontFace = if FFlagFoundationFontFaceMigration
				then normalizeFontFace(tokens.Typography.CaptionSmall.Font) :: Font
				else nil,
			RelativeSize = (if UIBloxConfig.deprecateComponentGlobalSemanticTokenUse
				then tokens.Size.Size_250
				else tokens.Global.Size_125) / baseSize,
			RelativeMinSize = (if UIBloxConfig.deprecateComponentGlobalSemanticTokenUse
				then tokens.Size.Size_200
				else tokens.Global.Size_100) / baseSize,
		},
	}

	if fontOverride ~= nil then
		for _, entry in fontWithToken do
			if type(entry) == "table" and (entry :: any).Font ~= nil then
				(entry :: any).Font = fontOverride
				if FFlagFoundationFontFaceMigration then
					(entry :: any).FontFace = getOverrideFontFace(fontOverride, (entry :: any).FontFace)
				end
			end
		end
	end

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
