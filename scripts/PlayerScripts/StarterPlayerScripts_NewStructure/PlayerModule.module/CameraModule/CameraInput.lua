local FFlagUserCameraInputRefactor do
	local success, result = pcall(function()
		return UserSettings():IsUserFeatureEnabled("UserCameraInputRefactor")
	end)
	FFlagUserCameraInputRefactor = success and result
end

local ContextActionService = game:GetService("ContextActionService")
local UserInputService = game:GetService("UserInputService")
local Players = game:GetService("Players")
local UserGameSettings = UserSettings():GetService("UserGameSettings")

local ZoomController = require(script.Parent:WaitForChild("ZoomController"))

local player = Players.LocalPlayer

local CAMERA_INPUT_PRIORITY = Enum.ContextActionPriority.Default.Value
local MB_TAP_LENGTH = 0.3 -- (s) length of time for a short mouse button tap to be registered

local ROTATION_SPEED_KEYS = math.rad(2) -- (rad/s)
local ROTATION_SPEED_MOUSE = Vector2.new(1, 0.77)*math.rad(0.5) -- (rad/s)
local ROTATION_SPEED_TOUCH = Vector2.new(1, 0.66)*math.rad(1) -- (rad/s)
local ROTATION_SPEED_GAMEPAD = Vector2.new(1, 0.77)*math.rad(4) -- (rad/s)

local ZOOM_SPEED_MOUSE = 1 -- (scaled studs/wheel click)
local ZOOM_SPEED_KEYS = 0.1 -- (studs/s)
local ZOOM_SPEED_TOUCH = 0.04 -- (scaled studs/DIP %)

local MIN_TOUCH_SENSITIVITY_FRACTION = 0.25 -- 25% sensitivity at 90°

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
local function adjustTouchPitchSensitivity(delta)
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

local function isInDynamicThumbstickArea(pos)
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
		MouseButton2 = 0,
	}
	local touchState = {
		Move = Vector2.new(),
		Pinch = 0,
	}
	
	local gamepadZoomPressBindable = Instance.new("BindableEvent")
	CameraInput.gamepadZoomPress = gamepadZoomPressBindable.Event
	
	function CameraInput.getPanning()
		for _, input in pairs(UserInputService:GetMouseButtonsPressed()) do
			if input.UserInputType == Enum.UserInputType.MouseButton2 then
				return true
			end
		end
		return false
	end
	
	function CameraInput.getRotation()
		local kKeyboard = Vector2.new(keyboardState.Right - keyboardState.Left, 0)
		local kGamepad = gamepadState.Thumbstick2
		local kMouse = mouseState.Movement + mouseState.Pan
		local kTouch = adjustTouchPitchSensitivity(touchState.Move)

		local result =
			kKeyboard*ROTATION_SPEED_KEYS +
			kGamepad*ROTATION_SPEED_GAMEPAD +
			kMouse*ROTATION_SPEED_MOUSE +
			kTouch*ROTATION_SPEED_TOUCH

		return result
	end
	
	function CameraInput.getZoomDelta()
		local kKeyboard = keyboardState.O - keyboardState.I
		local kMouse = -mouseState.Wheel + mouseState.Pinch
		local kTouch = touchState.Pinch
		return kKeyboard*ZOOM_SPEED_KEYS + kMouse*ZOOM_SPEED_MOUSE + kTouch*ZOOM_SPEED_TOUCH
	end

	do
		local function thumbstick(action, state, input)
			local position = input.Position
			gamepadState[input.KeyCode.Name] = Vector2.new(thumbstickCurve(position.X), -thumbstickCurve(position.Y))
		end

		local function mouseMove(action, state, input)
			local delta = input.Delta
			mouseState.Movement = Vector2.new(delta.X, delta.Y)
			return Enum.ContextActionResult.Pass
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
		end

		local touchBegan, touchChanged, touchEnded do
			-- Use TouchPan & TouchPinch when they work in the Studio emulator

			local numUnsunkTouches = 0
			local fingerTouches = {}
			local startingDiff
			local pinchBeginZoom
			local dynamicTouchInput

			function touchBegan(input, sunk)
				if dynamicTouchInput == nil and isInDynamicThumbstickArea(input.Position) then
					-- First input in the dynamic thumbstick area should always be ignored for camera purposes
					-- Even if the dynamic thumbstick does not process it immediately
					dynamicTouchInput = input
					return
				end
				
				-- Dedup+register unsunk touch
				if fingerTouches[input] == nil and not sunk then
					numUnsunkTouches += 1
				end
				
				fingerTouches[input] = sunk
			end

			function touchEnded(input, sunk)		
				-- reset the DT input	
				if input == dynamicTouchInput then
					dynamicTouchInput = nil
					return
				end

				-- reset pinch states if one finger lifts
				if fingerTouches[input] == false then
					if numUnsunkTouches == 2 then
						startingDiff = nil
						pinchBeginZoom = nil
					end
				end

				-- unregister
				if fingerTouches[input] == false then
					numUnsunkTouches -= 1
				end
				fingerTouches[input] = nil
			end

			function touchChanged(input, sunk)
				-- ignore the DT input
				if input == dynamicTouchInput then
					return
				end

				-- fixup unknown touches
				if fingerTouches[input] == nil then
					fingerTouches[input] = sunk
					if not sunk then
						numUnsunkTouches += 1
					end
				end

				-- 1 finger: pan
				if numUnsunkTouches == 1 then
					if fingerTouches[input] == false then
						local delta = input.Delta
						touchState.Move = Vector2.new(delta.X, delta.Y)
					end
				end

				-- 2 fingers: pinch
				if numUnsunkTouches == 2 then
					local unsunkTouches = {}
					for touch, wasSunk in pairs(fingerTouches) do
						if not wasSunk then
							table.insert(unsunkTouches, touch)
						end
					end

					if #unsunkTouches == 2 then
						local diff = (unsunkTouches[1].Position - unsunkTouches[2].Position).Magnitude
						if startingDiff and pinchBeginZoom then
							local scale = diff/math.max(0.01, startingDiff)
							local clampedScale = math.clamp(scale, 0.1, 10)
							touchState.Pinch = pinchBeginZoom/clampedScale - ZoomController.GetZoomDistance()
						else
							startingDiff = diff
							pinchBeginZoom = ZoomController.GetZoomDistance()
						end
					end
				else
					startingDiff = nil
					pinchBeginZoom = nil
				end
			end
		end

		local function pointerAction(wheel, pan, pinch, gpe)
			if not gpe then
				local inversionVector = Vector2.new(1, UserGameSettings:GetCameraYInvertValue())
				
				mouseState.Wheel = wheel
				mouseState.Pan = pan*inversionVector
				mouseState.Pinch = pinch
			end
		end

		local function inputBegan(input, gpe)
			if input.UserInputType == Enum.UserInputType.Touch then
				touchBegan(input, gpe)
			end
		end

		local function inputChanged(input, gpe)
			if input.UserInputType == Enum.UserInputType.Touch then
				touchChanged(input, gpe)
			end
		end

		local function inputEnded(input, gpe)
			if input.UserInputType == Enum.UserInputType.Touch then
				touchEnded(input, gpe)
			end
		end

		local inputEnabled = false

		function CameraInput.setInputEnabled(_inputEnabled)
			assert(FFlagUserCameraInputRefactor)

			if inputEnabled == _inputEnabled then
				return
			end
			inputEnabled = _inputEnabled

			if inputEnabled then -- enable
				resetInputDevices()
				
				ContextActionService:BindActionAtPriority(
					"RbxCameraThumbstick",
					thumbstick,
					false,
					CAMERA_INPUT_PRIORITY,
					Enum.KeyCode.Thumbstick2
				)
				
				ContextActionService:BindActionAtPriority(
					"RbxCameraMouseMove",
					mouseMove,
					false,
					CAMERA_INPUT_PRIORITY,
					Enum.UserInputType.MouseMovement
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

			else -- disable
				ContextActionService:UnbindAction("RbxCameraThumbstick")
				ContextActionService:UnbindAction("RbxCameraMouseMove")
				ContextActionService:UnbindAction("RbxCameraMouseWheel")
				ContextActionService:UnbindAction("RbxCameraKeypress")
				
				resetInputDevices()
				
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
			mouseState.Wheel = 0
			touchState.Pinch = 0
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
	
	function CameraInput.getHoldPan()
		return holdPan
	end
	
	function CameraInput.getTogglePan()
		return togglePan
	end
	
	function CameraInput.getPanning()
		return togglePan or holdPan
	end
	
	function CameraInput.setTogglePan(value)
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