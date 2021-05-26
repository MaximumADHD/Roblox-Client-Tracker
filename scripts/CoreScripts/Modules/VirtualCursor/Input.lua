local VirtualCursorFolder = script.Parent

local ContextActionService = game:GetService("ContextActionService")
local GuiService = game:GetService("GuiService")
local UserInputService = game:GetService("UserInputService")

local properties = require(VirtualCursorFolder.Properties)
local Interface = require(VirtualCursorFolder.Interface)

local Input = {}

-- variables
local currentSensitivity = 1
local thumbstickVector = Vector2.new()
local enabled = false

local function processThumbstickInput(rawInput) -- process raw input from the thumbstick and account for deadzone
	local rawPos = rawInput.Position
	local x,y = 0,0
	if (rawPos.Magnitude >= properties.ThumbstickDeadzone) then
		local theta = math.atan2(rawPos.y, rawPos.x)
		local dzX = math.abs(math.cos(theta) * properties.ThumbstickDeadzone)
		local dzY = math.abs(math.sin(theta) * properties.ThumbstickDeadzone)

		x = (math.max(math.abs(rawPos.x) - dzX, 0) / (1 - dzX)) * math.sign(rawPos.x)
		y = (math.max(math.abs(rawPos.y) - dzY, 0) / (1 - dzY)) * math.sign(rawPos.y)
	end
	return Vector2.new(x, -y)
end

local function onThumbstickInput(action, state, iobj)
	-- called when thumbstick is moved if virtual cursor is activated
	if state == Enum.UserInputState.Change then
		thumbstickVector = processThumbstickInput(iobj)
		return Enum.ContextActionResult.Sink
	end
	-- handle cancel event
	thumbstickVector = Vector2.new()
	return Enum.ContextActionResult.Pass
end

local function onSelectionInput(action, state, iobj)
	-- called when the selection button (A on xbox) is pressed
	if GuiService.SelectedObject or GuiService.SelectedCoreObject then
		return Enum.ContextActionResult.Pass -- pass to allow actual selection of the button
	end
	return Enum.ContextActionResult.Sink -- sink to prevent jumping when in virtual cursor mode.
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

function Input:EnableInput()
	ContextActionService:BindCoreActionAtPriority("VirtualCursorThumbstickMovement", onThumbstickInput, false, Enum.ContextActionPriority.High.Value, Enum.KeyCode.Thumbstick1)
	ContextActionService:BindCoreActionAtPriority("VirtualCursorSelectionAction", onSelectionInput, false, Enum.ContextActionPriority.High.Value, Enum.KeyCode.ButtonA)
	enabled = true
end

function Input:DisableInput()
	ContextActionService:UnbindCoreAction("VirtualCursorThumbstickMovement")
	ContextActionService:UnbindCoreAction("VirtualCursorSelectionAction")

	-- fire actions as if they were canceled
	onThumbstickInput("VirtualCursorThumbstickMovement", Enum.UserInputState.Cancel, nil)
	onSelectionInput("VirtualCursorSelectionAction", Enum.UserInputState.Cancel, nil)
	enabled = false
end

return Input
