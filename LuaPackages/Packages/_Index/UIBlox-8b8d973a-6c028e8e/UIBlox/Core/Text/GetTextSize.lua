-- This file implements a wrapper function for TextService:GetTextSize()
-- Extra padding is added to the returned size because of a rounding issue with GetTextSize
-- TODO: Remove this temporary additional padding when CLIPLAYEREX-1633 is fixed

local TextService = game:GetService("TextService")

local TEMPORARY_TEXT_SIZE_PADDING = Vector2.new(2, 2)

local function getTextSize(...)
	local textSize = TextService:GetTextSize(...)
	return textSize + TEMPORARY_TEXT_SIZE_PADDING
end

return getTextSize