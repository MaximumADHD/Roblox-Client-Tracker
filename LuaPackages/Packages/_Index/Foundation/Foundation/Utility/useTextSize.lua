local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)

local Components = Foundation.Components
local Types = require(Components.Types)

type FontStyle = Types.FontStyle

local usePreferences = require(Foundation.Providers.Preferences.usePreferences)

local TextService = require(Foundation.Utility.Wrappers.Services).TextService

local function useTextSize(text: string?, fontStyle: FontStyle, frameSize: Vector2?): Vector2?
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
