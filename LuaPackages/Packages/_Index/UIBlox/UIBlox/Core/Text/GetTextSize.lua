-- This file implements a wrapper function for TextService:GetTextSize()
-- Extra padding is added to the returned size because of a rounding issue with GetTextSize
-- TODO: Remove this temporary additional padding when CLIPLAYEREX-1633 is fixed

local TextService = game:GetService("TextService")

local CleanRichTextTags = require(script.Parent.CleanRichTextTags)
local UIBlox = script.Parent.Parent.Parent
local UIBloxConfig = require(UIBlox.UIBloxConfig)
local Logger = require(UIBlox.Logger)

local TEMPORARY_TEXT_SIZE_PADDING = Vector2.new(2, 2)

local function getTextSize(
	string: string,
	fontSize: number,
	font: Enum.Font,
	frameSize: Vector2,
	--[[
		Removes all RichText tags from input string. 

		This does not guarantee correct calculation of text containing RichText. This simply removes the tags from the calculation.
		However, if your rich text only contains tags that do not modify size (e.g. color, transparency, etc) then this will correctly
		calculate the text size.

		To be deprecated once UISYS-1260 is completed.
	]]
	ignoreRichTextTags: boolean?
)
	if UIBloxConfig.useGetTextBoundsAsync then
		if UIBloxConfig.ignoreRichTextTagsForTextSizeCalculation and ignoreRichTextTags then
			string = CleanRichTextTags(string)
		end

		local params = Instance.new("GetTextBoundsParams")
		params.Font = Font.fromEnum(font)
		params.Size = fontSize
		params.Text = string
		params.Width = frameSize.X

		-- pcall because GetTextBoundsAsync can error if network call fails
		local success, value = pcall(function()
			return TextService:GetTextBoundsAsync(params)
		end)
		if success then
			local textSize = Vector2.new(value.X, math.min(value.Y, frameSize.Y))
			return textSize + TEMPORARY_TEXT_SIZE_PADDING
		else
			Logger:warning("GetTextBoundsAsync call failed, falling back to frame size. Error: ", value)
			return frameSize
		end
	else
		if UIBloxConfig.ignoreRichTextTagsForTextSizeCalculation and ignoreRichTextTags then
			string = CleanRichTextTags(string)
		end

		local textSize = TextService:GetTextSize(string, fontSize, font, frameSize)

		return textSize + TEMPORARY_TEXT_SIZE_PADDING
	end
end

return getTextSize
