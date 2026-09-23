local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)
local ReactUtils = require(Packages.ReactUtils)

local Components = Foundation.Components
local Types = require(Components.Types)

type FontStyle = Types.FontStyle

local Flags = require(Foundation.Utility.Flags)
local getTextBoundsAsync = require(Foundation.Utility.getTextBoundsAsync)
local normalizeFontFace = require(Foundation.Utility.normalizeFontFace)
local usePreferences = require(Foundation.Providers.Preferences.usePreferences)

local TextService = require(Foundation.Utility.Wrappers.Services).TextService

local function useTextSize(text: string?, fontStyle: FontStyle, frameSize: Vector2?): Vector2?
	if Flags.FoundationFontFaceMigration then
		local preferredTextSize = usePreferences().preferredTextSize
		local font = normalizeFontFace(fontStyle.Font)
		local fontSize = fontStyle.FontSize

		local asyncTextSizeState = ReactUtils.useAsync(
			function(): Vector2?
				if text == nil or fontSize == nil or typeof(font) ~= "Font" then
					return nil
				end

				return getTextBoundsAsync(text, font, fontSize, if frameSize then frameSize.X else nil)
			end,
			{
				text,
				fontStyle.Font,
				fontSize,
				frameSize,
				preferredTextSize,
			} :: { unknown }
		)

		local previousTextSizeRef = React.useRef(nil :: Vector2?)
		React.useEffect(function()
			if asyncTextSizeState.status == "ok" then
				previousTextSizeRef.current = asyncTextSizeState.value
			end
		end, { asyncTextSizeState })

		return if asyncTextSizeState.status == "ok" then asyncTextSizeState.value else previousTextSizeRef.current
	end

	local textSize: Vector2?, setTextSize: (Vector2?) -> () = React.useState(nil :: Vector2?)
	local preferredTextSize = usePreferences().preferredTextSize

	React.useEffect(function()
		-- Skip call to TextService call when no text provided.
		if text == nil then
			setTextSize(nil)
			return
		end

		setTextSize(
			TextService:GetTextSize(
				text,
				fontStyle.FontSize :: number,
				fontStyle.Font :: Enum.Font,
				if frameSize then frameSize else Vector2.new(math.huge, math.huge)
			)
		)
	end, { text, fontStyle, frameSize, preferredTextSize } :: { unknown })

	return textSize
end

return useTextSize
