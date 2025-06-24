local function isPointInGuiObjectBounds(guiObject: GuiObject?, point: Vector2): boolean
	if not guiObject then
		return false
	end
	local absPos = guiObject.AbsolutePosition
	local absSize = guiObject.AbsoluteSize
	local minX, minY = absPos.X, absPos.Y
	local maxX, maxY = absPos.X + absSize.X, absPos.Y + absSize.Y

	return point.X >= minX and point.X <= maxX and point.Y >= minY and point.Y <= maxY
end

return isPointInGuiObjectBounds
