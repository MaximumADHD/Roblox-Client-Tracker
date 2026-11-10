-- This file implements a wrapper function for TextService:GetTextSize()
-- Extra padding is added to the returned size because of a rounding issue with GetTextSize
-- TODO: Remove this temporary additional padding when CLIPLAYEREX-1633 is fixed

local TextService = game:GetService("TextService")

local UIBlox = script.Parent.Parent.Parent
local Packages = UIBlox.Parent
local Foundation = require(Packages.Foundation)
local normalizeFontFace = Foundation.Utility.normalizeFontFace
local Logger = require(UIBlox.Logger)
local GetLegacyFont = require(script.Parent.GetLegacyFont)

-- Comic Neue measurements exceeded the Cartoon fallback by up to 4 px (0.9%)
-- in the migration matrix. One percent keeps unbounded width conservative and
-- forces legacy wrapping before the exact font's measured boundary.
-- BuilderSans and exact mappings skip this family-specific correction. This is
-- separate from TEMPORARY_TEXT_SIZE_PADDING.
local COMIC_NEUE_WIDTH_SCALE = 1.01
local TEMPORARY_TEXT_SIZE_PADDING = Vector2.new(2, 2)

local function getTextSize(
	string: string,
	fontSize: number,
	font: Font | Enum.Font,
	frameSize: Vector2,
	isRichText: boolean?
)
	local success, value, usesWidthCorrection = pcall(function(): (Vector2?, boolean)
		if not isRichText then
			local legacyFont, usesFallback = GetLegacyFont(font)
			if legacyFont == nil then
				return nil, usesFallback
			end
			local usesComicNeueFallback = usesFallback and legacyFont == Enum.Font.Cartoon

			-- GetTextBoundsParams.Width <= 0 means unconstrained; legacy GetTextSize treats X as a
			-- hard wrap width. Match the async path by measuring with an unbounded height and only
			-- using X as a wrap constraint when it is a finite positive width.
			local measurementWidth = frameSize.X
			local hasFiniteWrapWidth = measurementWidth > 0 and measurementWidth < math.huge
			if not hasFiniteWrapWidth then
				measurementWidth = math.huge
			elseif usesComicNeueFallback then
				measurementWidth = measurementWidth / COMIC_NEUE_WIDTH_SCALE
			end

			local measurementFrameSize = Vector2.new(measurementWidth, math.huge)
			return TextService:GetTextSize(string, fontSize, legacyFont, measurementFrameSize), usesComicNeueFallback
		end

		local params = Instance.new("GetTextBoundsParams")
		params.Font = normalizeFontFace(font) :: Font
		params.Size = fontSize
		params.Text = string
		params.Width = frameSize.X
		params.RichText = isRichText or false

		return TextService:GetTextBoundsAsync(params), false
	end)
	if success and value then
		local textSize = Vector2.new(value.X, math.min(value.Y, frameSize.Y))
		if usesWidthCorrection then
			local width = math.ceil(textSize.X * COMIC_NEUE_WIDTH_SCALE)
			if frameSize.X > 0 and frameSize.X < math.huge then
				width = math.min(width, frameSize.X)
			end
			textSize = Vector2.new(width, textSize.Y)
		end

		return textSize + TEMPORARY_TEXT_SIZE_PADDING
	elseif success then
		Logger:warning("Font cannot be measured, falling back to frame size")
		return frameSize
	else
		Logger:warning(`Text measurement failed, falling back to frame size. Error: {value}`)
		return frameSize
	end
end

return getTextSize
