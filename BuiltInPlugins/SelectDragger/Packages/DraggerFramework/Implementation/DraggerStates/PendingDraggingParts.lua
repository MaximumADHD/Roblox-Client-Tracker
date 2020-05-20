local UserInputService = game:GetService("UserInputService")

local Framework = script.Parent.Parent.Parent
local DraggerStateType = require(Framework.Implementation.DraggerStateType)
local SelectionWrapper = require(Framework.Utility.SelectionWrapper)
local StandardCursor = require(Framework.Utility.StandardCursor)

local getFFlagFixDraggerCursors = require(Framework.Flags.getFFlagFixDraggerCursors)

local FREEFORM_DRAG_THRESHOLD = 4

local PendingDraggingParts = {}
PendingDraggingParts.__index = PendingDraggingParts

function PendingDraggingParts.new(draggerTool, dragStart)
    return setmetatable({
        _dragStart = dragStart,
    }, PendingDraggingParts)
end

function PendingDraggingParts:enter(draggerTool)

end

function PendingDraggingParts:leave(draggerTool)

end

function PendingDraggingParts:render(draggerTool)
    if getFFlagFixDraggerCursors() then
        draggerTool.props.Mouse.Icon = StandardCursor.getClosedHand()
    else
        draggerTool.props.Mouse.Icon = "rbxasset://SystemCursors/ClosedHand"
    end
end

function PendingDraggingParts:processSelectionChanged(draggerTool)
    -- Don't clear the state back to Ready in this case. In Run mode the
    -- selection should change while we're sitting in Pending state, and
    -- that's okay, because we already recorded how to drag the selection
    -- relative to the mouse on down.
end

function PendingDraggingParts:processMouseDown(draggerTool)
    error("Mouse should already be down while pending part drag.")
end

function PendingDraggingParts:processViewChanged(draggerTool)
	local location = UserInputService:GetMouseLocation()
	local screenMovement = location - self._dragStart.mouseLocation

	if screenMovement.Magnitude > FREEFORM_DRAG_THRESHOLD then
		draggerTool:transitionToState({
			tiltRotate = CFrame.new()
		}, DraggerStateType.DraggingParts, self._dragStart)
    end
end

function PendingDraggingParts:processMouseUp(draggerTool)
    -- Special case for selecting FaceInstances (Decals / Textures).
    -- Only select a FaceInstance if we mousedown, and then mouseup on
    -- the same part, but without moving enough to start a drag.
    if self._dragStart.clickedFaceInstance then
        SelectionWrapper:Set({self._dragStart.clickedFaceInstance})
        draggerTool:_processSelectionChanged()
        draggerTool:_analyticsSendFaceInstanceSelected()
    end

    draggerTool:transitionToState({}, DraggerStateType.Ready)
end

function PendingDraggingParts:processKeyDown(draggerTool, keyCode)
    -- Nothing to do.
end

return PendingDraggingParts