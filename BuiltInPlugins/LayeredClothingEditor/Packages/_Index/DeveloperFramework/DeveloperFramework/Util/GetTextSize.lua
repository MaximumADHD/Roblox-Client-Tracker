local TextService = game:GetService("TextService")
local FFlagRemoveUILibraryGetTextSize = game:GetFastFlag("RemoveUILibraryGetTextSize")

local FONT_SIZE_MEDIUM = 16
local FONT = Enum.Font.SourceSans
local DEFAULT_FRAME_SIZE = Vector2.new(math.huge, math.huge)

local function GetTextSize(text, fontSize, font, frameSize)
	assert(FFlagRemoveUILibraryGetTextSize)
	fontSize = fontSize or FONT_SIZE_MEDIUM
	font = font or FONT
	frameSize = frameSize or DEFAULT_FRAME_SIZE
	return TextService:GetTextSize(text, fontSize, font, frameSize)
end

return GetTextSize
