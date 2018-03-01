------------------------------------------------------------------------
-- FreeCamera.lua
-- Cinematic free camera for spectating and video production.
-- Author: fractality
-- Edited by: TheGamer101, to make it work without the screen gui,
--   remove the Class library, and add alternative key bindings.
------------------------------------------------------------------------

local LocalPlayer = 
	game:GetService("Players").LocalPlayer or
	game:GetService("Players"):GetPropertyChangedSignal("LocalPlayer"):Wait() or
	game:GetService("Players").LocalPlayer

local ContextActionService = game:GetService("ContextActionService")
local RunService = game:GetService("RunService")
local StarterGui = game:GetService("StarterGui")
local UserInputService = game:GetService("UserInputService")

local Spring = require(script:WaitForChild("Spring"))

------------------------------------------------------------------------

local FREECAM_MACRO_KB = {Enum.KeyCode.LeftShift, Enum.KeyCode.P}

local NAV_GAIN = Vector3.new(1, 1, 1)*64
local PAN_GAIN = Vector2.new(0.75, 1)*8
local FOV_GAIN = 300

local PITCH_LIMIT = math.rad(90)

------------------------------------------------------------------------

local camera = workspace.CurrentCamera

local cameraPos = Vector3.new()
local cameraRot = Vector2.new()
local cameraFov = 0

local velSpring = Spring.new(1.5, Vector3.new())
local panSpring = Spring.new(1.0, Vector2.new())
local fovSpring = Spring.new(4.0, 0)

------------------------------------------------------------------------

local Input = {} do
	local Curve do
		local DEADZONE = 0.1
		function Curve(x)
			local s = math.abs(x)
			if s > DEADZONE then
				s = 0.255000975*(2^(2.299113817*s) - 1)
				return math.clamp(s*math.sign(x), -1, 1)
			end
			return 0
		end
	end

	local gamepad = {
		ButtonX = 0,
		ButtonY = 0,
		DPadDown = 0,
		DPadUp = 0,
		ButtonL2 = 0,
		ButtonR2 = 0,
		Thumbstick1 = Vector2.new(),
		Thumbstick2 = Vector2.new(),
	}
	local keyboard = {
		W = 0,
		A = 0,
		S = 0,
		D = 0,
		E = 0,
		Q = 0,
		U = 0,
		H = 0,
		J = 0,
		K = 0,
		I = 0,
		Y = 0,
		Up = 0,
		Down = 0,
		LeftShift = 0,
		RightShift = 0,
	}
	local mouse = {
		Delta = Vector2.new(),
		MouseWheel = 0,
	}

	local NAV_GAMEPAD_SPEED  = Vector3.new(1, 1, 1)
	local NAV_KEYBOARD_SPEED = Vector3.new(1, 1, 1)
	local PAN_MOUSE_SPEED    = Vector2.new(1, 1)*(math.pi/64)
	local PAN_GAMEPAD_SPEED  = Vector2.new(1, 1)*(math.pi/8)
	local FOV_WHEEL_SPEED    = 1.0
	local FOV_GAMEPAD_SPEED  = 0.25
	local NAV_ADJ_SPEED      = 0.75
	local NAV_SHIFT_MUL      = 0.25

	local navSpeed = 1

	function Input.Nav(dt)
		navSpeed = math.clamp(navSpeed + dt*(keyboard.Up - keyboard.Down)*NAV_ADJ_SPEED, 0.01, 4)
		local kGamepad = Vector3.new(
			Curve(gamepad.Thumbstick1.x),
			Curve(gamepad.ButtonR2) - Curve(gamepad.ButtonL2),
			Curve(-gamepad.Thumbstick1.y)
		)*NAV_GAMEPAD_SPEED
		local kKeyboard = Vector3.new(
			keyboard.D - keyboard.A + keyboard.K - keyboard.H,
			keyboard.E - keyboard.Q + keyboard.I - keyboard.Y,
			keyboard.S - keyboard.W + keyboard.J - keyboard.U
		)*NAV_KEYBOARD_SPEED
		local shift = UserInputService:IsKeyDown(Enum.KeyCode.LeftShift) or UserInputService:IsKeyDown(Enum.KeyCode.RightShift)
		return (kGamepad + kKeyboard)*(navSpeed*(shift and NAV_SHIFT_MUL or 1))
	end

	function Input.Pan(dt)
		local kGamepad = Vector2.new(Curve(gamepad.Thumbstick2.y), Curve(-gamepad.Thumbstick2.x))*PAN_GAMEPAD_SPEED
		local kMouse = mouse.Delta*PAN_MOUSE_SPEED
		mouse.Delta = Vector2.new()
		return kGamepad + kMouse
	end

	function Input.Fov(dt)
		local kGamepad = (gamepad.ButtonX - gamepad.ButtonY)*FOV_GAMEPAD_SPEED
		local kMouse = mouse.MouseWheel*FOV_WHEEL_SPEED
		mouse.MouseWheel = 0
		return kGamepad + kMouse
	end

	do
		local function Keypress(action, state, input)
			keyboard[input.KeyCode.Name] = state == Enum.UserInputState.Begin and 1 or 0
		end
		
		local function GpButton(action, state, input)
			gamepad[input.KeyCode.Name] = state == Enum.UserInputState.Begin and 1 or 0
		end

		local function MousePan(action, state, input)
			local delta = input.Delta
			mouse.Delta = Vector2.new(-delta.y, -delta.x)
		end

		local function Thumb(action, state, input)
			gamepad[input.KeyCode.Name] = input.Position
		end

		local function Trigger(action, state, input)
			gamepad[input.KeyCode.Name] = input.Position.z
		end
		
		local function MouseWheel(action, state, input)
			mouse[input.UserInputType.Name] = -input.Position.z
		end

		local function Zero(t)
			for k, v in pairs(t) do
				t[k] = v*0
			end
		end

		function Input.StartCapture()
			local priority = Enum.ContextActionPriority.High.Value
			ContextActionService:BindActionAtPriority("CamForward",   Keypress,  false, priority, Enum.KeyCode.W, Enum.KeyCode.U)
			ContextActionService:BindActionAtPriority("CamLeft",      Keypress,  false, priority, Enum.KeyCode.A, Enum.KeyCode.H)
			ContextActionService:BindActionAtPriority("CamBackward",  Keypress,  false, priority, Enum.KeyCode.S, Enum.KeyCode.J)
			ContextActionService:BindActionAtPriority("CamRight",     Keypress,  false, priority, Enum.KeyCode.D, Enum.KeyCode.K)
			ContextActionService:BindActionAtPriority("CamUp",        Keypress,  false, priority, Enum.KeyCode.E, Enum.KeyCode.I)
			ContextActionService:BindActionAtPriority("CamDown",      Keypress,  false, priority, Enum.KeyCode.Q, Enum.KeyCode.Y)
			ContextActionService:BindActionAtPriority("CamGpFov",     GpButton,  false, priority, Enum.KeyCode.ButtonX, Enum.KeyCode.ButtonY)
			ContextActionService:BindActionAtPriority("CamSpeedUp",   Keypress,  false, priority, Enum.KeyCode.Up)
			ContextActionService:BindActionAtPriority("CamSlowDown",  Keypress,  false, priority, Enum.KeyCode.Down)
			ContextActionService:BindActionAtPriority("CamPan",       MousePan,  false, priority, Enum.UserInputType.MouseMovement)
			ContextActionService:BindActionAtPriority("CamThumb",     Thumb,     false, priority, Enum.KeyCode.Thumbstick1, Enum.KeyCode.Thumbstick2)
			ContextActionService:BindActionAtPriority("CamTrigger",   Trigger,   false, priority, Enum.KeyCode.ButtonR2, Enum.KeyCode.ButtonL2)
			ContextActionService:BindActionAtPriority("CamFov",       MouseWheel,false, priority, Enum.UserInputType.MouseWheel)
		end

		function Input.StopCapture()
			navSpeed = 1
			Zero(gamepad)
			Zero(keyboard)
			Zero(mouse)
			ContextActionService:UnbindAction("CamForward")
			ContextActionService:UnbindAction("CamLeft")
			ContextActionService:UnbindAction("CamBackward")
			ContextActionService:UnbindAction("CamRight")
			ContextActionService:UnbindAction("CamUp")
			ContextActionService:UnbindAction("CamDown")
			ContextActionService:UnbindAction("CamGpFov")
			ContextActionService:UnbindAction("CamSpeedUp")
			ContextActionService:UnbindAction("CamSlowDown")
			ContextActionService:UnbindAction("CamPan")
			ContextActionService:UnbindAction("CamThumb")
			ContextActionService:UnbindAction("CamTrigger")
			ContextActionService:UnbindAction("CamFov")
		end
	end
end

local function GetFocusDistance(cameraFrame)
	local znear = 0.1
	local viewport = camera.ViewportSize
	local projy = 2*math.tan(cameraFov/2)
	local projx = viewport.x/viewport.y*projy
	local fx = cameraFrame.rightVector
	local fy = cameraFrame.upVector
	local fz = cameraFrame.lookVector
	
	local minVect = Vector3.new()
	local minDist = 512
	
	for x = 0, 1, 1/2 do
		for y = 0, 1, 1/2 do
			local cx = (x - 0.5) * projx
			local cy = (y - 0.5) * projy
			local offset = fx * cx - fy * cy + fz
			local origin = cameraFrame.p + offset*znear
			local part, hit = workspace:FindPartOnRay(Ray.new(origin, offset.unit*minDist))
			local dist = (hit - origin).magnitude
			if minDist > dist then
				minDist = dist
				minVect = offset.unit
			end
		end
	end
	
	return fz:Dot(minVect)*minDist
end

------------------------------------------------------------------------

workspace:GetPropertyChangedSignal("CurrentCamera"):Connect(function()
	local newCamera = workspace.CurrentCamera
	if newCamera then
		camera = newCamera
	end
end)

------------------------------------------------------------------------

local function UpdateFreecam(dt)
	local vel = velSpring:Update(dt, Input.Nav(dt))
	local pan = panSpring:Update(dt, Input.Pan(dt))
	local fov = fovSpring:Update(dt, Input.Fov(dt))
	
	local zoomFactor = math.sqrt(math.tan(math.rad(70) / 2) / math.tan(math.rad(cameraFov) / 2))
	
	cameraFov = math.clamp(cameraFov + fov * FOV_GAIN * (dt / zoomFactor), 1, 120)	
	cameraRot = cameraRot + pan * PAN_GAIN * (dt / zoomFactor)
	cameraRot = Vector2.new(math.clamp(cameraRot.x, -PITCH_LIMIT, PITCH_LIMIT), cameraRot.y % (2 * math.pi))

	local cameraCFrame = CFrame.new(cameraPos) * CFrame.fromOrientation(cameraRot.x, cameraRot.y, 0) * CFrame.new(vel * NAV_GAIN * dt)
	cameraPos = cameraCFrame.p

	camera.CFrame = cameraCFrame
	camera.Focus = cameraCFrame*CFrame.new(0, 0, -GetFocusDistance(cameraCFrame))
	camera.FieldOfView = cameraFov
end

------------------------------------------------------------------------

local PlayerState = {} do
	local character
	local characterParent
	local mouseIconEnabled
	local cameraSubject
	local cameraType
	local cameraFocus
	local cameraCFrame
	local cameraFieldOfView
	local screenGuis = {}
	local coreGuis = {
		Backpack = true,
		Chat = true,
		Health = true,
		PlayerList = true,
	}
	local setCores = {
		BadgesNotificationsActive = true,
		PointsNotificationsActive = true,
	}

	-- Save state and set up for freecam
	function PlayerState.Push()
		for name in pairs(coreGuis) do
			coreGuis[name] = StarterGui:GetCoreGuiEnabled(Enum.CoreGuiType[name])
			StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType[name], false)
		end
		for name in pairs(setCores) do
			setCores[name] = StarterGui:GetCore(name)
			StarterGui:SetCore(name, false)
		end
		local playergui = LocalPlayer:FindFirstChildOfClass("PlayerGui")
		if playergui then
			for _, gui in next, playergui:GetChildren() do
				if gui:IsA("ScreenGui") and gui.Enabled then
					screenGuis[#screenGuis + 1] = gui
					gui.Enabled = false
				end
			end
		end
		
		cameraFieldOfView = camera.FieldOfView
		camera.FieldOfView = 70

		cameraType = camera.CameraType
		camera.CameraType = Enum.CameraType.Custom

		cameraSubject = camera.CameraSubject
		camera.CameraSubject = nil

		cameraCFrame = camera.CFrame
		cameraFocus = camera.Focus

		mouseIconEnabled = UserInputService.MouseIconEnabled
		UserInputService.MouseIconEnabled = false

		mouseBehavior = UserInputService.MouseBehavior
		UserInputService.MouseBehavior = Enum.MouseBehavior.Default

		character = LocalPlayer.Character
		characterParent = character and character.Parent
		if character then
			character.Parent = nil
		end
	end

	-- Restore state
	function PlayerState.Pop()
		for name, isEnabled in pairs(coreGuis) do
			StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType[name], isEnabled)
		end
		for name, isEnabled in pairs(setCores) do
			StarterGui:SetCore(name, isEnabled)
		end
		for _, gui in pairs(screenGuis) do
			if gui.Parent then
				gui.Enabled = true
			end
		end

		camera.FieldOfView = cameraFieldOfView
		cameraFieldOfView = nil

		camera.CameraType = cameraType
		cameraType = nil

		camera.CameraSubject = cameraSubject
		cameraSubject = nil

		camera.CFrame = cameraCFrame
		cameraCFrame = nil

		camera.Focus = cameraFocus
		cameraFocus = nil

		UserInputService.MouseIconEnabled = mouseIconEnabled
		mouseIconEnabled = nil

		UserInputService.MouseBehavior = mouseBehavior
		mouseBehavior = nil

		if LocalPlayer.Character == character then
			character.Parent = characterParent
		elseif character then
			character:Destroy()
		end
		character = nil
		characterParent = nil
	end
end

local function StartFreecam()
	local look = camera.CFrame.lookVector.unit
	local lx, ly, lz = look.x, look.y, look.z
	cameraRot = Vector2.new(math.atan2(ly, math.sqrt(lx*lx + lz*lz)), math.atan2(-lz, lx) - math.pi/2)
	cameraPos = camera.CFrame.p
	cameraFov = camera.FieldOfView

	velSpring:Reset(Vector3.new())
	panSpring:Reset(Vector2.new())
	fovSpring:Reset(0)

	PlayerState.Push()
	RunService:BindToRenderStep("Freecam", Enum.RenderPriority.Camera.Value, UpdateFreecam)
	Input.StartCapture()
end

local function StopFreecam()
	Input.StopCapture()
	RunService:UnbindFromRenderStep("Freecam")
	PlayerState.Pop()
end

------------------------------------------------------------------------

do
	local enabled = false

	local function ToggleFreecam()
		if enabled then
			StopFreecam()
		else
			StartFreecam()
		end
		enabled = not enabled
	end

	local function CheckMacro(macro)
		for i = 1, #macro - 1 do
			if not UserInputService:IsKeyDown(macro[i]) then
				return
			end
		end
		ToggleFreecam()
	end

	local function HandleActivationInput(action, state, input)
		if state == Enum.UserInputState.Begin then
			if input.KeyCode == FREECAM_MACRO_KB[#FREECAM_MACRO_KB] then
				CheckMacro(FREECAM_MACRO_KB)
			end
		end
		return Enum.ContextActionResult.Pass
	end

	ContextActionService:BindActionAtPriority(
		"ToggleFreecam",
		HandleActivationInput,
		false,
		Enum.ContextActionPriority.Low.Value,
		FREECAM_MACRO_KB[#FREECAM_MACRO_KB]
	)
end