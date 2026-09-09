--!strict
local ContextActionService = game:GetService("ContextActionService")
local UserInputService = game:GetService("UserInputService")
local Players = game:GetService("Players")
local UserGameSettings = UserSettings():GetService("UserGameSettings")
local VRService = game:GetService("VRService")
local GuiService = game:GetService("GuiService")

local CommonUtils = require(script.Parent.Parent:WaitForChild("CommonUtils"))
local FlagUtil = CommonUtils.get("FlagUtil")
local FFlagUserPSTextboxResetCameraInput = FlagUtil.getUserFlag("UserPSTextboxResetCameraInput")

--[[ Input Actions ]]
local inputContexts = script.Parent.Parent:WaitForChild("InputContexts")
local cameraContext = inputContexts:WaitForChild("CameraContext") :: InputContext

local cameraRotationAction = cameraContext:WaitForChild("CameraRotationAction") :: InputAction
local cameraZoomAction = cameraContext:WaitForChild("CameraZoomAction") :: InputAction

local cameraRotationGamepadBinding = cameraRotationAction:WaitForChild("GamepadBinding") :: InputBinding

local cameraRotationMouseBinding = cameraRotationAction:WaitForChild("MouseBinding") :: InputBinding
local cameraRotationTrackpadBinding = cameraRotationAction:WaitForChild("TrackpadBinding") :: InputBinding

local cameraToggleAction = cameraContext:WaitForChild("CameraToggleAction") :: InputAction
local cameraPanActiveAction = cameraContext:WaitForChild("CameraPanActiveAction") :: InputAction

local MB_TAP_LENGTH = 0.3 -- (s) length of time for a short mouse button tap to be registered

local MIN_TOUCH_SENSITIVITY_FRACTION = 0.25 -- 25% sensitivity at 90°

local lastYInvert = 1

local function updateCameraYInvert()
	local yInvert = UserGameSettings:GetCameraYInvertValue()
	if yInvert == lastYInvert then
		return
	end
	lastYInvert = yInvert
	for _, child in cameraRotationAction:GetChildren() do
		if child:IsA("InputBinding") then
			local scale = child.Vector2Scale
			child.Vector2Scale = Vector2.new(scale.X, -scale.Y)
		end
	end
end

local function updateGamepadCameraSensitivity()
	cameraRotationGamepadBinding.Scale = UserGameSettings.GamepadCameraSensitivity
end

local function updateMouseCameraSensitivity()
	local sensitivity = UserGameSettings.MouseSensitivity
	cameraRotationMouseBinding.Scale = sensitivity
	cameraRotationTrackpadBinding.Scale = sensitivity
end

UserGameSettings:GetPropertyChangedSignal("GamepadCameraSensitivity"):Connect(updateGamepadCameraSensitivity)
updateGamepadCameraSensitivity() -- initialize the sensitivity on script load

UserGameSettings:GetPropertyChangedSignal("MouseSensitivity"):Connect(updateMouseCameraSensitivity)
updateMouseCameraSensitivity() -- initialize the sensitivity on script load

updateCameraYInvert() -- initialize Y invert behavior on script load

-- Adjust the touch sensitivity so that sensitivity is reduced when swiping up
-- or down, but stays the same when swiping towards the middle of the screen
local function adjustTouchPitchSensitivity(delta: Vector2): Vector2
	local camera = workspace.CurrentCamera

	if not camera then
		return delta
	end

	-- get the camera pitch in world space
	local pitch = camera.CFrame:ToEulerAnglesYXZ()

	if delta.Y*pitch >= 0 then
		-- do not reduce sensitivity when pitching towards the horizon
		return delta
	end

	-- set up a line to fit:
	-- 1 = f(0)
	-- 0 = f(±pi/2)
	local curveY = 1 - (2*math.abs(pitch)/math.pi)^0.75

	-- remap curveY from [0, 1] -> [MIN_TOUCH_SENSITIVITY_FRACTION, 1]
	local sensitivity = curveY*(1 - MIN_TOUCH_SENSITIVITY_FRACTION) + MIN_TOUCH_SENSITIVITY_FRACTION

	return Vector2.new(1, sensitivity)*delta
end

local CameraInput = {}

do
	local panInputCount = 0

	local function incPanInputCount()
		panInputCount = math.max(0, panInputCount + 1)
	end

	local function decPanInputCount()
		panInputCount = math.max(0, panInputCount - 1)
	end

	local function resetPanInputCount()
		panInputCount = 0
	end

	function CameraInput.getRotationActivated(): boolean
		return panInputCount > 0 or cameraRotationAction:GetState().Magnitude > 0
	end

    -- getPanActivated is only used for updating mouse lock behavior. Separating from getRotationActivated, which is used for vehicle camera auto reset.
	function CameraInput.getPanActivated(): boolean
		return panInputCount > 0
	end

	function CameraInput.getRotation(dt): Vector2
		updateCameraYInvert()
		local result = cameraRotationAction:GetState() * dt
		if UserInputService.PreferredInput == Enum.PreferredInput.Touch then
			result = adjustTouchPitchSensitivity(result)
		end
		return result
	end

	function CameraInput.getZoomDelta(dt): number
		local zoomState = cameraZoomAction:GetState() * dt
		return zoomState
	end

	do
		cameraPanActiveAction.Pressed:Connect(incPanInputCount)
		cameraPanActiveAction.Released:Connect(decPanInputCount)

		local inputEnabled = false

		function CameraInput.setInputEnabled(_inputEnabled)
			if inputEnabled == _inputEnabled then
				return
			end
			inputEnabled = _inputEnabled

			resetPanInputCount()

			if inputEnabled then -- enable
				cameraZoomAction.Enabled = true
				cameraRotationAction.Enabled = true

				cameraPanActiveAction.Enabled = true
			else -- disable
				cameraZoomAction.Enabled = false
				cameraRotationAction.Enabled = false

				cameraPanActiveAction.Enabled = false
			end
		end

		function CameraInput.getInputEnabled()
			return inputEnabled
		end

		UserInputService.WindowFocused:Connect(resetPanInputCount)
		UserInputService.WindowFocusReleased:Connect(resetPanInputCount)
		GuiService.MenuOpened:Connect(resetPanInputCount)
		if FFlagUserPSTextboxResetCameraInput then
			UserInputService.TextBoxFocusReleased:Connect(resetPanInputCount)
		end
	end
end

-- Toggle pan
do
	local holdPan = false
	local togglePan = false
	local lastRmbDown = 0 -- tick() timestamp of the last right mouse button down event

	function CameraInput.getHoldPan(): boolean
		return holdPan
	end

	function CameraInput.getTogglePan(): boolean
		return togglePan
	end

	function CameraInput.getPanning(): boolean
		return togglePan or holdPan
	end

	function CameraInput.setTogglePan(value: boolean)
		togglePan = value
	end

	local cameraToggleInputEnabled = false
	local rmbDownConnection
	local rmbUpConnection

	rmbDownConnection = cameraToggleAction.Pressed:Connect(function()
		holdPan = true
		lastRmbDown = tick()
	end)

	rmbUpConnection = cameraToggleAction.Released:Connect(function()
		holdPan = false
		if tick() - lastRmbDown < MB_TAP_LENGTH and (togglePan or UserInputService:GetMouseDelta().Magnitude < 2) then
			togglePan = not togglePan
		end
	end)

	function CameraInput.enableCameraToggleInput()
		if cameraToggleInputEnabled then
			return
		end
		cameraToggleInputEnabled = true

		holdPan = false
		togglePan = false

		cameraToggleAction.Enabled = true
	end

	function CameraInput.disableCameraToggleInput()
		if not cameraToggleInputEnabled then
			return
		end
		cameraToggleInputEnabled = false

		cameraToggleAction.Enabled = false
	end
end

return CameraInput
