local Workspace = game:GetService("Workspace")
local ChangeHistoryService = game:GetService("ChangeHistoryService")

local DraggerFramework = script.Parent.Parent.Parent

local DraggerStateType = require(DraggerFramework.Implementation.DraggerStateType)
local DragHelper = require(DraggerFramework.Utility.DragHelper)
local PartMover = require(DraggerFramework.Utility.PartMover)
local AttachmentMover = require(DraggerFramework.Utility.AttachmentMover)
local StandardCursor = require(DraggerFramework.Utility.StandardCursor)

local getFFlagFixGlobalRotateAgain = require(DraggerFramework.Flags.getFFlagFixGlobalRotateAgain)
local getFFlagDraggerSplit = require(DraggerFramework.Flags.getFFlagDraggerSplit)

local DraggingParts = {}
DraggingParts.__index = DraggingParts

function DraggingParts.new(draggerToolModel, dragInfo)
	if getFFlagDraggerSplit() then
		local t = tick()
		draggerToolModel._boundsChangedTracker:uninstall()
		local self = setmetatable({
			_draggerToolModel = draggerToolModel,
			_freeformDragger = draggerToolModel:getSchema().FreeformDragger.new(
				draggerToolModel._draggerContext, draggerToolModel, dragInfo)
		}, DraggingParts)
		local timeToStartDrag = tick() - t
		draggerToolModel:_analyticsRecordFreeformDragBegin(timeToStartDrag)
		return self
	else
		local self = setmetatable({
			_partMover = PartMover.new(),
			_attachmentMover = AttachmentMover.new(),
			_dragStart = dragInfo,
			_draggerToolModel = draggerToolModel,
			_tiltRotate = CFrame.new(),
		}, DraggingParts)
		self:_init()
		return self
	end
end

function DraggingParts:enter()
	self:_updateFreeformSelectionDrag()
end

function DraggingParts:leave()
end

function DraggingParts:_init()
	assert(not getFFlagDraggerSplit())
	local t = tick()
	self._draggerToolModel._boundsChangedTracker:uninstall()
	self:_initIgnoreList(self._draggerToolModel._derivedWorldState:getObjectsToTransform())

	local breakJointsToOutsiders = true
	local partsToMove, attachmentsToMove =
		self._draggerToolModel._derivedWorldState:getObjectsToTransform()
	self._partMover:setDragged(
		partsToMove, self._draggerToolModel._derivedWorldState:getOriginalCFrameMap(), breakJointsToOutsiders,
		self._draggerToolModel._derivedWorldState:getBoundingBox().Position)
	self._attachmentMover:setDragged(
		attachmentsToMove)

	local timeToStartDrag = tick() - t
	self._draggerToolModel:_analyticsRecordFreeformDragBegin(timeToStartDrag)
end

function DraggingParts:_initIgnoreList(parts)
	local filter = table.create(#parts + 1)
	for i, part in ipairs(parts) do
		filter[i] = part
	end
	table.insert(filter, self._partMover:getIgnorePart())
	self._raycastFilter = filter
end

function DraggingParts:render()
	self._draggerToolModel:setMouseCursor(StandardCursor.getClosedHand())

	if getFFlagDraggerSplit() then
		return self._freeformDragger:render()
	else
		-- Join surfaces rendering has moved into the schema
		if self._draggerToolModel._draggerContext:shouldJoinSurfaces() and self._jointPairs then
			local cframe, offset = self._draggerToolModel._derivedWorldState:getBoundingBox()
			local focus = cframe * offset
			return self._jointPairs:renderJoints(self._draggerToolModel._draggerContext:getHandleScale(focus))
		end
	end
end

function DraggingParts:processSelectionChanged()
	-- If something unexpectedly changes the selection out from underneath us,
	-- bail out of the drag.
	self:_endFreeformSelectionDrag()
end

function DraggingParts:processMouseDown()
	error("Mouse should already be down while dragging parts.")
end

function DraggingParts:processViewChanged()
	self:_updateFreeformSelectionDrag()
end

function DraggingParts:processMouseUp()
	self:_endFreeformSelectionDrag()
end

function DraggingParts:processKeyDown(keyCode)
	if keyCode == Enum.KeyCode.R then
		self._draggerToolModel._sessionAnalytics.dragRotates = self._draggerToolModel._sessionAnalytics.dragRotates + 1
		if not getFFlagDraggerSplit() then
			self._draggerToolModel._dragAnalytics.dragRotates = self._draggerToolModel._dragAnalytics.dragRotates + 1
		end
		self:_tiltRotateFreeformSelectionDrag(Vector3.new(0, 1, 0))
	elseif keyCode == Enum.KeyCode.T then
		self._draggerToolModel._sessionAnalytics.dragTilts = self._draggerToolModel._sessionAnalytics.dragTilts + 1
		if not getFFlagDraggerSplit() then
			self._draggerToolModel._dragAnalytics.dragTilts = self._draggerToolModel._dragAnalytics.dragTilts + 1
		end
		self:_tiltRotateFreeformSelectionDrag(Vector3.new(1, 0, 0))
	end
end

function DraggingParts:processKeyUp(keyCode)
end

function DraggingParts:_tiltRotateFreeformSelectionDrag(axis)
	if getFFlagDraggerSplit() then
		self._freeformDragger:rotate(axis)
	else
		local mainCFrame
		if getFFlagFixGlobalRotateAgain() then
			local forceLocal = true
			mainCFrame = self._draggerToolModel._derivedWorldState:getBoundingBox(forceLocal)
		else
			mainCFrame = self._draggerToolModel._derivedWorldState:getBoundingBox()
		end
		local lastTargetMatrix
		if self._lastDragTarget then
			lastTargetMatrix = self._lastDragTarget.targetMatrix
		end

		self._tiltRotate = DragHelper.updateTiltRotate(
			self._draggerToolModel._draggerContext:getCameraCFrame(),
			self._draggerToolModel._draggerContext:getMouseRay(),
			self._raycastFilter, mainCFrame, lastTargetMatrix,
			self._tiltRotate, axis, self._draggerToolModel:shouldAlignDraggedObjects())
	end

	self:_updateFreeformSelectionDrag()
	self._draggerToolModel:_scheduleRender()
end

function DraggingParts:_updateFreeformSelectionDrag()
	if getFFlagDraggerSplit() then
		self._freeformDragger:update()
	else
		local lastTargetMatrix = nil
		if self._lastDragTarget then
			lastTargetMatrix = self._lastDragTarget.targetMatrix
		end

		local forceLocal = true
		local localBoundingBoxCFrame, localBoundingBoxOffset, localBoundingBoxSize =
			self._draggerToolModel._derivedWorldState:getBoundingBox(forceLocal)
		local dragTarget = DragHelper.getDragTarget(
			self._draggerToolModel._draggerContext:getMouseRay(),
			self._draggerToolModel._draggerContext:getGridSize(),
			self._dragStart.clickPoint,
			self._raycastFilter,
			localBoundingBoxCFrame,
			self._dragStart.basisPoint,
			localBoundingBoxSize,
			localBoundingBoxOffset,
			self._tiltRotate,
			lastTargetMatrix,
			self._draggerToolModel:shouldAlignDraggedObjects())

		self._draggerToolModel:_analyticsRecordFreeformDragUpdate(dragTarget)

		if dragTarget then
			self._lastDragTarget = dragTarget
			local originalCFrame = localBoundingBoxCFrame
			local newCFrame = dragTarget.mainCFrame
			local globalTransform = newCFrame * originalCFrame:Inverse()
			self._partMover:transformTo(globalTransform)
			self._attachmentMover:transformTo(globalTransform)
			if self._draggerToolModel._draggerContext:shouldJoinSurfaces() then
				self._jointPairs = self._partMover:computeJointPairs(globalTransform)
			end
		end
	end
end

--[[
	Refresh selection info to reflect the new CFrames of the dragged parts
	and return to the Ready state.
]]
function DraggingParts:_endFreeformSelectionDrag()
	if getFFlagDraggerSplit() then
		self._freeformDragger:destroy()
	else
		local attachment = self._dragStart.attachmentBeingDragged
		if attachment then
			-- Single attachment being dragged case -- In that case we need to
			-- potentially reparent the attachment to the part it was dragged onto.
			local mouseRay = self._draggerToolModel._draggerContext:getMouseRay()
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

		if self._draggerToolModel._draggerContext:shouldJoinSurfaces() and self._jointPairs then
			self._jointPairs:createJoints()
		end
		self._jointPairs = nil
		self._partMover:commit()
		self._attachmentMover:commit()
	end

	self._draggerToolModel._boundsChangedTracker:install()

	self._draggerToolModel:_updateSelectionInfo()

	self._draggerToolModel:transitionToState(DraggerStateType.Ready)

	if getFFlagDraggerSplit() then
		self._draggerToolModel:getSchema().addUndoWaypoint(
			self._draggerToolModel._draggerContext,
			"End Freeform Drag")
		self._draggerToolModel:getSchema().setActivePoint(
			self._draggerToolModel._draggerContext,
			self._draggerToolModel._selectionInfo)
	else
		ChangeHistoryService:SetWaypoint("End freeform drag")
		self._draggerToolModel:_analyticsSendFreeformDragged()
		local cframe, offset = self._draggerToolModel._derivedWorldState:getBoundingBox()
		self._draggerToolModel._draggerContext:setInsertPoint(cframe * offset)
	end
end

return DraggingParts