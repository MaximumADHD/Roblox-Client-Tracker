local StudioService = game:GetService("StudioService")
local UserInputService = game:GetService("UserInputService")

local Framework = script.Parent.Parent.Parent
local Packages = Framework.Parent
local plugin = Packages.Parent.Parent

local Roact = require(Packages.Roact)
local DraggerStateType = require(Framework.Implementation.DraggerStateType)
local AnimatedHoverBox = require(Framework.Components.AnimatedHoverBox)
local SelectionHelper = require(Framework.Utility.SelectionHelper)
local SelectionWrapper = require(Framework.Utility.SelectionWrapper)
local getGeometry = require(Framework.Utility.getGeometry)
local getFaceInstance = require(Framework.Utility.getFaceInstance)
local HoverTracker = require(Framework.Implementation.HoverTracker)
local StandardCursor = require(Framework.Utility.StandardCursor)

local getFFlagOnlyReadyHover = require(Framework.Flags.getFFlagOnlyReadyHover)
local getFFlagStudioServiceHoverInstance = require(Framework.Flags.getFFlagStudioServiceHoverInstance)
local getFFlagFixDraggerCursors = require(Framework.Flags.getFFlagFixDraggerCursors)

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

	local hoverSelectable
	if getFFlagOnlyReadyHover() then
		hoverSelectable = self._hoverTracker:getHoverSelectable()
	else
		hoverSelectable = draggerTool._hoverTracker:getHoverSelectable()
	end
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

	if getFFlagOnlyReadyHover() then
		if hoverSelectable or self._hoverTracker:getHoverHandleId() then
			if getFFlagFixDraggerCursors() then
				draggerTool.props.Mouse.Icon = StandardCursor.getOpenHand()
			else
				draggerTool.props.Mouse.Icon = "rbxasset://SystemCursors/OpenHand"
			end
		else
			if getFFlagFixDraggerCursors() then
				draggerTool.props.Mouse.Icon = StandardCursor.getArrow()
			else
				draggerTool.props.Mouse.Icon = "rbxasset://SystemCursors/Default"
			end
		end
	else
		if getFFlagFixDraggerCursors() then
			draggerTool.props.Mouse.Icon = StandardCursor.getArrow()
		else
			draggerTool.props.Mouse.Icon = "rbxasset://SystemCursors/Default"
		end
	end

    local toolImplementation = draggerTool.props.ToolImplementation
	if toolImplementation and toolImplementation.render then
		if getFFlagOnlyReadyHover() then
			elements.ImplementationUI =
				toolImplementation:render(self._hoverTracker:getHoverHandleId())
		else
			elements.ImplementationUI =
				toolImplementation:render(draggerTool._hoverTracker:getHoverHandleId())
		end
    end

    return Roact.createFragment(elements)
end

function Ready:processSelectionChanged(draggerTool)
    -- We expect selection changes while in the ready state
	-- when the developer selects objects in the explorer window.
	if getFFlagOnlyReadyHover() then
		self._hoverTracker:update(draggerTool._derivedWorldState)
	end
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
	local hoverHandleId
	if getFFlagOnlyReadyHover() then
		hoverHandleId = self._hoverTracker:getHoverHandleId()
	else
		hoverHandleId = draggerTool._hoverTracker:getHoverHandleId()
	end
	if hoverHandleId then
        local makeDraggedPartsTransparent =
			not plugin.CollisionEnabled and draggerTool.props.UseCollisionsTransparency
        draggerTool:transitionToState({}, DraggerStateType.DraggingHandle,
            makeDraggedPartsTransparent, hoverHandleId)
	else
		local clickedInstance, position
		if getFFlagOnlyReadyHover() then
			clickedInstance, position = self._hoverTracker:getHoverInstance()
		else
			clickedInstance, position = draggerTool._hoverTracker:getHoverInstance()
		end
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

		elseif clickedInstance:IsA("Constraint") or clickedInstance:IsA("WeldConstraint") then
			-- Note: WeldConstraint IS NOT a Constraint, we do need both checks.

			-- TODO: The C++ constraint dragging behavior is really weird right
			-- now. If we do allow constraint dragging we probably want to do
			-- something different. For now I'm doing nothing.
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
	if getFFlagOnlyReadyHover() then
		self._hoverTracker:update(draggerTool._derivedWorldState)
	end
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