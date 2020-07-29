local GetTextHeight = require(script.Parent.Parent.GetTextHeight)

local function getExpandableTextHeights(font, frameWidth, textContent, compactNumberOfLines)
	local textSize = font.BaseSize * font.Body.RelativeSize
	local fullTextHeight = GetTextHeight(textContent, font.Body.Font, textSize, frameWidth)
	local compactHeight = compactNumberOfLines * textSize

	return fullTextHeight, compactHeight
end

--Function for whether or not an ExpandableTextArea can expand given parameters
--regarding font, text, width of the frame container, and number of lines in the compact view
local function getCanExpand(font, frameWidth, textContent, compactNumberOfLines)
	local fullTextHeight, compactHeight = getExpandableTextHeights(font, frameWidth, textContent, compactNumberOfLines)
	return fullTextHeight > compactHeight
end

return {
	getExpandableTextHeights = getExpandableTextHeights,
	getCanExpand = getCanExpand,
}