-- TODO: jbousellam - Remove file with FFlagRemoveUILibraryGetTextSize
local TextService = game:GetService("TextService")
local FFlagRemoveUILibraryGetTextSize = game:GetFastFlag("RemoveUILibraryGetTextSize")

local FStringMainFont = game:DefineFastString("StudioBuiltinPluginDefaultFont", "Gotham")

local FONT_SIZE_MEDIUM = 16
local FONT = Enum.Font.Gotham
pcall(function()
	FONT = Enum.Font[FStringMainFont]
end)

local function GetTextSize(text, fontSize, font, frameSize)
	assert(not FFlagRemoveUILibraryGetTextSize)
	fontSize = fontSize or FONT_SIZE_MEDIUM
	font = font or FONT
	frameSize = frameSize or Vector2.new(math.huge, math.huge)

	return TextService:GetTextSize(text, fontSize, font, frameSize)
end

return GetTextSize