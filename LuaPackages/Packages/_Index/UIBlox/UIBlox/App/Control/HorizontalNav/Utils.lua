local Utils = {}

local GRADIENT_THRESHOLD = 20

--[[
	Returns 3 values to indicate whether to show:
	1. any gradient frame at all for this scrolling frame
	2. the left gradient
	3. the right gradient
]]
function Utils.shouldShowGradientsForScrollingFrame(scrollingFrame: ScrollingFrame)
	local absoluteWidth = scrollingFrame.AbsoluteSize.X
	local canvasWidth = scrollingFrame.CanvasSize.X.Offset
	local canvasPositionX = scrollingFrame.CanvasPosition.X

	local shouldShowGradient = absoluteWidth < canvasWidth

	local showLeftGradient = canvasPositionX > GRADIENT_THRESHOLD
	local showRightGradient = canvasPositionX + absoluteWidth < canvasWidth - GRADIENT_THRESHOLD

	return shouldShowGradient, showLeftGradient, showRightGradient
end

return Utils
