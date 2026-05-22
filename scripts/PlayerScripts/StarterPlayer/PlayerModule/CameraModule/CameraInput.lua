--!strict
local ContextActionService = game:GetService("ContextActionService")
local UserInputService = game:GetService("UserInputService")
local Players = game:GetService("Players")
local UserGameSettings = UserSettings():GetService("UserGameSettings")
local VRService = game:GetService("VRService")
local GuiService = game:GetService("GuiService")

local CommonUtils = require(script.Parent.Parent:WaitForChild("CommonUtils"))
local FlagUtil = CommonUtils.get("FlagUtil")
local FFlagUserPSSinkUnknownTouchEvents = FlagUtil.getUserFlag("UserPSSinkUnknownTouchEvents")
local FFlagUserPSTextboxResetCameraInput = FlagUtil.getUserFlag("UserPSTextboxResetCameraInput")
local FFlagUserPlayerScriptsCameraTouchUsesIAS = FlagUtil.getUserFlag("UserPlayerScriptsCameraTouchUsesIAS")
local FFlagUserPlayerScriptsDynamicThumbstickUsesIAS = FlagUtil.getUserFlag("UserPlayerScriptsDynamicThumbstickUsesIAS")

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

local player = Players.LocalPlayer

local CAMERA_INPUT_PRIORITY = Enum.ContextActionPriority.Medium.Value
local MB_TAP_LENGTH = 0.3 -- (s) length of time for a short mouse button tap to be registered

-- these speeds should not be scaled by dt because the input returned is not normalized.
-- that is, at lower framerates, the magnitude of the input delta will be larger because the pointer/mouse/touch
-- has moved more pixels between frames.
-- Remove with FFlagUserPlayerScriptsCameraTouchUsesIAS
local ROTATION_SPEED_MOUSE = if not FFlagUserPlayerScriptsCameraTouchUsesIAS then Vector2.new(1, 0.77)*math.rad(0.5) else nil-- (rad/inputdelta)
local ROTATION_SPEED_POINTERACTION = if not FFlagUserPlayerScriptsCameraTouchUsesIAS then Vector2.new(1, 0.77)*math.rad(7) else nil-- (rad/inputdelta)
local ROTATION_SPEED_TOUCH = if not FFlagUserPlayerScriptsCameraTouchUsesIAS then Vector2.new(1, 0.66)*math.rad(1) else nil-- (rad/inputdelta)

local ZOOM_SPEED_MOUSE = if not FFlagUserPlayerScriptsCameraTouchUsesIAS then 1 else nil-- (scaled studs/wheel click)
local ZOOM_SPEED_TOUCH = if not FFlagUserPlayerScriptsCameraTouchUsesIAS then 0.04 else nil-- (scaled studs/DIP %)

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

if FFlagUserPlayerScriptsCameraTouchUsesIAS then
	updateCameraYInvert() -- initialize Y invert behavior on script load
end

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

local isInDynamicThumbstickArea -- Remove with FFlagUserPlayerScriptsDynamicThumbstickUsesIAS
if not FFlagUserPlayerScriptsDynamicThumbstickUsesIAS then
	isInDynamicThumbstickArea = function(pos: Vector3): boolean
	local playerGui = player:FindFirstChildOfClass("PlayerGui")
	local touchGui = playerGui and playerGui:FindFirstChild("TouchGui")
	local touchFrame = touchGui and touchGui:FindFirstChild("TouchControlFrame")
	local thumbstickFrame = touchFrame and touchFrame:FindFirstChild("DynamicThumbstickFrame")

	if not thumbstickFrame then
		return false
	end

	if not touchGui.Enabled then
		return false
	end

	local posTopLeft = thumbstickFrame.AbsolutePosition
	local posBottomRight = posTopLeft + thumbstickFrame.AbsoluteSize

	return
		pos.X >= posTopLeft.X and
		pos.Y >= posTopLeft.Y and
		pos.X <= posBottomRight.X and
		pos.Y <= posBottomRight.Y
	end
end

local CameraInput = {}

do
	local connectionList = {}
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

	local mouseState = if not FFlagUserPlayerScriptsCameraTouchUsesIAS then {
		Movement = Vector2.new(),
		Wheel = 0, -- PointerAction
		Pan = Vector2.new(), -- PointerAction
		Pinch = 0, -- PointerAction
	} else nil
	local touchState = if not FFlagUserPlayerScriptsCameraTouchUsesIAS then {
		Move = Vector2.new(),
		Pinch = 0,
	} else nil

	function CameraInput.getRotationActivated(): boolean
		return panInputCount > 0 or cameraRotationAction:GetState().Magnitude > 0
	end

    -- getPanActivated is only used for updating mouse lock behavior. Separating from getRotationActivated, which is used for vehicle camera auto reset.
	function CameraInput.getPanActivated(): boolean
		return panInputCount > 0
	end

	function CameraInput.getRotation(dt): Vector2

		if FFlagUserPlayerScriptsCameraTouchUsesIAS then
			updateCameraYInvert()
			local result = cameraRotationAction:GetState() * dt
			if UserInputService.PreferredInput == Enum.PreferredInput.Touch then
				result = adjustTouchPitchSensitivity(result)
			end
			return result
		else
			local inversionVector = Vector2.new(1, UserGameSettings:GetCameraYInvertValue())
			local kTouch = adjustTouchPitchSensitivity(touchState.Move)
			local result = kTouch * ROTATION_SPEED_TOUCH + cameraRotationAction:GetState() * dt
			return result * inversionVector
		end
	end

	function CameraInput.getZoomDelta(dt): number
		local zoomState = cameraZoomAction:GetState() * dt

		if not FFlagUserPlayerScriptsCameraTouchUsesIAS then
			local kTouch = -touchState.Pinch
			zoomState += kTouch * ZOOM_SPEED_TOUCH
		end
		return zoomState
	end

	do
		local mouseMovement -- Remove with FFlagUserPlayerScriptsCameraTouchUsesIAS
		local resetInputDevices -- Remove with FFlagUserPlayerScriptsCameraTouchUsesIAS
		if not FFlagUserPlayerScriptsCameraTouchUsesIAS then
			mouseMovement = function(input)
				assert(not FFlagUserPlayerScriptsCameraTouchUsesIAS)
				local delta = input.Delta
				mouseState.Movement = Vector2.new(delta.X, delta.Y)
			end
			resetInputDevices = function()
				assert(not FFlagUserPlayerScriptsCameraTouchUsesIAS)
				for _, device in pairs({
					mouseState,
					touchState,
				}) do
					for k, v in pairs(device) do
						if type(v) == "boolean" then
							device[k] = false
						else
							device[k] *= 0 -- Mul by zero to preserve vector types
						end
					end
				end
				resetPanInputCount()
			end
		end

		local touchBegan, touchChanged, touchEnded, resetTouchState-- Remove with FFlagUserPlayerScriptsCameraTouchUsesIAS
		local inputBegan, inputChanged, inputEnded -- Remove with FFlagUserPlayerScriptsCameraTouchUsesIAS
		if not FFlagUserPlayerScriptsCameraTouchUsesIAS then
			-- Use TouchPan & TouchPinch when they work in the Studio emulator

			local touches: {[InputObject]: boolean?} = {} -- {[InputObject] = sunk}
			local dynamicThumbstickInput: InputObject? -- Special-cased
			local lastPinchDiameter: number?

			touchBegan = function(input: InputObject, sunk: boolean)
				assert(not FFlagUserPlayerScriptsCameraTouchUsesIAS)
				assert(input.UserInputType == Enum.UserInputType.Touch)
				assert(input.UserInputState == Enum.UserInputState.Begin)

				if dynamicThumbstickInput == nil and isInDynamicThumbstickArea(input.Position) and not sunk then
					-- any finger down starting in the dynamic thumbstick area should always be
					-- ignored for camera purposes. these must be handled specially from all other
					-- inputs, as the DT does not sink inputs by itself
					dynamicThumbstickInput = input
					return
				end

				if not sunk then
					incPanInputCount()
				end

				-- register the finger
				touches[input] = sunk
			end

			touchEnded = function(input: InputObject, sunk: boolean)
				assert(not FFlagUserPlayerScriptsCameraTouchUsesIAS)
				assert(input.UserInputType == Enum.UserInputType.Touch)
				assert(input.UserInputState == Enum.UserInputState.End)

				-- reset the DT input
				if input == dynamicThumbstickInput then
					dynamicThumbstickInput = nil
				end

				-- reset pinch state if one unsunk finger lifts
				if touches[input] == false then
					lastPinchDiameter = nil
					decPanInputCount()
				end

				-- unregister input
				touches[input] = nil
			end

			touchChanged = function(input, sunk)
				assert(not FFlagUserPlayerScriptsCameraTouchUsesIAS)
				assert(input.UserInputType == Enum.UserInputType.Touch)
				assert(input.UserInputState == Enum.UserInputState.Change)

				-- ignore movement from the DT finger
				if input == dynamicThumbstickInput then
					return
				end

				-- fixup unknown touches
				if touches[input] == nil then
					if FFlagUserPSSinkUnknownTouchEvents then
						touches[input] = true
					else
						touches[input] = sunk
					end
				end

				-- collect unsunk touches
				local unsunkTouches = {}
				for touch, sunk in pairs(touches) do
					if not sunk then
						table.insert(unsunkTouches, touch)
					end
				end

				-- 1 finger: pan
				if #unsunkTouches == 1 then
					if touches[input] == false then
						local delta = input.Delta
						touchState.Move += Vector2.new(delta.X, delta.Y) -- total touch pan movement (reset at end of frame)
					end
				end

				-- 2 fingers: pinch
				if #unsunkTouches == 2 then
					local pinchDiameter = (unsunkTouches[1].Position - unsunkTouches[2].Position).Magnitude

					if lastPinchDiameter then
						touchState.Pinch += pinchDiameter - lastPinchDiameter
					end

					lastPinchDiameter = pinchDiameter
				else
					lastPinchDiameter = nil
				end
			end

			resetTouchState = function()
				assert(not FFlagUserPlayerScriptsCameraTouchUsesIAS)
				touches = {}
				dynamicThumbstickInput = nil
				lastPinchDiameter = nil
				resetPanInputCount()
			end

			inputBegan = function(input, sunk)
				assert(not FFlagUserPlayerScriptsCameraTouchUsesIAS)
				if input.UserInputType == Enum.UserInputType.Touch then
					touchBegan(input, sunk)
				end
			end

			inputChanged = function(input, sunk)
				assert(not FFlagUserPlayerScriptsCameraTouchUsesIAS)
				if input.UserInputType == Enum.UserInputType.Touch then
					touchChanged(input, sunk)
				end
			end

			inputEnded = function(input, sunk)
				assert(not FFlagUserPlayerScriptsCameraTouchUsesIAS)
				if input.UserInputType == Enum.UserInputType.Touch then
					touchEnded(input, sunk)
				end
			end
		end

		cameraPanActiveAction.Pressed:Connect(incPanInputCount)
		cameraPanActiveAction.Released:Connect(decPanInputCount)

		local inputEnabled = false

		function CameraInput.setInputEnabled(_inputEnabled)
			if inputEnabled == _inputEnabled then
				return
			end
			inputEnabled = _inputEnabled

			if FFlagUserPlayerScriptsCameraTouchUsesIAS then
				resetPanInputCount()
			else
				resetInputDevices()
				resetTouchState()
			end

			if inputEnabled then -- enable
				cameraZoomAction.Enabled = true
				cameraRotationAction.Enabled = true

				cameraPanActiveAction.Enabled = true

				if not FFlagUserPlayerScriptsCameraTouchUsesIAS then
					table.insert(connectionList, UserInputService.InputBegan:Connect(inputBegan))
					table.insert(connectionList, UserInputService.InputChanged:Connect(inputChanged))
					table.insert(connectionList, UserInputService.InputEnded:Connect(inputEnded))
					table.insert(connectionList, GuiService.MenuOpened:Connect(resetTouchState))
				end

			else -- disable
				cameraZoomAction.Enabled = false
				cameraRotationAction.Enabled = false

				cameraPanActiveAction.Enabled = false

				for _, conn in pairs(connectionList) do
					conn:Disconnect()
				end
				connectionList = {}
			end
		end

		function CameraInput.getInputEnabled()
			return inputEnabled
		end

		function CameraInput.resetInputForFrameEnd()
			assert(not FFlagUserPlayerScriptsCameraTouchUsesIAS)
			touchState.Move = Vector2.new()
			touchState.Pinch = 0
		end

		if FFlagUserPlayerScriptsCameraTouchUsesIAS then
			UserInputService.WindowFocused:Connect(resetPanInputCount)
			UserInputService.WindowFocusReleased:Connect(resetPanInputCount)
			GuiService.MenuOpened:Connect(resetPanInputCount)
		else
			UserInputService.WindowFocused:Connect(resetInputDevices)
			UserInputService.WindowFocusReleased:Connect(resetInputDevices)
		end
		if FFlagUserPSTextboxResetCameraInput then
			if FFlagUserPlayerScriptsCameraTouchUsesIAS then
				UserInputService.TextBoxFocusReleased:Connect(resetPanInputCount)
			else
				UserInputService.TextBoxFocusReleased:Connect(resetInputDevices)
			end
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
