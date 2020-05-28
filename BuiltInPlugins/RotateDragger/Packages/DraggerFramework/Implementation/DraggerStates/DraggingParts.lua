local Workspace = game:GetService("Workspace")
local ChangeHistoryService = game:GetService("ChangeHistoryService")

local Framework = script.Parent.Parent.Parent
local Packages = Framework.Parent
local Library = Framework.Parent.Parent

local Roact = require(Packages.Roact)
local DraggerStateType = require(script.Parent.Parent.DraggerStateType)
local SelectionHelper = require(Framework.Utility.SelectionHelper)
local DragHelper = require(Framework.Utility.DragHelper)
local SelectionWrapper = require(Framework.Utility.SelectionWrapper)
local PartMover = require(Framework.Utility.PartMover)
local AttachmentMover = require(Framework.Utility.AttachmentMover)
local setInsertPoint = require(Framework.Utility.setInsertPoint)
local StandardCursor = require(Framework.Utility.StandardCursor)

local getFFlagMinCursorChange = require(Framework.Flags.getFFlagMinCursorChange)
local getFFlagMoveViaSelectionCenter = require(Framework.Flags.getFFlagMoveViaSelectionCenter)
local getFFlagHandleNoRotateTarget = require(Framework.Flags.getFFlagHandleNoRotateTarget)
local getFFlagFixDraggerCursors = require(Framework.Flags.getFFlagFixDraggerCursors)

local DraggingParts = {}
DraggingParts.__index = DraggingParts

local function areJointsEnabled()
    return Library.Parent:GetJoinMode() ~= Enum.JointCreationMode.None
end

function DraggingParts.new(draggerTool, dragStart)
    local self = setmetatable({
        _partMover = PartMover.new(),
        _attachmentMover = AttachmentMover.new(),
        _dragStart = dragStart,
    }, DraggingParts)
    self:_init(draggerTool)
    return self
end

function DraggingParts:enter(draggerTool)

end

function DraggingParts:leave(draggerTool)

end

function DraggingParts:_init(draggerTool)
    local t = tick()
    draggerTool._boundsChangedTracker:uninstall()
    self:_initIgnoreList(draggerTool._derivedWorldState:getObjectsToTransform())

	local breakJointsToOutsiders = true
	local partsToMove, attachmentsToMove =
		draggerTool._derivedWorldState:getObjectsToTransform()
	if getFFlagMoveViaSelectionCenter() then
		self._partMover:setDragged(
			partsToMove, draggerTool._derivedWorldState:getOriginalCFrameMap(), breakJointsToOutsiders,
			draggerTool._derivedWorldState:getBoundingBox().Position)
	else
		self._partMover:setDragged(
			partsToMove, draggerTool._derivedWorldState:getOriginalCFrameMap(), breakJointsToOutsiders)
	end
	self._attachmentMover:setDragged(
        attachmentsToMove)

    local timeToStartDrag = tick() - t
    draggerTool:_analyticsRecordFreeformDragBegin(timeToStartDrag)
end

function DraggingParts:_initIgnoreList(parts)
    local filter = table.create(#parts + 1)
	for i, part in ipairs(parts) do
		filter[i] = part
	end
	table.insert(filter, self._partMover:getIgnorePart())
    self._raycastFilter = filter
end

function DraggingParts:render(draggerTool)
	if getFFlagFixDraggerCursors() then
		if getFFlagMinCursorChange() then
			draggerTool:setMouseCursor(StandardCursor.getClosedHand())
		else
			draggerTool.props.Mouse.Icon = StandardCursor.getClosedHand()
		end
	else
		draggerTool.props.Mouse.Icon = "rbxasset://SystemCursors/ClosedHand"
	end

    if areJointsEnabled() and self._jointPairs then
        return self._jointPairs:renderJoints(
            draggerTool._derivedWorldState:getHandleScale())
    end
end

function DraggingParts:processSelectionChanged(draggerTool)
    -- If something unexpectedly changes the selection out from underneath us,
    -- bail out of the drag.
    self:_endFreeformSelectionDrag(draggerTool)
end

function DraggingParts:processMouseDown(draggerTool)
    error("Mouse should already be down while dragging parts.")
end

function DraggingParts:processViewChanged(draggerTool)
    self:_updateFreeformSelectionDrag(draggerTool, draggerTool.state.tiltRotate)
end

function DraggingParts:processMouseUp(draggerTool)
    self:_endFreeformSelectionDrag(draggerTool)
end

function DraggingParts:processKeyDown(draggerTool, keyCode)
    if keyCode == Enum.KeyCode.R then
        draggerTool._sessionAnalytics.dragRotates = draggerTool._sessionAnalytics.dragRotates + 1
        draggerTool._dragAnalytics.dragRotates = draggerTool._dragAnalytics.dragRotates + 1
        self:_tiltRotateFreeformSelectionDrag(draggerTool, Vector3.new(0, 1, 0))
    elseif keyCode == Enum.KeyCode.T then
        draggerTool._sessionAnalytics.dragTilts = draggerTool._sessionAnalytics.dragTilts + 1
        draggerTool._dragAnalytics.dragTilts = draggerTool._dragAnalytics.dragTilts + 1
        self:_tiltRotateFreeformSelectionDrag(draggerTool, Vector3.new(1, 0, 0))
    end
end

function DraggingParts:_tiltRotateFreeformSelectionDrag(draggerTool, axis)
	local mainCFrame = draggerTool._derivedWorldState:getBoundingBox()
	local newTiltRotate
	if getFFlagHandleNoRotateTarget() then
		local lastTargetMatrix
		if self._lastDragTarget then
			lastTargetMatrix = self._lastDragTarget.targetMatrix
		end
		newTiltRotate = DragHelper.updateTiltRotate(
			self._raycastFilter, mainCFrame, lastTargetMatrix,
			draggerTool.state.tiltRotate, axis)
	else
		newTiltRotate = DragHelper.updateTiltRotate(
			SelectionWrapper:Get(), mainCFrame, self._lastDragTarget.targetMatrix,
			draggerTool.state.tiltRotate, axis)
	end
	self:_updateFreeformSelectionDrag(draggerTool, newTiltRotate)
	draggerTool:setState({
		tiltRotate = newTiltRotate,
	})
end

function DraggingParts:_updateFreeformSelectionDrag(draggerTool, tiltRotate)
	local lastTargetMatrix = nil
	if self._lastDragTarget then
		lastTargetMatrix = self._lastDragTarget.targetMatrix
	end

	local forceLocal = true
	local localBoundingBoxCFrame, localBoundingBoxOffset, localBoundingBoxSize =
		draggerTool._derivedWorldState:getBoundingBox(forceLocal)
	local dragTarget = DragHelper.getDragTarget(
		self._dragStart.clickPoint,
		self._raycastFilter,
		localBoundingBoxCFrame,
		self._dragStart.basisPoint,
		localBoundingBoxSize,
		localBoundingBoxOffset,
		tiltRotate or CFrame.new(),
		lastTargetMatrix)

	draggerTool:_analyticsRecordFreeformDragUpdate(dragTarget)

	if dragTarget then
		self._lastDragTarget = dragTarget
		local originalCFrame = localBoundingBoxCFrame
		local newCFrame = dragTarget.mainCFrame
		local globalTransform = newCFrame * originalCFrame:Inverse()
		self._partMover:transformTo(globalTransform)
		self._attachmentMover:transformTo(globalTransform)
		if areJointsEnabled() then
			self._jointPairs = self._partMover:computeJointPairs(globalTransform)
		end
	end
end

--[[
	Refresh selection info to reflect the new CFrames of the dragged parts
	and return to the Ready state.
]]
function DraggingParts:_endFreeformSelectionDrag(draggerTool)
    local attachment = self._dragStart.attachmentBeingDragged
	if attachment then
		-- Single attachment being dragged case -- In that case we need to
		-- potentially reparent the attachment to the part it was dragged onto.
		local mouseRay = SelectionHelper.getMouseRay()
		local worldHit = Workspace:FindPartOnRay(mouseRay)
		if worldHit then
			local worldCFrame = attachment.WorldCFrame
			if attachment.Parent ~= worldHit then
				attachment.Parent = worldHit
				attachment.WorldCFrame = worldCFrame
			end
		else
            -- When there's no valid target, reset the AttachmentMover so we
            -- don't move the attachment.
			self._attachmentMover:transformTo(CFrame.new())
		end
	end

	if areJointsEnabled() and self._jointPairs then
		self._jointPairs:createJoints()
	end
	self._jointPairs = nil
	self._partMover:commit()
	self._attachmentMover:commit()
	draggerTool._boundsChangedTracker:install()

	draggerTool:_updateSelectionInfo()

	draggerTool:transitionToState({
        tiltRotate = Roact.None,
    }, DraggerStateType.Ready)

	ChangeHistoryService:SetWaypoint("End freeform drag")
	draggerTool:_analyticsSendFreeformDragged()

	local cframe, offset = draggerTool._derivedWorldState:getBoundingBox()
	setInsertPoint(cframe * offset)
end

return DraggingParts