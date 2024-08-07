-- Used to determine width of middle content for dynamically sizing children, see PartialPageModal

local MAX_WIDTH = 540

local function getModalWindowWidth(screenWidth: number)
	return screenWidth < MAX_WIDTH and screenWidth or MAX_WIDTH
end

return getModalWindowWidth
