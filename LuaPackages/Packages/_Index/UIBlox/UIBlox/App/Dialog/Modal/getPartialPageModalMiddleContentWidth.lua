-- Used to determine width of middle content for dynamically sizing children in the content
-- Example: Multi-lined text that requires to know the width of its space that can also dynamically change its height.

local ModalRoot = script.Parent
local getModalWindowWidth = require(ModalRoot.getModalWindowWidth)

local MARGIN = 24

local function getPartialPageModalMiddleContentWidth(screenWidth: number, modalMarginSize: number?)
	return getModalWindowWidth(screenWidth) - 2 * (modalMarginSize or MARGIN)
end

return getPartialPageModalMiddleContentWidth
