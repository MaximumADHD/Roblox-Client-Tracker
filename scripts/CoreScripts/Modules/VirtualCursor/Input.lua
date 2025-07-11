--!nonstrict
local VirtualCursorFolder = script.Parent

local ContextActionService = game:GetService("ContextActionService")
local GuiService = game:GetService("GuiService")
local UserInputService = game:GetService("UserInputService")
local GamepadService = game:GetService("GamepadService")
local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local SoundManager = require(CorePackages.Workspace.Packages.SoundManager).SoundManager
local Sounds = require(CorePackages.Workspace.Packages.SoundManager).Sounds

local properties = require(VirtualCursorFolder.Properties)
local Interface = require(VirtualCursorFolder.Interface)
local getFFlagPointAndClickCursor = require(VirtualCursorFolder.getFFlagPointAndClickCursor)
local getFFlagInputEndedEventChange = require(VirtualCursorFolder.getFFlagInputEndedEventChange)

local FFlagPointAndClickCursor = getFFlagPointAndClickCursor()
local FFlagInputEndedEventChange = getFFlagInputEndedEventChange()

local Input = {}

-- variables
local thumbstickVector = Vector2.new()
local thumbstick2Vector = Vector2.new()
local cursorEnabled = false
local previewEnabled = false
local previousSelection = nil
local previousSelectionTime = os.clock()
local gamepadAnimatedSelectionPreviewConnection = nil
local gamepadThumbstick1ChangedConnection = nil
local gamepadSelectionRect2DChangedConnection = nil
local selectionChangedSinceThumbstick = false

local function processThumbstickInput(position) -- process raw input from the thumbstick and account for deadzone
    local x,y = 0,0
    if (position.Magnitude >= properties.ThumbstickDeadzone) then
        local theta = math.atan2(position.y, position.x)
        local dzX = math.abs(math.cos(theta) * properties.ThumbstickDeadzone)
        local dzY = math.abs(math.sin(theta) * properties.ThumbstickDeadzone)

        x = (math.max(math.abs(position.x) - dzX, 0) / (1 - dzX)) * math.sign(position.x)
        y = (math.max(math.abs(position.y) - dzY, 0) / (1 - dzY)) * math.sign(position.y)
    end
    return Vector2.new(x, -y)
end

local function onThumbstick2Input(action, state, iobj)
    if state == Enum.UserInputState.Change then
        thumbstick2Vector = Vector2.new(iobj.Position.x, iobj.Position.y * -1)
        return Enum.ContextActionResult.Sink
    end

    -- handle cancel event
    thumbstick2Vector = Vector2.new()
    return Enum.ContextActionResult.Pass
end

local function getRectCenter(rect2d: Rect)
    return (rect2d.Min + rect2d.Max) / 2
end

local function processPreviewEnabled(enabled: boolean)
    assert(FFlagPointAndClickCursor, "processPreviewEnabled should only be called when FFlagPointAndClickCursor is true")

    if enabled and not previewEnabled then
        if previousSelection then
            Interface:EnableUI(getRectCenter(previousSelection.SelectionRect2D))
        else
            Interface:EnableUI(getRectCenter(GuiService.SelectedObject.SelectionRect2D))
        end
        previewEnabled = true
    elseif not enabled and previewEnabled then
        Interface:DisableUI()
        previewEnabled = false
    end

    if gamepadSelectionRect2DChangedConnection then
        gamepadSelectionRect2DChangedConnection:Disconnect()
    end

    if previewEnabled and GuiService.SelectedObject then
        gamepadSelectionRect2DChangedConnection = GuiService.SelectedObject:GetPropertyChangedSignal("SelectionRect2D"):Connect(function()
            if previewEnabled then
                Interface:TweenCursorPosition(getRectCenter(GuiService.SelectedObject.SelectionRect2D))
            end
        end)
    end

    if enabled then
        Interface:TweenCursorPosition(getRectCenter(GuiService.SelectedObject.SelectionRect2D))
    end
end

local function onThumbstick1Input()
    assert(FFlagPointAndClickCursor, "onThumbstick1Input should only be called when FFlagPointAndClickCursor is true")
    if GuiService.SelectedObject then
        local gamepadState = UserInputService:GetGamepadState(Enum.UserInputType.Gamepad1)

        local thumbstickVector = Vector2.zero
        for _, input in gamepadState do
            if input.KeyCode == Enum.KeyCode.Thumbstick1 then
                thumbstickVector = processThumbstickInput(input.Position)
            end
        end

        if selectionChangedSinceThumbstick and thumbstickVector == Vector2.zero then
            selectionChangedSinceThumbstick = false
        end

        processPreviewEnabled(thumbstickVector ~= Vector2.zero and selectionChangedSinceThumbstick and GuiService.SelectedCoreObject == nil)
    else
        processPreviewEnabled(false)
    end
end

local function onSelectedObjectChanged()
    selectionChangedSinceThumbstick = true

    onThumbstick1Input()

    previousSelection = GuiService.SelectedObject
end

UserInputService.InputBegan:Connect(function(input)
    if not cursorEnabled then return end
    if input.UserInputType == Enum.UserInputType.Gamepad1 then
        if input.KeyCode == Enum.KeyCode.ButtonA then
            if GuiService.SelectedObject or GuiService.SelectedCoreObject then
            Interface:PlayCursorTweenActivate()
            end
        end
    end
end)

UserInputService.InputEnded:Connect(function(input)
    if FFlagInputEndedEventChange and FFlagPointAndClickCursor then
        if cursorEnabled then
            if input.UserInputType == Enum.UserInputType.Gamepad1 then
                if input.KeyCode == Enum.KeyCode.ButtonA then
                    Interface:PlayCursorTweenDefault()
                end
            end
        else
            if input.UserInputType == Enum.UserInputType.Gamepad1 then
                if input.KeyCode == Enum.KeyCode.Thumbstick1 then
                    onThumbstick1Input()
                end
            end
        end
    else
        if not cursorEnabled then return end
        if input.UserInputType == Enum.UserInputType.Gamepad1 then
            if input.KeyCode == Enum.KeyCode.ButtonA then
                Interface:PlayCursorTweenDefault()
            end
        end
    end
end)

if FFlagPointAndClickCursor then
UserInputService.InputChanged:Connect(function(input)
    if cursorEnabled then return end
    if input.UserInputType == Enum.UserInputType.Gamepad1 then
        if input.KeyCode == Enum.KeyCode.Thumbstick1 then
            onThumbstick1Input()
        end
    end
end)
end

function Input:GetThumbstickVector()
    return thumbstickVector
end

function Input:GetThumbstick2Vector()
    return thumbstick2Vector
end

function Input:EnablePreview()
    assert(FFlagPointAndClickCursor, "onThumbstick1Input should only be called when FFlagPointAndClickCursor is true")

    gamepadAnimatedSelectionPreviewConnection = GuiService:GetPropertyChangedSignal("SelectedObject"):Connect(onSelectedObjectChanged)
end

function Input:DisablePreview()
    assert(FFlagPointAndClickCursor, "onThumbstick1Input should only be called when FFlagPointAndClickCursor is true")

    if gamepadAnimatedSelectionPreviewConnection then
        gamepadAnimatedSelectionPreviewConnection:Disconnect()
        gamepadAnimatedSelectionPreviewConnection = nil
    end
end

function Input:EnableInput()
    gamepadThumbstick1ChangedConnection = GamepadService.GamepadThumbstick1Changed:Connect(function(event)
        thumbstickVector = processThumbstickInput(event)
    end)

    ContextActionService:BindCoreActionAtPriority("VirtualCursorThumbstick1Movement", function(action, state, iobject) end, false, 
        Enum.ContextActionPriority.High.Value, Enum.KeyCode.Thumbstick1)

    ContextActionService:BindCoreActionAtPriority("VirtualCursorThumbstick2Movement", onThumbstick2Input, false, Enum.ContextActionPriority.High.Value, Enum.KeyCode.Thumbstick2)

    cursorEnabled = true
end

function Input:DisableInput()
    if not getFFlagPointAndClickCursor() or gamepadThumbstick1ChangedConnection then
        gamepadThumbstick1ChangedConnection:Disconnect()
        gamepadThumbstick1ChangedConnection = nil
    end

    thumbstickVector = Vector2.new()
    thumbstick2Vector = Vector2.new()

    ContextActionService:UnbindCoreAction("VirtualCursorThumbstick1Movement")
    ContextActionService:UnbindCoreAction("VirtualCursorThumbstick2Movement")
    onThumbstick2Input("VirtualCursorThumbstick2Movement", Enum.UserInputState.Cancel, nil)

    cursorEnabled = false
end

return Input
