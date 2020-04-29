local Workspace = game:GetService("Workspace")

local Framework = script.Parent.Parent.Parent
local DraggerStateType = require(Framework.Implementation.DraggerStateType)
local SelectionHelper = require(Framework.Utility.SelectionHelper)

local getFFlagLuaDraggerIconBandaid = require(Framework.Flags.getFFlagLuaDraggerIconBandaid)

local NO_COLLISIONS_TRANSPARENCY = 0.4

local DraggingHandle = {}
DraggingHandle.__index = DraggingHandle

function DraggingHandle.new(draggerTool, makeDraggedPartsTransparent)
    local self = setmetatable({}, DraggingHandle)
    self:_init(draggerTool, makeDraggedPartsTransparent)
    return self
end

function DraggingHandle:_init(draggerTool, makeDraggedPartsTransparent)
	-- DEBUG: Allow designers to play with handle settings.
	-- Remove before shipping!
	if Workspace:FindFirstChild("NoCollisionsTransparency") and Workspace.NoCollisionsTransparency.Value ~= 0 then
        NO_COLLISIONS_TRANSPARENCY = 0.4 * Workspace.NoCollisionsTransparency.Value
    end

    draggerTool._sessionAnalytics.handleDrags = draggerTool._sessionAnalytics.handleDrags + 1
    draggerTool._boundsChangedTracker:uninstall()
    draggerTool.props.ToolImplementation:mouseDown(
        SelectionHelper.getMouseRay(), draggerTool._hoverTracker:getHoverHandleId())

    self._draggingModifiedParts = {}
    if makeDraggedPartsTransparent then
        for _, part in ipairs(draggerTool._derivedWorldState:getObjectsToTransform()) do
            if part:IsA("BasePart") then
                part.LocalTransparencyModifier = NO_COLLISIONS_TRANSPARENCY
                table.insert(self._draggingModifiedParts, part)
            end
        end
    end
end

function DraggingHandle:render(draggerTool)
	if getFFlagLuaDraggerIconBandaid() then
		draggerTool.props.Mouse.Icon = "rbxasset://SystemCursors/ClosedHand"
	end

    local toolImplementation = draggerTool.props.ToolImplementation
    if toolImplementation and toolImplementation.render then
        return toolImplementation:render(draggerTool._hoverTracker:getHoverHandleId())
    end
end

function DraggingHandle:processSelectionChanged(draggerTool)
    self:_endHandleDrag(draggerTool)
end

function DraggingHandle:processMouseDown(draggerTool)
    error("Mouse should already be down while dragging handle.")
end

function DraggingHandle:processViewChanged(draggerTool)
    draggerTool.props.ToolImplementation:mouseDrag(SelectionHelper.getMouseRay())
end

function DraggingHandle:processMouseUp(draggerTool)
    self:_endHandleDrag(draggerTool)
end

function DraggingHandle:processKeyDown(draggerTool, keyCode)
    -- Nothing to do
end

function DraggingHandle:_endHandleDrag(draggerTool)
    -- Commit the results of using the tool
    draggerTool.props.ToolImplementation:mouseUp(SelectionHelper.getMouseRay())
    draggerTool:_updateSelectionInfo() -- Since the seleciton has been edited by Implementation

    for _, part in ipairs(self._draggingModifiedParts) do
        part.LocalTransparencyModifier = 0
    end

	draggerTool._boundsChangedTracker:install()
	draggerTool:_analyticsSendHandleDragged()
    draggerTool:transitionToState({}, DraggerStateType.Ready)
end

return DraggingHandle