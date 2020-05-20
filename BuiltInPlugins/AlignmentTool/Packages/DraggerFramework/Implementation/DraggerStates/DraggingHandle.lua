local Workspace = game:GetService("Workspace")

local Framework = script.Parent.Parent.Parent
local DraggerStateType = require(Framework.Implementation.DraggerStateType)
local SelectionHelper = require(Framework.Utility.SelectionHelper)
local setInsertPoint = require(Framework.Utility.setInsertPoint)
local StandardCursor = require(Framework.Utility.StandardCursor)

local getFFlagSetInsertPoint = require(Framework.Flags.getFFlagSetInsertPoint)
local getFFlagOnlyReadyHover = require(Framework.Flags.getFFlagOnlyReadyHover)
local getFFlagFixDraggerCursors = require(Framework.Flags.getFFlagFixDraggerCursors)

local NO_COLLISIONS_TRANSPARENCY = 0.4

local DraggingHandle = {}
DraggingHandle.__index = DraggingHandle

function DraggingHandle.new(draggerTool, makeDraggedPartsTransparent, draggingHandleId)
    local self = setmetatable({}, DraggingHandle)
    self:_init(draggerTool, makeDraggedPartsTransparent, draggingHandleId)
    return self
end

function DraggingHandle:enter(draggerTool)

end

function DraggingHandle:leave(draggerTool)

end

function DraggingHandle:_init(draggerTool, makeDraggedPartsTransparent, draggingHandleId)
    if getFFlagOnlyReadyHover() then
        assert(draggingHandleId, "Missing draggingHandleId in DraggingHandle::_init")
    end
	-- DEBUG: Allow designers to play with handle settings.
	-- Remove before shipping!
	if Workspace:FindFirstChild("NoCollisionsTransparency") and Workspace.NoCollisionsTransparency.Value ~= 0 then
        NO_COLLISIONS_TRANSPARENCY = 0.4 * Workspace.NoCollisionsTransparency.Value
    end

    draggerTool._sessionAnalytics.handleDrags = draggerTool._sessionAnalytics.handleDrags + 1
    draggerTool._boundsChangedTracker:uninstall()
    if getFFlagOnlyReadyHover() then
        draggerTool.props.ToolImplementation:mouseDown(SelectionHelper.getMouseRay(), draggingHandleId)
        self._draggingHandleId = draggingHandleId
    else
        draggerTool.props.ToolImplementation:mouseDown(
            SelectionHelper.getMouseRay(), draggerTool._hoverTracker:getHoverHandleId())
    end

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
    if getFFlagFixDraggerCursors() then
        draggerTool.props.Mouse.Icon = StandardCursor.getClosedHand()
    else
        draggerTool.props.Mouse.Icon = "rbxasset://SystemCursors/ClosedHand"
    end

    local toolImplementation = draggerTool.props.ToolImplementation
    if toolImplementation and toolImplementation.render then
        if getFFlagOnlyReadyHover() then
            return toolImplementation:render(self._draggingHandleId)
        else
            return toolImplementation:render(draggerTool._hoverTracker:getHoverHandleId())
        end
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

    if getFFlagSetInsertPoint() then
        local cframe, offset = draggerTool._derivedWorldState:getBoundingBox()
        setInsertPoint(cframe * offset)
    end
	draggerTool:_analyticsSendHandleDragged()
    draggerTool:transitionToState({}, DraggerStateType.Ready)
end

return DraggingHandle