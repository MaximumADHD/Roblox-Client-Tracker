local function isScrollingFrameOverflowingY(instance: ScrollingFrame, tolerancePx: number?): boolean
	local tolerance = if tolerancePx ~= nil then tolerancePx else 1

	return instance.AbsoluteCanvasSize.Y > instance.AbsoluteWindowSize.Y + tolerance
end

return isScrollingFrameOverflowingY
