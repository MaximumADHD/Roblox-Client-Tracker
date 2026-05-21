local TextService = game:GetService("TextService")

local FONT_SIZE_MEDIUM = 16
local FONT = Enum.Font.SourceSans
local DEFAULT_FRAME_SIZE = Vector2.new(math.huge, math.huge)

local function GetTextSize(text: string, fontSize: number?, font: Enum.Font?, frameSize: Vector2?)
	fontSize = fontSize or FONT_SIZE_MEDIUM
	font = font or FONT
	frameSize = frameSize or DEFAULT_FRAME_SIZE
	return TextService:GetTextSize(text, fontSize, font, frameSize)
end

return GetTextSize
