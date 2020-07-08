if require(script.Parent.Parent.Parent.Flags.getFFlagDraggerRefactor)() then
	return require(script.Parent.Ready_Refactor)
end

local StudioService = game:GetService("StudioService")
local UserInputService = game:GetService("UserInputService")

local DraggerFramework = script.Parent.Parent.Parent
local Packages = DraggerFramework.Parent
local plugin = Packages.Parent.Parent

local Roact = require(Packages.Roact)
local DraggerStateType = require(DraggerFramework.Implementation.DraggerStateType)
local AnimatedHoverBox = require(DraggerFramework.Components.AnimatedHoverBox)
local SelectionHelper = require(DraggerFramework.Utility.SelectionHelper)
local SelectionWrapper = require(DraggerFramework.Utility.SelectionWrapper)
local getGeometry = require(DraggerFramework.Utility.getGeometry)
local getFaceInstance = require(DraggerFramework.Utility.getFaceInstance)
local HoverTracker = require(DraggerFramework.Implementation.HoverTracker)
local StandardCursor = require(DraggerFramework.Utility.StandardCursor)

local getFFlagSelectWeldConstraints = require(DraggerFramework.Flags.getFFlagSelectWeldConstraints)
local getFFlagStudioServiceHoverInstance = require(DraggerFramework.Flags.getFFlagStudioServiceHoverInstance)

local function areConstraintDetailsShown()
	return StudioService.ShowConstraintDetails
end

local Ready = {}
Ready.__index = Ready

function Ready.new()
	return setmetatable({}, Ready)
end

function Ready:enter(draggerTool)
	local function onHoverExternallyChanged()
		draggerTool:_processViewChanged()
	end
	self._hoverTracker =
		HoverTracker.new(draggerTool.props.ToolImplementation, onHoverExternallyChanged)
	self._hoverTracker:update(draggerTool._derivedWorldState)
end

function Ready:leave(draggerTool)
	self._hoverTracker:clearHover()
end

function Ready:render(draggerTool)
	local elements = {}

	local hoverSelectable = self._hoverTracker:getHoverSelectable()
	if hoverSelectable then
		if getFFlagStudioServiceHoverInstance() then
			-- Don't show hover boxes for constraints with visible details, they
			-- have their own special hover highlighting.
			local isAttachmentOrConstraint =
				hoverSelectable:IsA("Attachment") or hoverSelectable:IsA("Constraint")
			if not areConstraintDetailsShown() or not isAttachmentOrConstraint then
				elements.HoverBox = Roact.createElement(AnimatedHoverBox, {
					hoverTarget = hoverSelectable,
				})
			end
		else
			elements.HoverBox = Roact.createElement(AnimatedHoverBox, {
				hoverTarget = hoverSelectable,
			})
		end
	end

	if hoverSelectable or self._hoverTracker:getHoverHandleId() then
		draggerTool:setMouseCursor(StandardCursor.getOpenHand())
	else
		draggerTool:setMouseCursor(StandardCursor.getArrow())
	end

	local toolImplementation = draggerTool.props.ToolImplementation
	if toolImplementation and toolImplementation.render then
		elements.ImplementationUI =
			toolImplementation:render(self._hoverTracker:getHoverHandleId())
	end

	return Roact.createFragment(elements)
end

function Ready:processSelectionChanged(draggerTool)
	-- We expect selection changes while in the ready state
	-- when the developer selects objects in the explorer window.
	self._hoverTracker:update(draggerTool._derivedWorldState)
end

--[[
	Find the clicked part by raycasting with the current mouse location.

	If the clicked part is added to the selection, being (maybe) freeform dragging
	the selected parts. If no selectable part was clicked, begin drag selecting.
	When an Attachment is clicked without a selection modifier key pressed,
	begin (maybe) freeform dragging that Attachment.
	When a Constraint is clicked... maybe we'll do something.
]]
function Ready:processMouseDown(draggerTool)
	local hoverHandleId = self._hoverTracker:getHoverHandleId()
	if hoverHandleId then
		local makeDraggedPartsTransparent =
			not plugin.CollisionEnabled and draggerTool.props.UseCollisionsTransparency
		draggerTool:transitionToState({}, DraggerStateType.DraggingHandle,
			makeDraggedPartsTransparent, hoverHandleId)
	else
		local clickedInstance, position = self._hoverTracker:getHoverInstance()
		local oldSelection = SelectionWrapper:Get()
		local selectionDidChange, newSelection =
			SelectionHelper.updateSelection(clickedInstance, oldSelection)
		if selectionDidChange then
			SelectionWrapper:Set(newSelection)

			-- Process selection changed only gets called automatically when studio
			-- changes the selection, since we just changed the selection manually
			-- we need to invoke it here.
			draggerTool:_processSelectionChanged()
		end

		local selectionContainsClickedPart = false
		local oldSelectionContainedClickedPart = false
		local clickedObject = SelectionHelper.getSelectable(clickedInstance)
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
		draggerTool:_analyticsSendClick(clickedInstance, didChangeSelection)

		if not clickedInstance then
			if draggerTool.props.AllowDragSelect then
				draggerTool:transitionToState({}, DraggerStateType.DragSelecting)
			end
		elseif clickedInstance:IsA("Attachment") then
			if draggerTool.props.AllowFreeformDrag then
				if areConstraintDetailsShown() then
					if SelectionHelper.shouldExtendSelection() then
						-- Nothing to do: The C++ implementation does not allow
						-- Attachment dragging if they keys to extend the
						-- selection are pressed.
					else
						if selectionContainsClickedPart then
							-- Force the selection to only the dragged Attachment
							if #newSelection > 1 then
								SelectionWrapper:Set({clickedInstance})
								draggerTool:_processSelectionChanged()
							end
							self:_beginPendingFreeformSelectionDrag(
								draggerTool, clickedInstance, position, oldSelectionContainedClickedPart)
						end
					end
				end
			end

			-- TODO: The C++ implementation never allowed a box-selection when
			-- clicking on an Attachment. Maybe we want to change that behavior.

		elseif clickedInstance:IsA("Constraint") or clickedInstance:IsA("WeldConstraint")
			or (getFFlagSelectWeldConstraints() and clickedInstance:IsA("NoCollisionConstraint")) then
			-- Note: WeldConstraint and NoCollisionConstraint ARE NOT
			-- Constraints, we do need all the checks.

			-- Do nothing here: When clicking a constraint, do not allow the
			-- fall-through of starting a box select.
		else
			if selectionContainsClickedPart then
				if draggerTool.props.AllowFreeformDrag then
					self:_beginPendingFreeformSelectionDrag(
						draggerTool, clickedInstance, position, oldSelectionContainedClickedPart)
				end
			else
				if draggerTool.props.AllowDragSelect then
					draggerTool:transitionToState({}, DraggerStateType.DragSelecting)
				end
			end
		end
	end
end

function Ready:processViewChanged(draggerTool)
	self._hoverTracker:update(draggerTool._derivedWorldState)
end

function Ready:processMouseUp(draggerTool)
	-- Nothing to do. This case can ocurr when the user clicks on a constraint.
end

function Ready:processKeyDown(draggerTool, keyCode)
	-- Nothing to do.
end

--[[
	Get the "basis point", the closest clicked vertex on the part,
	put in the local space of the primaryCFrame of the selection.
]]
function Ready:_beginPendingFreeformSelectionDrag(draggerTool, clickedObject, position, wasObjectInSelection)
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
	local localMainCFrame = draggerTool._derivedWorldState:getBoundingBox(forceLocal)
	local closestVertexInPrimarySpace = localMainCFrame:PointToObjectSpace(closestVertex)
	local clickInPrimarySpace = localMainCFrame:PointToObjectSpace(position)

	-- Find the FaceInstance to potentially select if we never actually start
	-- dragging before mouse up.
	local clickedFaceInstance
	if wasObjectInSelection and clickedObject:IsA("BasePart") then
		clickedFaceInstance = getFaceInstance(clickedObject, position)
	end

	draggerTool:transitionToState({}, DraggerStateType.PendingDraggingParts, {
		mouseLocation = UserInputService:GetMouseLocation(),
		basisPoint = closestVertexInPrimarySpace,
		clickPoint = clickInPrimarySpace,
		clickedFaceInstance = clickedFaceInstance,
		attachmentBeingDragged = attachmentBeingDragged,
	})
end

return Ready