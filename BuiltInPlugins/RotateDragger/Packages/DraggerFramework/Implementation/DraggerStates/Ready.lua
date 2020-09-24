local DraggerFramework = script.Parent.Parent.Parent
local Packages = DraggerFramework.Parent

local Roact = require(Packages.Roact)
local DraggerStateType = require(DraggerFramework.Implementation.DraggerStateType)
local AnimatedHoverBox = require(DraggerFramework.Components.AnimatedHoverBox)
local LocalSpaceIndicator = require(DraggerFramework.Components.LocalSpaceIndicator)
local SelectionHelper = require(DraggerFramework.Utility.SelectionHelper)
local getGeometry = require(DraggerFramework.Utility.getGeometry)
local getFaceInstance = require(DraggerFramework.Utility.getFaceInstance)
local HoverTracker = require(DraggerFramework.Implementation.HoverTracker)
local StandardCursor = require(DraggerFramework.Utility.StandardCursor)

local getEngineFeatureActiveInstanceHighlight = require(DraggerFramework.Flags.getEngineFeatureActiveInstanceHighlight)
local getFFlagHoverBoxActiveColor = require(DraggerFramework.Flags.getFFlagHoverBoxActiveColor)
local getFFlagSetInsertPointOnSelect = require(DraggerFramework.Flags.getFFlagSetInsertPointOnSelect)
local getFFlagUpdateHoverOnMouseDown = require(DraggerFramework.Flags.getFFlagUpdateHoverOnMouseDown)
local getFFlagDraggerSplit = require(DraggerFramework.Flags.getFFlagDraggerSplit)
local getFFlagLocalSpaceWidget = require(DraggerFramework.Flags.getFFlagLocalSpaceWidget)

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
	if getFFlagDraggerSplit() then
		self._hoverTracker =
			HoverTracker.new(
				self._draggerToolModel:getSchema(),
				self._draggerToolModel:getHandlesList(),
				onHoverExternallyChanged)
		self:_updateHoverTracker()
	else
		self._hoverTracker =
			HoverTracker.new(self._draggerToolModel._toolImplementation, onHoverExternallyChanged)
		self._hoverTracker:update(self._draggerToolModel._derivedWorldState, self._draggerToolModel._draggerContext)
	end
end

function Ready:leave()
	self._hoverTracker:clearHover(self._draggerToolModel._draggerContext)
end

function Ready:render()
	local elements = {}

	local draggerContext = self._draggerToolModel._draggerContext

	local hoverSelectable = self._hoverTracker:getHoverSelectable()
	if getFFlagDraggerSplit() then
		if draggerContext:shouldShowHover() and hoverSelectable then
			-- Calls to the schema to know what kind of component to render the
			-- selection box for the hovered object with.
			local component = self._draggerToolModel:getSchema().getSelectionBoxComponent(
				draggerContext, hoverSelectable)
			if component then
				local animatePeriod
				if draggerContext:shouldAnimateHover() then
					animatePeriod = draggerContext:getHoverAnimationSpeedInSeconds()
				end

				local isActive
				if getEngineFeatureActiveInstanceHighlight() then
					if getFFlagHoverBoxActiveColor() then
						isActive = false
						if draggerContext:shouldShowActiveInstanceHighlight() then
							local activeInstance =
								self._draggerToolModel:getSelectionWrapper():getActiveSelectable()
							isActive = (hoverSelectable == activeInstance)
						end
					end
				end

				elements.HoverBox = Roact.createElement(AnimatedHoverBox, {
					-- Configurable component to render the selection box
					SelectionBoxComponent = component,
					HoverTarget = hoverSelectable,
					SelectColor = draggerContext:getSelectionBoxColor(isActive),
					LineThickness = draggerContext:getHoverLineThickness(),
					HoverColor = draggerContext:getHoverBoxColor(isActive),
					AnimatePeriod = animatePeriod,
				})
			end
		end
	else
		if hoverSelectable then
			-- Don't show hover boxes for constraints with visible details, they
			-- have their own special hover highlighting.
			local isAttachmentOrConstraint =
				hoverSelectable:IsA("Attachment") or hoverSelectable:IsA("Constraint")
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
	end

	if hoverSelectable or self._hoverTracker:getHoverHandleId() then
		self._draggerToolModel:setMouseCursor(StandardCursor.getOpenHand())
	else
		self._draggerToolModel:setMouseCursor(StandardCursor.getArrow())
	end

	if getFFlagDraggerSplit() then
		if getFFlagLocalSpaceWidget() then
			if self._draggerToolModel:shouldShowLocalSpaceIndicator() then
				local selectionInfo = self._draggerToolModel._selectionInfo
				if not selectionInfo:isEmpty() and draggerContext:shouldUseLocalSpace() then
					local cframe, offset, size = selectionInfo:getLocalBoundingBox()

					elements.LocalSpaceIndicator = Roact.createElement(LocalSpaceIndicator, {
						CFrame = cframe * CFrame.new(offset),
						Size = size,
						TextColor3 = draggerContext:getSelectionBoxColor(),
						DraggerContext = draggerContext,
					})
				end
			end
		end

		local hoverHandles, hoverHandleId = self._hoverTracker:getHoverHandleId()
		for i, handles in pairs(self._draggerToolModel:getHandlesList()) do
			elements["ImplementationUI" .. i] =
				handles:render(hoverHandles == handles and hoverHandleId or nil)
		end
	else
		if getFFlagLocalSpaceWidget() then
			if self._draggerToolModel:shouldShowLocalSpaceIndicator() then
				local objects = self._draggerToolModel._derivedWorldState:getObjectsToTransform()
				if #objects > 0 and draggerContext:shouldUseLocalSpace() then
					local forceLocal = true
					local cframe, offset, size =
						self._draggerToolModel._derivedWorldState:getBoundingBox(forceLocal)

					elements.LocalSpaceIndicator = Roact.createElement(LocalSpaceIndicator, {
						CFrame = cframe * CFrame.new(offset),
						Size = size,
						TextColor3 = draggerContext:getSelectionBoxColor(),
						DraggerContext = draggerContext,
					})
				end
			end
		end

		local toolImplementation = self._draggerToolModel._toolImplementation
		if toolImplementation and toolImplementation.render then
			elements.ImplementationUI =
				toolImplementation:render(self._hoverTracker:getHoverHandleId())
		end
	end

	return Roact.createFragment(elements)
end

function Ready:processSelectionChanged()
	-- We expect selection changes while in the ready state
	-- when the developer selects objects in the explorer window.
	if getFFlagDraggerSplit() then
		self:_updateHoverTracker()
	else
		self._hoverTracker:update(self._draggerToolModel._derivedWorldState, self._draggerToolModel._draggerContext)
	end
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
function Ready:processMouseDown(isDoubleClick)
	if getFFlagDraggerSplit() then
		assert(isDoubleClick ~= nil)
	end
	local draggerContext = self._draggerToolModel._draggerContext
	if getFFlagUpdateHoverOnMouseDown() then
		-- We have to do an update here for the edge case where the 3D view just
		-- became selected thanks to the mouse down event, so we haven't received
		-- a view change event yet.
		if getFFlagDraggerSplit() then
			self:_updateHoverTracker()
		else
			self._hoverTracker:update(self._draggerToolModel._derivedWorldState, draggerContext)
		end
	end
	local hoverHandles, hoverHandleId
	if getFFlagDraggerSplit() then
		hoverHandles, hoverHandleId = self._hoverTracker:getHoverHandleId()
	else
		hoverHandleId = self._hoverTracker:getHoverHandleId()
	end
	if hoverHandleId then
		if getFFlagDraggerSplit() then
			self._draggerToolModel:transitionToState(DraggerStateType.DraggingHandle,
				hoverHandles, hoverHandleId)
		else
			local makeDraggedPartsTransparent =
				not draggerContext:areCollisionsEnabled() and
				self._draggerToolModel:shouldUseCollisionTransparency()
			self._draggerToolModel:transitionToState(DraggerStateType.DraggingHandle,
				makeDraggedPartsTransparent, hoverHandleId)
		end
	else
		if getFFlagDraggerSplit() then
			self:_clickInWorld(isDoubleClick)
		else
			local clickedInstance, position = self._hoverTracker:getHoverInstance()
			local oldSelection = draggerContext:getSelectionWrapper():Get()
			local shouldUpdateActiveInstance
			if getEngineFeatureActiveInstanceHighlight() then
				shouldUpdateActiveInstance = draggerContext:shouldShowActiveInstanceHighlight()
			end
			local selectionDidChange, newSelection, hint =
				SelectionHelper.updateSelection(
					clickedInstance, oldSelection,
					draggerContext:shouldExtendSelection(),
					draggerContext:isAltKeyDown(),
					shouldUpdateActiveInstance)
			if selectionDidChange then
				draggerContext:getSelectionWrapper():Set(newSelection, hint)

				-- Process selection changed only gets called automatically when studio
				-- changes the selection, since we just changed the selection manually
				-- we need to invoke it here.
				self._draggerToolModel:_processSelectionChanged()

				if getFFlagSetInsertPointOnSelect() then
					-- If we have objects to transform, then change the insert point to
					-- the selection's center. This makes it easier to paste and insert
					-- objects at the position of a target object.
					local parts, attachments =
						self._draggerToolModel._derivedWorldState:getObjectsToTransform()
					if #parts > 0 or #attachments > 0 then
						local cframe, offset =
							self._draggerToolModel._derivedWorldState:getBoundingBox()
						draggerContext:setInsertPoint(cframe * offset)
					end
				end
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
end

function Ready:processViewChanged()
	if getFFlagDraggerSplit() then
		self:_updateHoverTracker()
	else
		self._hoverTracker:update(
			self._draggerToolModel._derivedWorldState,
			self._draggerToolModel._draggerContext)
	end
end

function Ready:processMouseUp()
	-- Nothing to do. This case can ocurr when the user clicks on a constraint.
end

function Ready:processKeyDown(keyCode)
	-- Nothing to do.
end

function Ready:processKeyUp(keyCode)
	-- Nothing to do.
end

function Ready:_updateHoverTracker()
	assert(getFFlagDraggerSplit())
	self._hoverTracker:update(
		self._draggerToolModel._draggerContext,
		self._draggerToolModel:getSelectionWrapper():get(),
		self._draggerToolModel._selectionInfo)
end

local function contains(list, targetItem)
	for _, item in ipairs(list) do
		if item == targetItem then
			return true
		end
	end
	return false
end

--[[
	Called when the user clicking in the 3d space (not on a handle)
]]
function Ready:_clickInWorld(isDoubleClick)
	assert(getFFlagDraggerSplit())
	local draggerContext = self._draggerToolModel._draggerContext
	local clickedItem, position = self._hoverTracker:getHoverItem()
	local clickedSelectable = self._hoverTracker:getHoverSelectable()
	local oldSelection = self._draggerToolModel:getSelectionWrapper():get()
	local selectionDidContainSelectable = contains(oldSelection, clickedSelectable)
	local shouldExtendSelection = draggerContext:shouldExtendSelection()
	if isDoubleClick and selectionDidContainSelectable then
		-- Special case. Double clicking with extend selection would be a
		-- no-op, thanks to adding something to the selection and then
		-- immediately removing it again.
		-- Prevent this. This also allows us to handle double clicks with
		-- shouldExtendSelection activated as a getNextSelectable invocation.
		shouldExtendSelection = false
	end
	local isExclusiveSelectable =
		(clickedSelectable ~= nil) and
		self._draggerToolModel:getSchema().isExclusiveSelectable(
			draggerContext, clickedSelectable, clickedItem)
	local selectionDidChange, newSelection, hint =
		SelectionHelper.updateSelection(
			clickedSelectable, oldSelection,
			isExclusiveSelectable,
			shouldExtendSelection)
	if selectionDidChange then
		self._draggerToolModel:getSelectionWrapper():set(newSelection, hint)

		-- Process selection changed only gets called automatically when studio
		-- changes the selection, since we just changed the selection manually
		-- we need to invoke it here.
		self._draggerToolModel:_processSelectionChanged()

		if getFFlagSetInsertPointOnSelect() then
			-- If we have objects to transform, then change the insert point to
			-- the selection's center. This makes it easier to paste and insert
			-- objects at the position of a target object.
			self._draggerToolModel:getSchema().setActivePoint(
				self._draggerToolModel._draggerContext,
				self._draggerToolModel._selectionInfo)
		end
	end

	self._draggerToolModel:_analyticsSendClick(clickedItem, selectionDidChange)

	local selectionEvent = {
		DoubleClicked = isDoubleClick,
		ClickedSelectable = clickedSelectable,
		ClickedItem = clickedItem,
		ClickedPosition = position,
		SelectionDidContainSelectable = selectionDidContainSelectable,
		SelectionNowContainsSelectable = contains(newSelection, clickedSelectable),
	}
	local nextState, extraData =
		self._draggerToolModel:getSchema().dispatchWorldClick(
			self._draggerToolModel._draggerContext,
			self._draggerToolModel,
			selectionEvent)

	if nextState == "Ready" then
		if clickedSelectable and (not selectionDidChange or isDoubleClick) then
			self._draggerToolModel:transitionToState(
				DraggerStateType.PendingSelectNext, isDoubleClick, selectionEvent)
		else
			-- Nothing to do, stay in ready state
		end
	elseif nextState == "DragSelecting" then
		if self._draggerToolModel:doesAllowDragSelect() then
			self._draggerToolModel:transitionToState(DraggerStateType.DragSelecting)
		end
	elseif nextState == "FreeformSelectionDrag" then
		self._draggerToolModel:transitionToState(
			DraggerStateType.PendingDraggingParts, isDoubleClick, extraData)
	else
		error("Bad state returned from dispatchWorldClick: `" .. tostring(nextState) .. "`")
	end
end

--[[
	Get the "basis point" (the closest clicked vertex on the part) and put in
	the local space of the primaryCFrame of the selection.
	Also, check if there is any FaceInstance on the clicked face, and if
	there is, record it for potential FaceInstance selection on mouse up.
]]
function Ready:_beginPendingFreeformSelectionDrag(clickedObject, position, wasObjectInSelection)
	assert(not getFFlagDraggerSplit())
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