--!nonstrict
local ContextActionService = game:GetService("ContextActionService")
local UserInputService = game:GetService("UserInputService")
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserGameSettings = UserSettings():GetService("UserGameSettings")
local VRService = game:GetService("VRService")

local CommonUtils = script.Parent.Parent:WaitForChild("CommonUtils")
local FlagUtil = require(CommonUtils:WaitForChild("FlagUtil"))
local FFlagUserCameraInputDt = FlagUtil.getUserFlag("UserCameraInputDt")

local player = Players.LocalPlayer

local CAMERA_INPUT_PRIORITY = Enum.ContextActionPriority.Medium.Value
local MB_TAP_LENGTH = 0.3 -- (s) length of time for a short mouse button tap to be registered

local ROTATION_SPEED_KEYS = math.rad(120) -- (rad/s)
local ROTATION_SPEED_GAMEPAD = Vector2.new(1, 0.77)*math.rad(4) -- (rad/s)

-- these speeds should not be scaled by dt because the input returned is not normalized. 
-- that is, at lower framerates, the magnitude of the input delta will be larger because the pointer/mouse/touch
-- has moved more pixels between frames.
local ROTATION_SPEED_MOUSE = Vector2.new(1, 0.77)*math.rad(0.5) -- (rad/inputdelta)
local ROTATION_SPEED_POINTERACTION = Vector2.new(1, 0.77)*math.rad(7) -- (rad/inputdelta)
local ROTATION_SPEED_TOUCH = Vector2.new(1, 0.66)*math.rad(1) -- (rad/inputdelta)

if FFlagUserCameraInputDt then
	ROTATION_SPEED_GAMEPAD *= 60 -- inline with FFlagUserCameraInputDt
end


local ZOOM_SPEED_MOUSE = 1 -- (scaled studs/wheel click)
local ZOOM_SPEED_KEYS = 0.1 -- (studs/s)
local ZOOM_SPEED_TOUCH = 0.04 -- (scaled studs/DIP %)

local MIN_TOUCH_SENSITIVITY_FRACTION = 0.25 -- 25% sensitivity at 90°

local FFlagUserResetTouchStateOnMenuOpen
do
	local success, result = pcall(function()
		return UserSettings():IsUserFeatureEnabled("UserResetTouchStateOnMenuOpen")
	end)
	FFlagUserResetTouchStateOnMenuOpen = success and result
end

local FFlagUserClearPanOnCameraDisable
do
	local success, result = pcall(function()
		return UserSettings():IsUserFeatureEnabled("UserClearPanOnCameraDisable")
	end)
	FFlagUserClearPanOnCameraDisable = success and result
end

local FFlagUserFixGamepadSensitivity
do
	local success, result = pcall(function()
		return UserSettings():IsUserFeatureEnabled("UserFixGamepadSensitivity")
	end)
	FFlagUserFixGamepadSensitivity = success and result
end

-- right mouse button up & down events
local rmbDown, rmbUp do
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

local thumbstickCurve do
	local K_CURVATURE = 2 -- amount of upwards curvature (0 is flat)
	local K_DEADZONE = 0.1 -- deadzone

	function thumbstickCurve(x)
		-- remove sign, apply linear deadzone
		local fDeadzone = (math.abs(x) - K_DEADZONE)/(1 - K_DEADZONE)
		
		-- apply exponential curve and scale to fit in [0, 1]
		local fCurve = (math.exp(K_CURVATURE*fDeadzone) - 1)/(math.exp(K_CURVATURE) - 1)
		
		-- reapply sign and clamp
		return math.sign(x)*math.clamp(fCurve, 0, 1)
	end
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

local worldDt = 1/60 -- remove with FFlagUserCameraInputDt
RunService.Stepped:Connect(function(_, _worldDt)
	worldDt = _worldDt
end)

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

	local touchPitchSensitivity = 1
	local gamepadState = {
		Thumbstick2 = Vector2.new(),
	}
	local keyboardState = {
		Left = 0,
		Right = 0,
		I = 0,
		O = 0
	}
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
	
	local gamepadZoomPressBindable = Instance.new("BindableEvent")
	CameraInput.gamepadZoomPress = gamepadZoomPressBindable.Event

	local gamepadResetBindable = VRService.VREnabled and Instance.new("BindableEvent") or nil
	if VRService.VREnabled then
		CameraInput.gamepadReset = gamepadResetBindable.Event
	end
	
	function CameraInput.getRotationActivated(): boolean
		return panInputCount > 0 or gamepadState.Thumbstick2.Magnitude > 0
	end
	
	function CameraInput.getRotation(dt, disableKeyboardRotation: boolean?): Vector2
		local inversionVector = Vector2.new(1, UserGameSettings:GetCameraYInvertValue())

		-- keyboard input is non-coalesced, so must account for time delta
		local kKeyboard
		if FFlagUserCameraInputDt then
			kKeyboard = Vector2.new(keyboardState.Right - keyboardState.Left, 0) * dt
		else
			kKeyboard = Vector2.new(keyboardState.Right - keyboardState.Left, 0)*worldDt
		end
		local kGamepad -- inline with FFlagUserFixGamepadSensitivity
		
		if FFlagUserFixGamepadSensitivity then
			kGamepad = gamepadState.Thumbstick2 * UserGameSettings.GamepadCameraSensitivity
		else
			kGamepad = gamepadState.Thumbstick2
		end

		if FFlagUserCameraInputDt then
			kGamepad *= dt -- inline with FFlagUserCameraInputDt
		end

		local kMouse = mouseState.Movement
		local kPointerAction = mouseState.Pan
		local kTouch = adjustTouchPitchSensitivity(touchState.Move)

		if disableKeyboardRotation then
			kKeyboard = Vector2.new()
		end

		local result =
			kKeyboard*ROTATION_SPEED_KEYS +
			kGamepad*ROTATION_SPEED_GAMEPAD +
			kMouse*ROTATION_SPEED_MOUSE +
			kPointerAction*ROTATION_SPEED_POINTERACTION +
			kTouch*ROTATION_SPEED_TOUCH

		return result*inversionVector
	end
	
	function CameraInput.getZoomDelta(): number
		local kKeyboard = keyboardState.O - keyboardState.I
		local kMouse = -mouseState.Wheel + mouseState.Pinch
		local kTouch = -touchState.Pinch
		return kKeyboard*ZOOM_SPEED_KEYS + kMouse*ZOOM_SPEED_MOUSE + kTouch*ZOOM_SPEED_TOUCH
	end

	do
		local function thumbstick(action, state, input)
			local position = input.Position
			gamepadState[input.KeyCode.Name] = Vector2.new(thumbstickCurve(position.X), -thumbstickCurve(position.Y))
			return Enum.ContextActionResult.Pass
		end

		local function mouseMovement(input)
			local delta = input.Delta
			mouseState.Movement = Vector2.new(delta.X, delta.Y)
		end
		
		local function mouseWheel(action, state, input)
			mouseState.Wheel = input.Position.Z
			return Enum.ContextActionResult.Pass
		end
		
		local function keypress(action, state, input)
			keyboardState[input.KeyCode.Name] = state == Enum.UserInputState.Begin and 1 or 0
		end
		
		local function gamepadZoomPress(action, state, input)
			if state == Enum.UserInputState.Begin then
				gamepadZoomPressBindable:Fire()
			end
		end

		local function gamepadReset(action, state, input)
			if state == Enum.UserInputState.Begin then
				gamepadResetBindable:Fire()
			end
		end
		
		local function resetInputDevices()
			for _, device in pairs({
				gamepadState,
				keyboardState,
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
			
			if FFlagUserClearPanOnCameraDisable then
				resetPanInputCount()
			end
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
					touches[input] = sunk
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
				if FFlagUserResetTouchStateOnMenuOpen then
					resetPanInputCount()
				end
			end
		end

		local function pointerAction(wheel, pan, pinch, gpe)
			if not gpe then
				mouseState.Wheel = wheel
				mouseState.Pan = pan
				mouseState.Pinch = -pinch
			end
		end

		local function inputBegan(input, sunk)
			if input.UserInputType == Enum.UserInputType.Touch then
				touchBegan(input, sunk)

			elseif input.UserInputType == Enum.UserInputType.MouseButton2 and not sunk then
				incPanInputCount()
			end
		end

		local function inputChanged(input, sunk)
			if input.UserInputType == Enum.UserInputType.Touch then
				touchChanged(input, sunk)

			elseif input.UserInputType == Enum.UserInputType.MouseMovement then
				mouseMovement(input)
			end
		end

		local function inputEnded(input, sunk)
			if input.UserInputType == Enum.UserInputType.Touch then
				touchEnded(input, sunk)

			elseif input.UserInputType == Enum.UserInputType.MouseButton2 then
				decPanInputCount()
			end
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
				ContextActionService:BindActionAtPriority(
					"RbxCameraThumbstick",
					thumbstick,
					false,
					CAMERA_INPUT_PRIORITY,
					Enum.KeyCode.Thumbstick2
				)

				ContextActionService:BindActionAtPriority(
					"RbxCameraKeypress",
					keypress,
					false,
					CAMERA_INPUT_PRIORITY,
					Enum.KeyCode.Left,
					Enum.KeyCode.Right,
					Enum.KeyCode.I,
					Enum.KeyCode.O
				)

				if VRService.VREnabled then
					ContextActionService:BindAction(
						"RbxCameraGamepadReset",
						gamepadReset,
						false,
						Enum.KeyCode.ButtonL3
					)
				end
				
				ContextActionService:BindAction(
					"RbxCameraGamepadZoom",
					gamepadZoomPress,
					false,
					Enum.KeyCode.ButtonR3
				)
				
				table.insert(connectionList, UserInputService.InputBegan:Connect(inputBegan))
				table.insert(connectionList, UserInputService.InputChanged:Connect(inputChanged))
				table.insert(connectionList, UserInputService.InputEnded:Connect(inputEnded))
				table.insert(connectionList, UserInputService.PointerAction:Connect(pointerAction))
				if FFlagUserResetTouchStateOnMenuOpen then
					local GuiService = game:GetService("GuiService")
					table.insert(connectionList, GuiService.MenuOpened:connect(resetTouchState))
				end

			else -- disable
				ContextActionService:UnbindAction("RbxCameraThumbstick")
				ContextActionService:UnbindAction("RbxCameraMouseMove")
				ContextActionService:UnbindAction("RbxCameraMouseWheel")
				ContextActionService:UnbindAction("RbxCameraKeypress")

				ContextActionService:UnbindAction("RbxCameraGamepadZoom")
				if VRService.VREnabled then
					ContextActionService:UnbindAction("RbxCameraGamepadReset")
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
			mouseState.Movement = Vector2.new()
			touchState.Move = Vector2.new()
			touchState.Pinch = 0

			mouseState.Wheel = 0 -- PointerAction
			mouseState.Pan = Vector2.new() -- PointerAction
			mouseState.Pinch = 0 -- PointerAction
		end

		UserInputService.WindowFocused:Connect(resetInputDevices)
		UserInputService.WindowFocusReleased:Connect(resetInputDevices)
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
	
	function CameraInput.enableCameraToggleInput()
		if cameraToggleInputEnabled then
			return
		end
		cameraToggleInputEnabled = true
	
		holdPan = false
		togglePan = false
	
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
	
	function CameraInput.disableCameraToggleInput()
		if not cameraToggleInputEnabled then
			return
		end
		cameraToggleInputEnabled = false
	
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

return CameraInput