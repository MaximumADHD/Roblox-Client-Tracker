local Foundation = script:FindFirstAncestor("Foundation")

local PopoverSide = require(Foundation.Enums.PopoverSide)
local PopoverAlign = require(Foundation.Enums.PopoverAlign)

type PopoverSide = PopoverSide.PopoverSide
type PopoverAlign = PopoverAlign.PopoverAlign

local function calculatePopoverBounds(
	side: PopoverSide,
	sideOffset: number,
	arrowSize: number,
	contentSize: Vector2
): Vector2
	local popoverSize = contentSize
	if side == PopoverSide.Top or side == PopoverSide.Bottom then
		popoverSize += Vector2.new(0, sideOffset + arrowSize)
	else
		popoverSize += Vector2.new(sideOffset + arrowSize, 0)
	end
	return popoverSize
end

local function isOnScreen(object: Rect, screen: Rect): boolean
	if
		object.Min.X > screen.Max.X
		or object.Max.X < screen.Min.X
		or object.Min.Y > screen.Max.Y
		or object.Max.Y < screen.Min.Y
	then
		return false
	end
	return true
end

-- If the content is too large to fit on selected side, switch sides if space allows on the other side
local function calculateSide(
	desiredSide: PopoverSide,
	sideOffset: number,
	object: Rect,
	screen: Rect,
	arrowSize: number,
	contentSize: Vector2
): PopoverSide
	local popoverSize = calculatePopoverBounds(desiredSide, sideOffset, arrowSize, contentSize)
	if desiredSide == PopoverSide.Top then
		if object.Min.Y - popoverSize.Y < screen.Min.Y and object.Max.Y + popoverSize.Y < screen.Max.Y then
			return PopoverSide.Bottom
		end
	elseif desiredSide == PopoverSide.Bottom then
		if object.Max.Y + popoverSize.Y > screen.Max.Y and object.Min.Y - popoverSize.Y > screen.Min.Y then
			return PopoverSide.Top
		end
	elseif desiredSide == PopoverSide.Left then
		if object.Min.X - popoverSize.X < screen.Min.X and object.Max.X + popoverSize.X < screen.Max.X then
			return PopoverSide.Right
		end
	elseif desiredSide == PopoverSide.Right then
		if object.Max.X + popoverSize.X > screen.Max.X and object.Min.X - popoverSize.X > screen.Min.X then
			return PopoverSide.Left
		end
	end
	return desiredSide
end

local function calculatePositions(
	side: PopoverSide,
	sideOffset: number,
	align: PopoverAlign,
	alignOffset: number,
	anchor: Rect,
	screen: Rect,
	arrowSize: number,
	contentSize: Vector2
): (Vector2, Vector2)
	local anchorSize = anchor.Max - anchor.Min
	local screenSize = screen.Max - screen.Min
	local popoverSize = calculatePopoverBounds(side, sideOffset, arrowSize, contentSize)

	local x, y = 0, 0
	local arrowX, arrowY = 0, 0

	-- Calculate the position of the popover content and arrow
	if side == PopoverSide.Top then
		y = anchor.Min.Y - popoverSize.Y
		arrowY = contentSize.Y
	elseif side == PopoverSide.Bottom then
		y = anchor.Max.Y + popoverSize.Y - contentSize.Y
		arrowY = 0
	elseif side == PopoverSide.Left then
		x = anchor.Min.X - popoverSize.X
		arrowX = contentSize.X
	elseif side == PopoverSide.Right then
		x = anchor.Max.X + popoverSize.X - contentSize.X
		arrowX = 0
	end

	-- Calculate the alignment of the popover content and arrow
	if align == PopoverAlign.Start then
		if side == PopoverSide.Top or side == PopoverSide.Bottom then
			x = anchor.Min.X + alignOffset
			arrowX = math.min(anchorSize.X, popoverSize.X) / 2
		else
			y = anchor.Min.Y + alignOffset
			arrowY = math.min(anchorSize.Y, popoverSize.Y) / 2
		end
	elseif align == PopoverAlign.Center then
		if side == PopoverSide.Top or side == PopoverSide.Bottom then
			x = anchor.Min.X + alignOffset + (anchorSize.X - popoverSize.X) / 2
			arrowX = popoverSize.X / 2
		else
			y = anchor.Min.Y + alignOffset + (anchorSize.Y - popoverSize.Y) / 2
			arrowY = popoverSize.Y / 2
		end
	elseif align == PopoverAlign.End then
		if side == PopoverSide.Top or side == PopoverSide.Bottom then
			x = anchor.Min.X + alignOffset + anchorSize.X - popoverSize.X
			arrowX = math.max((anchorSize.X / 2) + popoverSize.X - anchorSize.X, popoverSize.X / 2)
		else
			y = anchor.Min.Y + alignOffset + anchorSize.Y - popoverSize.Y
			arrowY = math.max((anchorSize.Y / 2) + popoverSize.Y - anchorSize.Y, popoverSize.Y / 2)
		end
	end

	-- Adjust position based on screen position, which may be offset due to top insets
	x -= screen.Min.X
	y -= screen.Min.Y

	-- Ensure the content is within the screen bounds
	x = math.clamp(x, 0, screenSize.X - popoverSize.X)
	y = math.clamp(y, 0, screenSize.Y - popoverSize.Y)

	return Vector2.new(x, y), Vector2.new(arrowX, arrowY)
end

return {
	isOnScreen = isOnScreen,
	calculateSide = calculateSide,
	calculatePositions = calculatePositions,
}
