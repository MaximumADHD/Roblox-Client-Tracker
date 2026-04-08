--!strict
local ContextActionService = game:GetService("ContextActionService")
local UserInputService = game:GetService("UserInputService")
local Players = game:GetService("Players")
local UserGameSettings = UserSettings():GetService("UserGameSettings")
local VRService = game:GetService("VRService")
local GuiService = game:GetService("GuiService")

--[[ Input Actions ]]
local inputContexts = script.Parent.Parent:WaitForChild("InputContexts")
local character = inputContexts:WaitForChild("Character") :: InputContext

local cameraRotation = character:WaitForChild("CameraRotation") :: InputAction
local cameraZoom = character:WaitForChild("CameraZoom") :: InputAction

local cameraRotationGamepadBinding = cameraRotation:WaitForChild("GamepadBinding") :: InputBinding

local CommonUtils = require(script.Parent.Parent:WaitForChild("CommonUtils"))
local FlagUtil = CommonUtils.get("FlagUtil")
local FFlagUserPSSinkUnknownTouchEvents = FlagUtil.getUserFlag("UserPSSinkUnknownTouchEvents")
local FFlagUserPSTextboxResetCameraInput = FlagUtil.getUserFlag("UserPSTextboxResetCameraInput")
local FFlagUserPlayerScriptsCameraRotationUsesIAS = FlagUtil.getUserFlag("UserPlayerScriptsCameraRotationUsesIAS")
local FFlagUserPlayerScriptsCameraInputNoBindables = FlagUtil.getUserFlag("UserPlayerScriptsCameraInputNoBindables")

local cameraRotationMouseDeltaBinding = if FFlagUserPlayerScriptsCameraRotationUsesIAS
	then cameraRotation:WaitForChild("MouseDeltaBinding") :: InputBinding
	else nil

local cameraRotationPointerPanBinding = if FFlagUserPlayerScriptsCameraRotationUsesIAS
	then cameraRotation:WaitForChild("TrackpadPanBinding") :: InputBinding
	else nil

local cameraToggle = nil
local cameraPanActive = nil
local cameraGamepadZoom = nil
local cameraGamepadReset = nil
if FFlagUserPlayerScriptsCameraInputNoBindables then
	cameraToggle = character:WaitForChild("CameraToggle") :: InputAction
else
	cameraGamepadZoom = character:WaitForChild("CameraGamepadZoom") :: InputAction
	cameraGamepadReset = character:WaitForChild("CameraGamepadReset") :: InputAction
end
if FFlagUserPlayerScriptsCameraRotationUsesIAS then
	cameraPanActive = character:WaitForChild("CameraPanActive") :: InputAction
end

local player = Players.LocalPlayer

local CAMERA_INPUT_PRIORITY = Enum.ContextActionPriority.Medium.Value
local MB_TAP_LENGTH = 0.3 -- (s) length of time for a short mouse button tap to be registered

-- these speeds should not be scaled by dt because the input returned is not normalized.
-- that is, at lower framerates, the magnitude of the input delta will be larger because the pointer/mouse/touch
-- has moved more pixels between frames.
local ROTATION_SPEED_MOUSE = Vector2.new(1, 0.77)*math.rad(0.5) -- (rad/inputdelta)
local ROTATION_SPEED_POINTERACTION = Vector2.new(1, 0.77)*math.rad(7) -- (rad/inputdelta)
local ROTATION_SPEED_TOUCH = Vector2.new(1, 0.66)*math.rad(1) -- (rad/inputdelta)

local ZOOM_SPEED_MOUSE = 1 -- (scaled studs/wheel click)
local ZOOM_SPEED_TOUCH = 0.04 -- (scaled studs/DIP %)

local MIN_TOUCH_SENSITIVITY_FRACTION = 0.25 -- 25% sensitivity at 90°

-- right mouse button up & down events
local rmbDown, rmbUp
if not FFlagUserPlayerScriptsCameraInputNoBindables then
	local rmbDownBindable = Instance.new("BindableEvent")
	local rmbUpBindable = Instance.new("BindableEvent")

	rmbDown = rmbDownBindable.Event
	rmbUp = rmbUpBindable.Event

	UserInputService.InputBegan:Connect(function(input, gpe)
		if not gpe and input.UserInputType == Enum.UserInputType.MouseButton2 then
			rmbDownBindable:Fire()
		end
	end)

	UserInputService.InputEnded:Connect(function(input, gpe)
		if input.UserInputType == Enum.UserInputType.MouseButton2 then
			rmbUpBindable:Fire()
		end
	end)
end

local function updateGamepadCameraSensitivity()
	cameraRotationGamepadBinding.Scale = UserGameSettings.GamepadCameraSensitivity
end

UserGameSettings:GetPropertyChangedSignal("GamepadCameraSensitivity"):Connect(updateGamepadCameraSensitivity)
updateGamepadCameraSensitivity() -- initialize the sensitivity on script load

if FFlagUserPlayerScriptsCameraRotationUsesIAS then
	local function updateMouseCameraSensitivity()
		local sensitivity = UserGameSettings.MouseSensitivity
		cameraRotationMouseDeltaBinding.Scale = sensitivity
		cameraRotationPointerPanBinding.Scale = sensitivity
	end

	UserGameSettings:GetPropertyChangedSignal("MouseSensitivity"):Connect(updateMouseCameraSensitivity)
	updateMouseCameraSensitivity() -- initialize the sensitivity on script load
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

local function isInDynamicThumbstickArea(pos: Vector3): boolean
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

	local mouseState = {
		Movement = Vector2.new(),
		Wheel = 0, -- PointerAction
		Pan = Vector2.new(), -- PointerAction
		Pinch = 0, -- PointerAction
	}
	local touchState = {
		Move = Vector2.new(),
		Pinch = 0,
	}

	local gamepadZoomPressBindable
	local gamepadResetBindable
	if not FFlagUserPlayerScriptsCameraInputNoBindables then
		gamepadZoomPressBindable = Instance.new("BindableEvent")
		CameraInput.gamepadZoomPress = gamepadZoomPressBindable.Event

		gamepadResetBindable = VRService.VREnabled and Instance.new("BindableEvent") or nil
		if VRService.VREnabled then
			CameraInput.gamepadReset = gamepadResetBindable.Event
		end
	end

	function CameraInput.getRotationActivated(): boolean
		return panInputCount > 0 or cameraRotation:GetState().Magnitude > 0
	end

    -- getPanActivated is only used for updating mouse lock behavior. Separating from getRotationActivated, which is used for vehicle camera auto reset.
	function CameraInput.getPanActivated(): boolean
		return panInputCount > 0
	end

	function CameraInput.getRotation(dt, disableKeyboardRotation: boolean?): Vector2
		local inversionVector = Vector2.new(1, UserGameSettings:GetCameraYInvertValue())

		if FFlagUserPlayerScriptsCameraRotationUsesIAS then
			local kTouch = adjustTouchPitchSensitivity(touchState.Move)
			local result = kTouch * ROTATION_SPEED_TOUCH + cameraRotation:GetState() * dt
			return result * inversionVector
		else
			local kMouse = mouseState.Movement
			local kTouch = adjustTouchPitchSensitivity(touchState.Move)

			local result = kMouse * ROTATION_SPEED_MOUSE + kTouch * ROTATION_SPEED_TOUCH + cameraRotation:GetState() * dt
			if FFlagUserPlayerScriptsCameraInputNoBindables then
				local kPointerAction = mouseState.Pan
				result = result + kPointerAction * ROTATION_SPEED_POINTERACTION
			end

			return result * inversionVector
		end
	end

	function CameraInput.getZoomDelta(dt: number?): number
		local zoomState = cameraZoom:GetState()
		if dt then
			zoomState *= dt
		end

		if FFlagUserPlayerScriptsCameraRotationUsesIAS then
			local kTouch = -touchState.Pinch
			return zoomState + kTouch * ZOOM_SPEED_TOUCH
		else
			local kMouse = -mouseState.Wheel + mouseState.Pinch
			local kTouch = -touchState.Pinch
			return zoomState + kMouse * ZOOM_SPEED_MOUSE + kTouch * ZOOM_SPEED_TOUCH
		end
	end

	do
		local function mouseMovement(input)
			local delta = input.Delta
			mouseState.Movement = Vector2.new(delta.X, delta.Y)
		end

		local function resetInputDevices()
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

		local touchBegan, touchChanged, touchEnded, resetTouchState do
			-- Use TouchPan & TouchPinch when they work in the Studio emulator

			local touches: {[InputObject]: boolean?} = {} -- {[InputObject] = sunk}
			local dynamicThumbstickInput: InputObject? -- Special-cased
			local lastPinchDiameter: number?

			function touchBegan(input: InputObject, sunk: boolean)
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

			function touchEnded(input: InputObject, sunk: boolean)
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

			function touchChanged(input, sunk)
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

			function resetTouchState()
				touches = {}
				dynamicThumbstickInput = nil
				lastPinchDiameter = nil
				resetPanInputCount()
			end
		end

		local function pointerAction(wheel, pan, pinch, gpe)
			assert(not FFlagUserPlayerScriptsCameraRotationUsesIAS)
			if not gpe then
				mouseState.Wheel = wheel
				mouseState.Pan = pan
				mouseState.Pinch = -pinch
			end
		end

		local function inputBegan(input, sunk)
			if input.UserInputType == Enum.UserInputType.Touch then
				touchBegan(input, sunk)

			elseif not FFlagUserPlayerScriptsCameraRotationUsesIAS and input.UserInputType == Enum.UserInputType.MouseButton2 and not sunk then
				incPanInputCount()
			end
		end

		local function inputChanged(input, sunk)
			if input.UserInputType == Enum.UserInputType.Touch then
				touchChanged(input, sunk)

			elseif not FFlagUserPlayerScriptsCameraRotationUsesIAS and input.UserInputType == Enum.UserInputType.MouseMovement then
				mouseMovement(input)
			end
		end

		local function inputEnded(input, sunk)
			if input.UserInputType == Enum.UserInputType.Touch then
				touchEnded(input, sunk)

			elseif not FFlagUserPlayerScriptsCameraRotationUsesIAS and input.UserInputType == Enum.UserInputType.MouseButton2 then
				decPanInputCount()
			end
		end

		if FFlagUserPlayerScriptsCameraRotationUsesIAS then
			cameraPanActive.Pressed:Connect(incPanInputCount)
			cameraPanActive.Released:Connect(decPanInputCount)
		end
		if not FFlagUserPlayerScriptsCameraInputNoBindables then
			cameraGamepadZoom.Pressed:Connect(function()
				gamepadZoomPressBindable:Fire()
			end)

			cameraGamepadReset.Pressed:Connect(function()
				gamepadResetBindable:Fire()
			end)
		end

		local inputEnabled = false

		function CameraInput.setInputEnabled(_inputEnabled)
			if inputEnabled == _inputEnabled then
				return
			end
			inputEnabled = _inputEnabled

			resetInputDevices()
			resetTouchState()

			if inputEnabled then -- enable
				cameraZoom.Enabled = true
				cameraRotation.Enabled = true

				if FFlagUserPlayerScriptsCameraRotationUsesIAS then
					cameraPanActive.Enabled = true
				end
				if not FFlagUserPlayerScriptsCameraInputNoBindables then
					if VRService.VREnabled then
						cameraGamepadReset.Enabled = true
					end

					cameraGamepadZoom.Enabled = true
				end

				table.insert(connectionList, UserInputService.InputBegan:Connect(inputBegan))
				table.insert(connectionList, UserInputService.InputChanged:Connect(inputChanged))
				table.insert(connectionList, UserInputService.InputEnded:Connect(inputEnded))
				if not FFlagUserPlayerScriptsCameraRotationUsesIAS then
					table.insert(connectionList, UserInputService.PointerAction:Connect(pointerAction))
				end
				table.insert(connectionList, GuiService.MenuOpened:Connect(resetTouchState))

			else -- disable
				cameraZoom.Enabled = false
				cameraRotation.Enabled = false

				if FFlagUserPlayerScriptsCameraRotationUsesIAS then
					cameraPanActive.Enabled = false
				end
				if not FFlagUserPlayerScriptsCameraInputNoBindables then
					cameraGamepadZoom.Enabled = false

					if VRService.VREnabled then
						cameraGamepadReset.Enabled = false
					end
				end

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
			if not FFlagUserPlayerScriptsCameraRotationUsesIAS then
				mouseState.Movement = Vector2.new()
			end
			touchState.Move = Vector2.new()
			touchState.Pinch = 0

			if not FFlagUserPlayerScriptsCameraRotationUsesIAS then
				mouseState.Wheel = 0 -- PointerAction
				mouseState.Pan = Vector2.new() -- PointerAction
				mouseState.Pinch = 0 -- PointerAction
			end
		end

		UserInputService.WindowFocused:Connect(resetInputDevices)
		UserInputService.WindowFocusReleased:Connect(resetInputDevices)
		if FFlagUserPSTextboxResetCameraInput then
			UserInputService.TextBoxFocusReleased:Connect(resetInputDevices)
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

	if FFlagUserPlayerScriptsCameraInputNoBindables then
		rmbDownConnection = cameraToggle.Pressed:Connect(function()
			holdPan = true
			lastRmbDown = tick()
		end)

		rmbUpConnection = cameraToggle.Released:Connect(function()
			holdPan = false
			if tick() - lastRmbDown < MB_TAP_LENGTH and (togglePan or UserInputService:GetMouseDelta().Magnitude < 2) then
				togglePan = not togglePan
			end
		end)
	end

	function CameraInput.enableCameraToggleInput()
		if cameraToggleInputEnabled then
			return
		end
		cameraToggleInputEnabled = true

		holdPan = false
		togglePan = false

		if FFlagUserPlayerScriptsCameraInputNoBindables then
			cameraToggle.Enabled = true
		else
			if rmbDownConnection then
				rmbDownConnection:Disconnect()
			end

			if rmbUpConnection then
				rmbUpConnection:Disconnect()
			end

			rmbDownConnection = rmbDown:Connect(function()
				holdPan = true
				lastRmbDown = tick()
			end)

			rmbUpConnection = rmbUp:Connect(function()
				holdPan = false
				if tick() - lastRmbDown < MB_TAP_LENGTH and (togglePan or UserInputService:GetMouseDelta().Magnitude < 2) then
					togglePan = not togglePan
				end
			end)
		end
	end

	function CameraInput.disableCameraToggleInput()
		if not cameraToggleInputEnabled then
			return
		end
		cameraToggleInputEnabled = false

		if FFlagUserPlayerScriptsCameraInputNoBindables then
			cameraToggle.Enabled = false
		else
			if rmbDownConnection then
				rmbDownConnection:Disconnect()
				rmbDownConnection = nil
			end

			if rmbUpConnection then
				rmbUpConnection:Disconnect()
				rmbUpConnection = nil
			end
		end
	end
end

return CameraInput
