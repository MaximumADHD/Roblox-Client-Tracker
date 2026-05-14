local Foundation = script:FindFirstAncestor("Foundation")

local PopoverAlign = require(Foundation.Enums.PopoverAlign)
local PopoverSide = require(Foundation.Enums.PopoverSide)
type PopoverAlign = PopoverAlign.PopoverAlign
type PopoverSide = PopoverSide.PopoverSide

local Types = require(Foundation.Providers.StudioPanels.Types)
type PanelPosition = Types.PanelPosition

--[[
  Calculates the positioning properties for a popover panel in Studio.

  It determines the anchor points and offset needed to place a "subject" panel
  relative to an anchor widget, based on the side and alignment configurations.

  @param side The side of the target to position against.
  @param align The alignment along the chosen side. Start means the start of the panel will be aligned with the anchor start along the chosen side
  @param point If provided, the panel is positioned at this exact point from an anchor top-left corner.
  @param shadowSize The size of the shadow of the panel.
  @param arrowSize The size of the arrow of the panel.
  @return PanelPosition A table with the calculated data.
]]
local function getPanelPosition(
	side: Types.StudioSideConfig,
	align: Types.StudioAlignConfig,
	point: Vector2?,
	shadowSize: number?,
	arrowSize: number?
): PanelPosition
	local sideOffset = 0
	local alignOffset = 0
	local sidePosition = side
	local alignPosition = align

	if type(side) == "table" then
		sideOffset = side.offset
		sidePosition = side.position
	end
	if type(align) == "table" then
		alignOffset = align.offset
		alignPosition = align.position
	end

	local alignOffsetRaw = alignOffset
	local arrowOffset = arrowSize or 0
	local sideOffsetWithArrow = sideOffset + arrowOffset
	local alignValue = 0 -- Corresponds to PopoverAlign.Start
	if alignPosition == PopoverAlign.Center then
		alignValue = 0.5
		-- Offset is intentionally 0 here since it's not clear from which side it should be applied to the center
		alignOffset = 0
	elseif alignPosition == PopoverAlign.End then
		alignValue = 1
		alignOffset = -alignOffset
	end

	local offset, targetAnchorPoint, subjectAnchorPoint
	if sidePosition == PopoverSide.Top then
		offset = Vector2.new(alignOffset, -sideOffsetWithArrow)
		targetAnchorPoint = Vector2.new(alignValue, 0)
		subjectAnchorPoint = Vector2.new(alignValue, 1)
	elseif sidePosition == PopoverSide.Bottom then
		offset = Vector2.new(alignOffset, sideOffsetWithArrow)
		targetAnchorPoint = Vector2.new(alignValue, 1)
		subjectAnchorPoint = Vector2.new(alignValue, 0)
	elseif sidePosition == PopoverSide.Left then
		offset = Vector2.new(-sideOffsetWithArrow, alignOffset)
		targetAnchorPoint = Vector2.new(0, alignValue)
		subjectAnchorPoint = Vector2.new(1, alignValue)
	elseif sidePosition == PopoverSide.Right then
		offset = Vector2.new(sideOffsetWithArrow, alignOffset)
		targetAnchorPoint = Vector2.new(1, alignValue)
		subjectAnchorPoint = Vector2.new(0, alignValue)
	end

	-- Account for the arrow and shadow in the panel positioning.
	local resolvedShadowSize = shadowSize or 0
	if resolvedShadowSize > 0 then
		local isVerticalSide = sidePosition == PopoverSide.Top or sidePosition == PopoverSide.Bottom
		local extraSizeX = resolvedShadowSize * 2
		local extraSizeY = resolvedShadowSize * 2
		if isVerticalSide then
			extraSizeX += alignOffsetRaw
			extraSizeY += sideOffsetWithArrow
		else
			extraSizeX += sideOffsetWithArrow
			extraSizeY += alignOffsetRaw
		end

		offset += Vector2.new(
			subjectAnchorPoint.X * extraSizeX - resolvedShadowSize,
			subjectAnchorPoint.Y * extraSizeY - resolvedShadowSize
		)
	end

	-- If we were given the exact point, usually for the context menu, just position the menu at this point starting from the top-left corner.
	if point then
		offset = point
		targetAnchorPoint = Vector2.zero
	end

	return { targetAnchorPoint = targetAnchorPoint, subjectAnchorPoint = subjectAnchorPoint, offset = offset }
end

return getPanelPosition
