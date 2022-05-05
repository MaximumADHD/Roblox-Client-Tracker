-- TODO: jbousellam - Remove file with FFlagRemoveUILibraryGetTextSize
--[[
	Used to calculate the absolute bounds of a string of text.
	Defaults to medium default font, but can be overridden.
]]

local TextService = game:GetService("TextService")

local Plugin = script.Parent.Parent.Parent
local Constants = require(Plugin.Core.Util.Constants)

local getTextSize = function(text, fontSize, font, frameSize)
	fontSize = fontSize or Constants.FONT_SIZE_MEDIUM
	font = font or Constants.FONT
	frameSize = frameSize or Vector2.new(0, 0)

	return TextService:GetTextSize(text, fontSize, font, frameSize)
end

return getTextSize
