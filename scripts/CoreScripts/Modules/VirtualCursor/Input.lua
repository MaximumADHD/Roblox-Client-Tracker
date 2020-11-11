local VirtualCursorFolder = script.Parent

local ContextActionService = game:GetService("ContextActionService")
local GuiService = game:GetService("GuiService")

local properties = require(VirtualCursorFolder.Properties)
local Interface = require(VirtualCursorFolder.Interface)
local VirtualCursorEnums = require(VirtualCursorFolder.Enums)

local Input = {}

-- variables
local currentSensitivity = 1
local cursorFastModeInputDown = false -- raw state of the fastmode input object
local cursorFastMode = false -- pressing the thumbstick will toggle fast mode
local thumbstickVector = Vector2.new()

-- private functions
local function quad(x)
	return math.sign(x)*(x^2)
end

local function processThumbstickInput(rawInput) -- process raw input from the thumbstick to do any easing functions (ex quad), and account for deadzone
	local rawPos = rawInput.Position
	local x,y = 0,0
	if (rawPos.Magnitude >= properties.ThumbstickDeadzone) then
		local theta = math.atan2(rawPos.y, rawPos.x)
		local dzX = math.abs(math.cos(theta) * properties.ThumbstickDeadzone)
		local dzY = math.abs(math.sin(theta) * properties.ThumbstickDeadzone)

		x = (math.max(math.abs(rawPos.x) - dzX, 0) / (1 - dzX)) * math.sign(rawPos.x)
		y = (math.max(math.abs(rawPos.y) - dzY, 0) / (1 - dzY)) * math.sign(rawPos.y)
	end
	if properties.InputMode == VirtualCursorEnums.InputMode.Quad then
		return Vector2.new(quad(x), -quad(y))
	elseif properties.InputMode == VirtualCursorEnums.InputMode.Linear then
		return Vector2.new(x, -y)
	end
end

local function onThumbstickInput(action, state, iobj)
	-- called when thumbstick is moved if virtual cursor is activated
	if state == Enum.UserInputState.Change then
		thumbstickVector = processThumbstickInput(iobj)
		if not cursorFastModeInputDown then
			-- if post process input is less than 50% then cancel
			if thumbstickVector.Magnitude < 0.5 then
				cursorFastMode = false
			end
		end
		return Enum.ContextActionResult.Sink
	end
	-- handle cancel event
	thumbstickVector = Vector2.new()
	return Enum.ContextActionResult.Pass
end

local function onThumbstickPressedInput(action, state, iobj) -- simple toggle when activated
	if state == Enum.UserInputState.Begin then
		cursorFastMode = true
		cursorFastModeInputDown = true
	else
		cursorFastModeInputDown = false
		if cursorFastMode and (thumbstickVector.Magnitude < 0.5) then
			cursorFastMode = false
		end
	end
end

local function onSelectionInput(action, state, iobj)
	-- called when the selection button (A on xbox) is pressed
	if state == Enum.UserInputState.Begin then
		if GuiService.SelectedObject then
			Interface:PlayCursorTweenActivate()
			return Enum.ContextActionResult.Pass -- pass to allow actual selection of the button
		end
	else
		Interface:PlayCursorTweenDefault()
		if GuiService.SelectedObject then
			return Enum.ContextActionResult.Pass
		end
	end
	return Enum.ContextActionResult.Sink -- sink to prevent jumping when in virtual cursor mode.
end

function Input:GetThumbstickVector()
	return thumbstickVector
end

function Input:GetCursorFastModeEnabled()
	return cursorFastMode
end

function Input:GetSensitivityEffect()
	-- rather than just be a multiple of camera sensitivity (which would result in very
	-- slow speeds at lowest senstivity) try a scale from a base value to 1
	local base = properties.SensitivityBase
	return base+(currentSensitivity*(1-base))
end

function Input:SetCurrentSensitivity(val)
	currentSensitivity = val
end

function Input:EnableInput()
	ContextActionService:BindCoreActionAtPriority("VirtualCursorThumbstickMovement", onThumbstickInput, false, Enum.ContextActionPriority.Low.Value, Enum.KeyCode.Thumbstick1)
	ContextActionService:BindCoreActionAtPriority("VirtualCursorSelectionAction", onSelectionInput, false, Enum.ContextActionPriority.Low.Value, Enum.KeyCode.ButtonA)
	ContextActionService:BindCoreActionAtPriority("VirtualCursorThumbstickAction", onThumbstickPressedInput, false, Enum.ContextActionPriority.Low.Value, Enum.KeyCode.ButtonL3)
end

function Input:DisableInput()
	ContextActionService:UnbindCoreAction("VirtualCursorThumbstickMovement")
	ContextActionService:UnbindCoreAction("VirtualCursorSelectionAction")
	ContextActionService:UnbindCoreAction("VirtualCursorThumbstickAction")

	-- fire actions as if they were canceled
	onSelectionInput("VirtualCursorSelectionAction", Enum.UserInputState.Cancel, nil)
	onThumbstickInput("VirtualCursorThumbstickMovement", Enum.UserInputState.Cancel, nil)
	onThumbstickPressedInput("VirtualCursorThumbstickAction", Enum.UserInputState.Cancel, nil)
end

return Input
