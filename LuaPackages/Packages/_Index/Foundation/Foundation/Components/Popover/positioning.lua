local Foundation = script:FindFirstAncestor("Foundation")

local Flags = require(Foundation.Utility.Flags)
local PopoverAlign = require(Foundation.Enums.PopoverAlign)
local PopoverSide = require(Foundation.Enums.PopoverSide)

type PopoverSide = PopoverSide.PopoverSide
type PopoverAlign = PopoverAlign.PopoverAlign

local function calculatePopoverBounds(
	side: PopoverSide,
	sideOffset: number,
	alignOffset: number,
	arrowSize: number,
	contentSize: Vector2
): Vector2
	local popoverSize = contentSize
	if side == PopoverSide.Top or side == PopoverSide.Bottom then
		popoverSize += Vector2.new(alignOffset, sideOffset + arrowSize)
	else
		popoverSize += Vector2.new(sideOffset + arrowSize, alignOffset)
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
local function calculateSide(desiredSide: PopoverSide, object: Rect, screen: Rect, popoverSize: Vector2): PopoverSide
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

local function calculateAlign(
	side: PopoverSide,
	desiredAlign: PopoverAlign,
	anchor: Rect,
	screen: Rect,
	popoverSize: Vector2
): PopoverAlign
	local isVerticalSide = side == PopoverSide.Top or side == PopoverSide.Bottom

	-- If the main axis is vertical we don't need to adjust Y axis and vice versa.
	if isVerticalSide then
		if desiredAlign == PopoverAlign.Start then
			if anchor.Min.X + popoverSize.X > screen.Max.X then
				return PopoverAlign.End
			end
		elseif desiredAlign == PopoverAlign.End then
			if anchor.Max.X - popoverSize.X < screen.Min.X then
				return PopoverAlign.Start
			end
		end
	else
		if desiredAlign == PopoverAlign.Start then
			if anchor.Min.Y + popoverSize.Y > screen.Max.Y then
				return PopoverAlign.End
			end
		elseif desiredAlign == PopoverAlign.End then
			if anchor.Max.Y - popoverSize.Y < screen.Min.Y then
				return PopoverAlign.Start
			end
		end
	end
	return desiredAlign
end

local function adjustForOnScreenKeyboard(screenRect: Rect, keyboardPosition: Vector2, topGuiInset: Vector2): Rect
	-- Keyboard position doesn't account for top bar insets, so we need to adjust for that
	local adjustedKeyboardPosition = keyboardPosition - topGuiInset
	-- TODO: either manually get the vertical top device inset or fix keyboard positioning in engine
	--       right now keyboard position originates from the screen's 0,0 without any insets
	local adjustedMaxY = math.min(screenRect.Max.Y, adjustedKeyboardPosition.Y)
	return Rect.new(screenRect.Min, Vector2.new(screenRect.Max.X, adjustedMaxY))
end

local calculatePositions: (
	side: PopoverSide,
	sideOffset: number,
	align: PopoverAlign,
	alignOffset: number,
	anchor: Rect,
	screen: Rect,
	arrowSize: number,
	contentSize: Vector2
) -> (Vector2, Vector2, Vector2)

if Flags.FoundationPopoverOverflow then
	calculatePositions = function(
		side: PopoverSide,
		sideOffset: number,
		align: PopoverAlign,
		alignOffset: number,
		anchor: Rect,
		screen: Rect,
		arrowSize: number,
		contentSize: Vector2
	): (Vector2, Vector2, Vector2)
		local pos = { X = 0, Y = 0 }
		local arrow = { X = 0, Y = 0 }
		local anchorPoint = { X = 0, Y = 0 }

		local isVertical = side == PopoverSide.Top or side == PopoverSide.Bottom
		-- For both of these the arrow is after the popover content on the main axis.
		local isTopLeft = side == PopoverSide.Top or side == PopoverSide.Left
		local mainAxis, crossAxis = "X", "Y"
		local anchorSize = anchor.Height
		local mainAxisAnchorStart = anchor.Min.X
		local crossAxisAnchorStart = anchor.Min.Y
		local crossAxisContentSize = contentSize.Y
		local mainAxisContentSize = contentSize.X
		local mainAxisAnchorEnd = anchor.Max.X
		local crossAxisAnchorEnd = anchor.Max.Y
		local crossAxisScreenStart = screen.Min.Y
		local crossAxisScreenEnd = screen.Max.Y
		local mainAxisScreenStart = screen.Min.X
		local mainAxisScreenEnd = screen.Max.X
		if isVertical then
			mainAxis, crossAxis = "Y", "X"
			anchorSize = anchor.Width
			mainAxisAnchorStart = anchor.Min.Y
			crossAxisAnchorStart = anchor.Min.X
			crossAxisContentSize = contentSize.X
			mainAxisContentSize = contentSize.Y
			mainAxisAnchorEnd = anchor.Max.Y
			crossAxisAnchorEnd = anchor.Max.X
			crossAxisScreenStart = screen.Min.X
			crossAxisScreenEnd = screen.Max.X
			mainAxisScreenStart = screen.Min.Y
			mainAxisScreenEnd = screen.Max.Y
		end

		local mainAxisOffset = sideOffset + arrowSize
		if isTopLeft then
			pos[mainAxis] = mainAxisAnchorStart - mainAxisOffset - mainAxisContentSize
			arrow[mainAxis] = mainAxisContentSize
		else -- Bottom or Right
			pos[mainAxis] = mainAxisAnchorEnd + mainAxisOffset
			arrow[mainAxis] = 0
		end

		if align == PopoverAlign.Start then
			pos[crossAxis] = crossAxisAnchorStart + alignOffset
		elseif align == PopoverAlign.Center then
			pos[crossAxis] = crossAxisAnchorStart + anchorSize / 2 - crossAxisContentSize / 2 + alignOffset
		else -- End
			pos[crossAxis] = crossAxisAnchorEnd
				+ if Flags.FoundationPopoverNegateAlignOffsetOnFlip then -alignOffset else alignOffset
			anchorPoint[crossAxis] = 1
		end

		local crossAxisContentStart = pos[crossAxis] - anchorPoint[crossAxis] * crossAxisContentSize

		-- Clamp to screen on the cross-axis, adjusting position and anchor point
		local crossAxisContentEnd = crossAxisContentStart + crossAxisContentSize
		if crossAxisContentStart < crossAxisScreenStart then
			anchorPoint[crossAxis] = 0
			pos[crossAxis] = crossAxisScreenStart
		elseif crossAxisContentEnd > crossAxisScreenEnd then
			anchorPoint[crossAxis] = 1
			pos[crossAxis] = crossAxisScreenEnd
		end

		crossAxisContentStart = pos[crossAxis] - anchorPoint[crossAxis] * crossAxisContentSize
		crossAxisContentEnd = crossAxisContentStart + crossAxisContentSize

		-- Arrow position
		-- The arrow should be in the center of the intersection between the popover and the anchor.
		-- It also should not be closer to the edges of the intersection than half of its own size.
		local intersectionStart = math.max(crossAxisAnchorStart, crossAxisContentStart)
		local intersectionEnd = math.min(crossAxisAnchorEnd, crossAxisContentEnd)

		local arrowPlacement
		if intersectionStart <= intersectionEnd then
			-- Place an arrow in the center of the intersection, clamped to avoid the edges.
			arrowPlacement = (intersectionStart + intersectionEnd) / 2
		else
			-- Intersection is too small or doesn't exist. Place an arrow at the corner of the tooltip
			-- closest to the anchor.
			if crossAxisContentEnd < crossAxisAnchorStart then
				arrowPlacement = crossAxisContentEnd - arrowSize
			else
				arrowPlacement = crossAxisContentStart + arrowSize
			end
		end
		arrow[crossAxis] = arrowPlacement - pos[crossAxis]

		-- Main-axis clamping
		-- Most of the time the popover is positioned in a place where there is enough space after side flipping.
		-- However, even after flip there may be not enough space.
		-- Sad situation - we either cover the other elements on the screen including the anchor making popover probably impossible to close, or clipping the popover by the screen.
		-- So far we decided to keep the popover visible as priority
		pos[mainAxis] = math.clamp(
			pos[mainAxis],
			mainAxisScreenStart,
			math.max(mainAxisScreenEnd - mainAxisContentSize - mainAxisOffset, 0)
		)
		-- Adjust for screen's top-left offset
		pos.X -= screen.Min.X
		pos.Y -= screen.Min.Y

		return Vector2.new(pos.X, pos.Y), Vector2.new(arrow.X, arrow.Y), Vector2.new(anchorPoint.X, anchorPoint.Y)
	end
else
	calculatePositions = function(
		side: PopoverSide,
		sideOffset: number,
		align: PopoverAlign,
		alignOffset: number,
		anchor: Rect,
		screen: Rect,
		arrowSize: number,
		contentSize: Vector2
	): (Vector2, Vector2, Vector2)
		local anchorSize = anchor.Max - anchor.Min
		local screenSize = screen.Max - screen.Min
		-- 0 is passed for alignOffset to keep the old implementation
		local popoverSize = calculatePopoverBounds(side, sideOffset, 0, arrowSize, contentSize)

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
		local xLimit = math.max(0, screenSize.X - popoverSize.X)
		local yLimit = math.max(0, screenSize.Y - popoverSize.Y)
		x = math.clamp(x, 0, xLimit)
		y = math.clamp(y, 0, yLimit)

		return Vector2.new(x, y), Vector2.new(arrowX, arrowY), Vector2.new(0, 0)
	end
end

return {
	adjustForOnScreenKeyboard = adjustForOnScreenKeyboard,
	isOnScreen = isOnScreen,
	calculateSide = calculateSide,
	calculatePositions = calculatePositions,
	calculatePopoverBounds = calculatePopoverBounds,
	calculateAlign = calculateAlign,
}
