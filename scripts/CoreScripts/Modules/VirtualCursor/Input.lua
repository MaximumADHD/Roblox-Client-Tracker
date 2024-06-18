--!nonstrict
local VirtualCursorFolder = script.Parent

local ContextActionService = game:GetService("ContextActionService")
local GuiService = game:GetService("GuiService")
local UserInputService = game:GetService("UserInputService")
local GamepadService = game:GetService("GamepadService")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local FFlagDisableUserMovementWhenVirtualCursorIsActive = game:DefineFastFlag("DisableUserMovementWhenVirtualCursorIsActive", false)

local properties = require(VirtualCursorFolder.Properties)
local Interface = require(VirtualCursorFolder.Interface)

local Input = {}

-- variables
local currentSensitivity = 1
local thumbstickVector = Vector2.new()
local thumbstick2Vector = Vector2.new()
local enabled = false
local gamepadThumbstick1ChangedConnection = nil

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

UserInputService.InputBegan:Connect(function(input)
	if not enabled then return end
	if input.UserInputType == Enum.UserInputType.Gamepad1 then
		if input.KeyCode == Enum.KeyCode.ButtonA then
			if GuiService.SelectedObject or GuiService.SelectedCoreObject then
			Interface:PlayCursorTweenActivate()
			end
		end
	end
end)

UserInputService.InputEnded:Connect(function(input)
	if not enabled then return end
	if input.UserInputType == Enum.UserInputType.Gamepad1 then
		if input.KeyCode == Enum.KeyCode.ButtonA then
			Interface:PlayCursorTweenDefault()
		end
	end
end)

function Input:GetThumbstickVector()
	return thumbstickVector
end

function Input:GetThumbstick2Vector()
	return thumbstick2Vector
end

function Input:EnableInput()
	gamepadThumbstick1ChangedConnection = GamepadService.GamepadThumbstick1Changed:Connect(function(event)
		thumbstickVector = processThumbstickInput(event)
	end)

	if FFlagDisableUserMovementWhenVirtualCursorIsActive then
		ContextActionService:BindCoreActionAtPriority("VirtualCursorThumbstick1Movement", function(action, state, iobject) end, false, 
			Enum.ContextActionPriority.High.Value, Enum.KeyCode.Thumbstick1)
	end

	ContextActionService:BindCoreActionAtPriority("VirtualCursorThumbstick2Movement", onThumbstick2Input, false, Enum.ContextActionPriority.High.Value, Enum.KeyCode.Thumbstick2)

	enabled = true
end

function Input:DisableInput()
	gamepadThumbstick1ChangedConnection:Disconnect()
	gamepadThumbstick1ChangedConnection = nil

	if FFlagDisableUserMovementWhenVirtualCursorIsActive then
		ContextActionService:UnbindCoreAction("VirtualCursorThumbstick1Movement")
	end

	ContextActionService:UnbindCoreAction("VirtualCursorThumbstick2Movement")
	onThumbstick2Input("VirtualCursorThumbstick2Movement", Enum.UserInputState.Cancel, nil)

	enabled = false
end

return Input
