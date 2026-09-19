local Main = script:FindFirstAncestor("StudioFoundation")
local Packages = Main.Parent

local Foundation = require(Packages.Foundation)
local PopoverAlign = Foundation.Enums.PopoverAlign
local PopoverSide = Foundation.Enums.PopoverSide
type PopoverAlign = Foundation.PopoverAlign
type PopoverSide = Foundation.PopoverSide

local Types = require(Main.Types)
type PanelPosition = Types.PanelPosition

--[=[
  Calculates the positioning properties for a panel, like a popover or tooltip.

  It determines the anchor points and offset needed to place a "subject" panel
  relative to an anchor widget, based on the side and alignment configurations.

  @param side The side of the target to position against.
  @param align The alignment along the chosen side. Start means the start of the panel will be aligned with the anchor start along the chosen side
  @param point If provided, the panel is positioned at this exact point from an anchor top-left corner. If your component doesn't start at 0,0 remember to subtract its top-left coordinate from absolute position if you are using it.
  @return PanelPosition A table with the calculated data.
]=]
local function getPosition(side: Types.SideConfig, align: Types.AlignConfig, point: Vector2?): PanelPosition
	local sideOffset = 0
	local alignOffset = 0
	local sidePosition = side
	local alignPosition = align
	if typeof(side) == "table" then
		sideOffset = side.offset
		sidePosition = side.position
	end
	if typeof(align) == "table" then
		alignOffset = align.offset
		alignPosition = align.position
	end
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
		offset = Vector2.new(alignOffset, -sideOffset)
		targetAnchorPoint = Vector2.new(alignValue, 0)
		subjectAnchorPoint = Vector2.new(alignValue, 1)
	elseif sidePosition == PopoverSide.Bottom then
		offset = Vector2.new(alignOffset, sideOffset)
		targetAnchorPoint = Vector2.new(alignValue, 1)
		subjectAnchorPoint = Vector2.new(alignValue, 0)
	elseif sidePosition == PopoverSide.Left then
		offset = Vector2.new(-sideOffset, alignOffset)
		targetAnchorPoint = Vector2.new(0, alignValue)
		subjectAnchorPoint = Vector2.new(1, alignValue)
	elseif sidePosition == PopoverSide.Right then
		offset = Vector2.new(sideOffset, alignOffset)
		targetAnchorPoint = Vector2.new(1, alignValue)
		subjectAnchorPoint = Vector2.new(0, alignValue)
	end

	-- If we were given the exact point, usually for the context menu, just position the menu at this point starting from the top-left corner.
	if point then
		offset = point
		targetAnchorPoint = Vector2.new(0, 0)
	end
	return { targetAnchorPoint = targetAnchorPoint, subjectAnchorPoint = subjectAnchorPoint, offset = offset }
end

return getPosition
