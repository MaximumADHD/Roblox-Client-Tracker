--[[
	class FreeformDragger

	A freeform dragger is invoked when you return "FreeformSelectionDrag" from
	the dispatchWorldClick function and move the mouse sufficiently far to
	initiate a freeform drag rather than a click.

	The purpose of the freeform drag is to move objects when you click and
	drag directly on the objects rather than clicking on a drag handle.
]]
local FreeformDragger = {}
FreeformDragger.__index = FreeformDragger

-- dragInfo is the table which was returned as the second return value from
-- dispatchWorldClick
function FreeformDragger.new(draggerContext, draggerToolModel, dragInfo)
	return setmetatable({
		_draggerContext = draggerContext,
		_draggerToolModel = draggerToolModel,
		_dragInfo = dragInfo,
	}, FreeformDragger)
end

function FreeformDragger:render()
	return nil
end

function FreeformDragger:rotate(axis) end

function FreeformDragger:update() end

function FreeformDragger:destroy() end

return FreeformDragger
