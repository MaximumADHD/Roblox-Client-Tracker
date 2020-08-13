local DraggerFramework = script.Parent.Parent.Parent
local Packages = DraggerFramework.Parent

local Roact = require(Packages.Roact)
local DraggerStateType = require(DraggerFramework.Implementation.DraggerStateType)
local AnimatedHoverBox = require(DraggerFramework.Components.AnimatedHoverBox)
local SelectionHelper = require(DraggerFramework.Utility.SelectionHelper)
local getGeometry = require(DraggerFramework.Utility.getGeometry)
local getFaceInstance = require(DraggerFramework.Utility.getFaceInstance)
local HoverTracker = require(DraggerFramework.Implementation.HoverTracker)
local StandardCursor = require(DraggerFramework.Utility.StandardCursor)

local getEngineFeatureActiveInstanceHighlight = require(DraggerFramework.Flags.getEngineFeatureActiveInstanceHighlight)
local getFFlagHoverBoxActiveColor = require(DraggerFramework.Flags.getFFlagHoverBoxActiveColor)
local getFFlagUpdateHoverOnMouseDown = require(DraggerFramework.Flags.getFFlagUpdateHoverOnMouseDown)

local Ready = {}
Ready.__index = Ready

function Ready.new(draggerToolModel)
	return setmetatable({
		_draggerToolModel = draggerToolModel
	}, Ready)
end

function Ready:enter()
	local function onHoverExternallyChanged()
		self._draggerToolModel:_processViewChanged()
	end
	self._hoverTracker =
		HoverTracker.new(self._draggerToolModel._toolImplementation, onHoverExternallyChanged)
	self._hoverTracker:update(self._draggerToolModel._derivedWorldState, self._draggerToolModel._draggerContext)
end

function Ready:leave()
	self._hoverTracker:clearHover(self._draggerToolModel._draggerContext)
end

function Ready:render()
	local elements = {}

	local hoverSelectable = self._hoverTracker:getHoverSelectable()
	if hoverSelectable then
		-- Don't show hover boxes for constraints with visible details, they
		-- have their own special hover highlighting.
		local isAttachmentOrConstraint =
			hoverSelectable:IsA("Attachment") or hoverSelectable:IsA("Constraint")
		local draggerContext = self._draggerToolModel._draggerContext
		if not draggerContext:areConstraintDetailsShown() or not isAttachmentOrConstraint then
			if draggerContext:shouldShowHover() then
				local animatePeriod
				if draggerContext:shouldAnimateHover() then
					animatePeriod = draggerContext:getHoverAnimationSpeedInSeconds()
				end

				local isActive
				if getEngineFeatureActiveInstanceHighlight() then
					if getFFlagHoverBoxActiveColor() then
						isActive = false
						if draggerContext:shouldShowActiveInstanceHighlight() then
							local activeInstance = draggerContext:getSelectionWrapper():getActiveInstance()
							isActive = hoverSelectable == activeInstance
						end
					end
				end

				elements.HoverBox = Roact.createElement(AnimatedHoverBox, {
					HoverTarget = hoverSelectable,
					SelectColor = draggerContext:getSelectionBoxColor(isActive),
					HoverColor = draggerContext:getHoverBoxColor(isActive),
					LineThickness = draggerContext:getHoverLineThickness(),
					AnimatePeriod = animatePeriod,
				})
			end
		end
	end

	if hoverSelectable or self._hoverTracker:getHoverHandleId() then
		self._draggerToolModel:setMouseCursor(StandardCursor.getOpenHand())
	else
		self._draggerToolModel:setMouseCursor(StandardCursor.getArrow())
	end

	local toolImplementation = self._draggerToolModel._toolImplementation
	if toolImplementation and toolImplementation.render then
		elements.ImplementationUI =
			toolImplementation:render(self._hoverTracker:getHoverHandleId())
	end

	return Roact.createFragment(elements)
end

function Ready:processSelectionChanged()
	-- We expect selection changes while in the ready state
	-- when the developer selects objects in the explorer window.
	self._hoverTracker:update(self._draggerToolModel._derivedWorldState, self._draggerToolModel._draggerContext)
end

--[[
	Find the clicked part or constraint system gizmo by raycasting with the
	current mouse location and decide what action to take:

	* If the clicked instance is added to or was already in the selection, begin
	  (maybe) freeform dragging the selected parts.
	* If no selectable instance was clicked, begin drag selecting.
	* When an Attachment is clicked without a selection modifier key pressed,
	  begin (maybe) freeform dragging that Attachment.
	* When a Constraint is clicked, select it but don't do any form of drag.
]]
function Ready:processMouseDown()
	local draggerContext = self._draggerToolModel._draggerContext
	if getFFlagUpdateHoverOnMouseDown() then
		-- We have to do an update here for the edge case where the 3D view just
		-- became selected thanks to the mouse down event, so we haven't received
		-- a view change event yet.
		self._hoverTracker:update(self._draggerToolModel._derivedWorldState, draggerContext)
	end
	local hoverHandleId = self._hoverTracker:getHoverHandleId()
	if hoverHandleId then
		local makeDraggedPartsTransparent =
			not draggerContext:areCollisionsEnabled() and
			self._draggerToolModel:shouldUseCollisionTransparency()
		self._draggerToolModel:transitionToState(DraggerStateType.DraggingHandle,
			makeDraggedPartsTransparent, hoverHandleId)
	else
		local clickedInstance, position = self._hoverTracker:getHoverInstance()
		local oldSelection = draggerContext:getSelectionWrapper():Get()
		local shouldUpdateActiveInstance
		if getEngineFeatureActiveInstanceHighlight() then
			shouldUpdateActiveInstance = draggerContext:shouldShowActiveInstanceHighlight()
		end
		local selectionDidChange, newSelection =
			SelectionHelper.updateSelection(
				clickedInstance, oldSelection,
				draggerContext:shouldExtendSelection(),
				draggerContext:isAltKeyDown(),
				shouldUpdateActiveInstance)
		if selectionDidChange then
			draggerContext:getSelectionWrapper():Set(newSelection)

			-- Process selection changed only gets called automatically when studio
			-- changes the selection, since we just changed the selection manually
			-- we need to invoke it here.
			self._draggerToolModel:_processSelectionChanged()
		end

		local selectionContainsClickedPart = false
		local oldSelectionContainedClickedPart = false
		local clickedObject = SelectionHelper.getSelectable(clickedInstance,
			draggerContext:isAltKeyDown())
		for _, object in ipairs(newSelection) do
			if object == clickedObject then
				selectionContainsClickedPart = true
				break
			end
		end
		for _, object in ipairs(oldSelection) do
			if object == clickedObject then
				oldSelectionContainedClickedPart = true
				break
			end
		end

		local didChangeSelection =
			(oldSelectionContainedClickedPart ~= selectionContainsClickedPart)
		self._draggerToolModel:_analyticsSendClick(clickedInstance, didChangeSelection)

		if not clickedInstance then
			if self._draggerToolModel:doesAllowDragSelect() then
				self._draggerToolModel:transitionToState(DraggerStateType.DragSelecting)
			end
		elseif clickedInstance:IsA("Attachment") then
			if self._draggerToolModel:doesAllowFreeformDrag() then
				if draggerContext:areConstraintDetailsShown() then
					if draggerContext:shouldExtendSelection() then
						-- Nothing to do: The C++ implementation does not allow
						-- Attachment dragging if they keys to extend the
						-- selection are pressed.
					else
						if selectionContainsClickedPart then
							-- Force the selection to only the dragged Attachment
							if #newSelection > 1 then
								draggerContext:getSelectionWrapper():Set({clickedInstance})
								self._draggerToolModel:_processSelectionChanged()
							end
							self:_beginPendingFreeformSelectionDrag(
								clickedInstance, position, oldSelectionContainedClickedPart)
						end
					end
				end
			end

			-- TODO: The C++ implementation never allowed a box-selection when
			-- clicking on an Attachment. Maybe we want to change that behavior.

		elseif clickedInstance:IsA("Constraint") or clickedInstance:IsA("WeldConstraint")
			or clickedInstance:IsA("NoCollisionConstraint") then
			-- Note: WeldConstraint and NoCollisionConstraint ARE NOT
			-- Constraints, we do need all the checks.

			-- Do nothing here: When clicking a constraint, do not allow the
			-- fall-through of starting a box select.
		else
			if selectionContainsClickedPart then
				if self._draggerToolModel:doesAllowFreeformDrag() then
					self:_beginPendingFreeformSelectionDrag(
						clickedInstance, position, oldSelectionContainedClickedPart)
				end
			else
				if self._draggerToolModel:doesAllowDragSelect() then
					self._draggerToolModel:transitionToState(DraggerStateType.DragSelecting)
				end
			end
		end
	end
end

function Ready:processViewChanged()
	self._hoverTracker:update(self._draggerToolModel._derivedWorldState, self._draggerToolModel._draggerContext)
end

function Ready:processMouseUp()
	-- Nothing to do. This case can ocurr when the user clicks on a constraint.
end

function Ready:processKeyDown(keyCode)
	-- Nothing to do.
end

--[[
	Get the "basis point" (the closest clicked vertex on the part) and put in
	the local space of the primaryCFrame of the selection.
	Also, check if there is any FaceInstance on the clicked face, and if
	there is, record it for potential FaceInstance selection on mouse up.
]]
function Ready:_beginPendingFreeformSelectionDrag(clickedObject, position, wasObjectInSelection)
	local closestVertex
	local attachmentBeingDragged
	if clickedObject:IsA("Attachment") then
		closestVertex = clickedObject.WorldPosition
		attachmentBeingDragged = clickedObject
	else
		local geometry = getGeometry(clickedObject, position)
		local closestDistance = math.huge
		for _, vert in ipairs(geometry.vertices) do
			local distance = (vert.position - position).Magnitude
			if distance < closestDistance then
				closestDistance = distance
				closestVertex = vert.position
			end
		end
	end
	local forceLocal = true
	local localMainCFrame = self._draggerToolModel._derivedWorldState:getBoundingBox(forceLocal)
	local closestVertexInPrimarySpace = localMainCFrame:PointToObjectSpace(closestVertex)
	local clickInPrimarySpace = localMainCFrame:PointToObjectSpace(position)

	-- Find the FaceInstance to potentially select if we never actually start
	-- dragging before mouse up.
	local clickedFaceInstance
	if wasObjectInSelection and clickedObject:IsA("BasePart") then
		clickedFaceInstance = getFaceInstance(clickedObject, position)
	end

	self._draggerToolModel:transitionToState(DraggerStateType.PendingDraggingParts, {
		mouseLocation = self._draggerToolModel._draggerContext:getMouseLocation(),
		basisPoint = closestVertexInPrimarySpace,
		clickPoint = clickInPrimarySpace,
		clickedFaceInstance = clickedFaceInstance,
		attachmentBeingDragged = attachmentBeingDragged,
	})
end

return Ready