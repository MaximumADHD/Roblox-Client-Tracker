local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)

local Components = Foundation.Components
local Types = require(Components.Types)

type FontStyle = Types.FontStyle

local usePreferences = require(Foundation.Providers.Preferences.usePreferences)

local TextService = require(Foundation.Utility.Wrappers.Services).TextService

local function useTextSize(text: string, fontStyle: FontStyle, frameSize: Vector2?): Vector2
	local textSize, setTextSize = React.useState(Vector2.new(0, 0))
	local preferredTextSize = usePreferences().preferredTextSize

	React.useEffect(function()
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
