
local UserInputService = game:GetService("UserInputService")

local Framework = script.Parent.Parent.Parent
local Packages = Framework.Parent

local Roact = require(Packages.Roact)
local DragSelectionView = require(Framework.Components.DragSelectionView)
local DraggerStateType = require(Framework.Implementation.DraggerStateType)
local DragSelector = require(Framework.Utility.DragSelector)
local StandardCursor = require(Framework.Utility.StandardCursor)

local getFFlagMinCursorChange = require(Framework.Flags.getFFlagMinCursorChange)
local getFFlagFixDraggerCursors = require(Framework.Flags.getFFlagFixDraggerCursors)

local DragSelecting = {}
DragSelecting.__index = DragSelecting

function DragSelecting.new(draggerTool)
    local self = setmetatable({
        _dragSelector = DragSelector.new()
    }, DragSelecting)
    self:_init(draggerTool)
    return self
end

function DragSelecting:enter(draggerTool)

end

function DragSelecting:leave(draggerTool)

end

function DragSelecting:_init(draggerTool)
    draggerTool._sessionAnalytics.dragSelects = draggerTool._sessionAnalytics.dragSelects + 1
    self._hasMovedMouse = false
end

function DragSelecting:render(draggerTool)
    if getFFlagFixDraggerCursors() then
        if getFFlagMinCursorChange() then
            draggerTool:setMouseCursor(StandardCursor.getArrow())
        else
            draggerTool.props.Mouse.Icon = StandardCursor.getArrow()
        end
    else
        draggerTool.props.Mouse.Icon = "rbxasset://SystemCursors/Arrow"
    end

    local startLocation =
        self._hasMovedMouse and
        self._dragSelector:getStartLocation() or
        UserInputService:GetMouseLocation()
    return Roact.createElement(DragSelectionView, {
        dragStartLocation = startLocation,
        dragEndLocation = UserInputService:GetMouseLocation(),
    })
end

function DragSelecting:processSelectionChanged(draggerTool)
    -- Fire off a view changed to overwrite whatever else just tried to change
    -- the selection, as the user is changing the selection by drag selecting.
    draggerTool._processViewChanged()
end

function DragSelecting:processMouseDown(draggerTool)
    error("Mouse should already be down while drag selecting.")
end

function DragSelecting:processViewChanged(draggerTool)
    if not self._hasMovedMouse then
        self._dragSelector:beginDrag(UserInputService:GetMouseLocation())
        self._hasMovedMouse = true
    end
    self._dragSelector:updateDrag(UserInputService:GetMouseLocation())
end

function DragSelecting:processMouseUp(draggerTool)
    if self._hasMovedMouse then
        self._dragSelector:commitDrag(UserInputService:GetMouseLocation())
        self._hasMovedMouse = false
    end
    draggerTool:_updateSelectionInfo()
    draggerTool:_analyticsSendBoxSelect()
    draggerTool:transitionToState({}, DraggerStateType.Ready)
end

function DragSelecting:processKeyDown(draggerTool, keyCode)
    -- Nothing to do
end

return DragSelecting