local CrouchUserInput = {}
CrouchUserInput.__index = CrouchUserInput

CrouchUserInput.crouchInput = false

local ContextActionService = game:GetService("ContextActionService")
local GuiService = game:GetService("GuiService")
local Players = game:GetService("Players")

local Config = require(script.Parent.Config)

local function initCrouchTouchButton()
    if not Config.EnableTouchUI then
        return
    end

    local playerGui = Players.LocalPlayer.PlayerGui
    local touchGui = playerGui:WaitForChild("TouchGui", 20)
    local touchControlFrame = touchGui and touchGui:WaitForChild("TouchControlFrame", 20)
    local jumpButton = touchControlFrame and touchControlFrame:WaitForChild("JumpButton", 20)

    local crouchButton = nil

    if jumpButton then
        crouchButton = jumpButton:Clone()
        crouchButton.Name = "CrouchButton"

        crouchButton.Rotation = 180
        crouchButton.Size = UDim2.new(
            crouchButton.Size.X.Scale,
            crouchButton.Size.X.Offset * 0.629,
            crouchButton.Size.Y.Scale,
            crouchButton.Size.Y.Offset * 0.629
        )
        crouchButton.Position += UDim2.new(0, -crouchButton.Size.X.Offset * 1.33 , 0, jumpButton.Size.Y.Offset - crouchButton.Size.Y.Offset)

        local touchObject: InputObject? = nil
        crouchButton.InputBegan:Connect(function(inputObject)
            --A touch that starts elsewhere on the screen will be sent to a frame's InputBegan event
            --if it moves over the frame. So we check that this is actually a new touch (inputObject.UserInputState ~= Enum.UserInputState.Begin)
            if touchObject or inputObject.UserInputType ~= Enum.UserInputType.Touch
                or inputObject.UserInputState ~= Enum.UserInputState.Begin then
                return
            end

            touchObject = inputObject
            crouchButton.ImageRectOffset = Vector2.new(146, 146)
        end)

        local OnInputEnded = function()
            touchObject = nil
            crouchButton.ImageRectOffset = Vector2.new(1, 146)
        end

        crouchButton.InputEnded:Connect(function(inputObject: InputObject)
            if inputObject == touchObject then
                OnInputEnded()
            end
        end)

        GuiService.MenuOpened:Connect(function()
            if touchObject then
                OnInputEnded()
            end
        end)

        crouchButton.Parent = touchControlFrame
        crouchButton.Visible = true
    end

    if crouchButton then
        local touchObject: InputObject? = nil
        crouchButton.InputBegan:Connect(function(inputObject)
            --A touch that starts elsewhere on the screen will be sent to a frame's InputBegan event
            --if it moves over the frame. So we check that this is actually a new touch (inputObject.UserInputState ~= Enum.UserInputState.Begin)
            if touchObject or inputObject.UserInputType ~= Enum.UserInputType.Touch
                or inputObject.UserInputState ~= Enum.UserInputState.Begin then
                return
            end

            touchObject = inputObject
            CrouchUserInput.crouchInput = true
        end)

        local OnInputEnded = function()
            touchObject = nil
            CrouchUserInput.crouchInput = false
        end

        crouchButton.InputEnded:Connect(function(inputObject: InputObject)
            if inputObject == touchObject then
                OnInputEnded()
            end
        end)

        GuiService.MenuOpened:Connect(function()
            if touchObject then
                OnInputEnded()
            end
        end)
    end
end

function CrouchUserInput.new()
    local self = setmetatable({}, CrouchUserInput)

    if #Config.KeyCodes then
        coroutine.wrap(initCrouchTouchButton)()
    
        local bindFunction = function(name, state, input)
            if state == Enum.UserInputState.Begin then
                self.crouchInput = true
                return true
            elseif state == Enum.UserInputState.End then
                self.crouchInput = false
                return true
            end
    
            return false
        end
    
        ContextActionService:BindActionAtPriority(
            "CrouchingUserInput",
            bindFunction,
            false,
            Enum.ContextActionPriority.Default.Value,
            table.unpack(Config.KeyCodes)
        )
    end

    return self
end

return CrouchUserInput