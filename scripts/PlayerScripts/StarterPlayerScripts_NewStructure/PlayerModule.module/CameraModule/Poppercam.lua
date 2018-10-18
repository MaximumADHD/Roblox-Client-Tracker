--[[
	Poppercam - Occlusion module that brings the camera closer to the subject when objects are blocking the view.
--]]

--[[ Camera Maths Utilities Library ]]--
local Util = require(script.Parent:WaitForChild("CameraUtils"))

local RunService = game:GetService("RunService")
local PlayersService = game:GetService("Players")
local ContextActionService = game:GetService("ContextActionService")
local UserInputService = game:GetService("UserInputService")
local GameSettings = UserSettings().GameSettings

-- Note: Zoom and Subject modules return single functions, Zoom() and Subject() respectively,
-- whereas Rotate returns a table with two functions, Step() and GetDelta()
local Zoom =  require(script:WaitForChild("Zoom"))
local Subject =  require(script:WaitForChild("Subject"))

local Rotate =  require(script:WaitForChild("Rotate"))
local SetTransparency =  require(script:WaitForChild("SetTransparency"))


-- From Input
local INPUT_PRIORITY = Enum.ContextActionPriority.Low.Value
local ROTATION_SPEED_KEYS    = math.rad(120)
local ROTATION_SPEED_MOUSE   = Vector2.new(1, 0.77)*math.rad(15)
local ROTATION_SPEED_GAMEPAD = Vector2.new(1, 0.77)*math.rad(165)
local ZOOM_SPEED_MOUSE = 4
local ZOOM_SPEED_KEYS = 0.75

-- Gamepad Thumbstick Helper Function
local AnalogCurve do
	local DEADZONE = 0.1
	function AnalogCurve(x)
		local y = (math.abs(x) - DEADZONE)/(1 - DEADZONE)
		y = 0.255000975*(2^(2.299113817*y) - 1)
		return math.clamp(y, 0, 1)*math.sign(x)
	end
end


local portraitPopperFixFlagExists, portraitPopperFixFlagEnabled = pcall(function()
	return UserSettings():IsUserFeatureEnabled("UserPortraitPopperFix")
end)
local FFlagUserPortraitPopperFix = portraitPopperFixFlagExists and portraitPopperFixFlagEnabled


--[[ The Module ]]--
local BaseOcclusion = require(script.Parent:WaitForChild("BaseOcclusion"))
local Poppercam = setmetatable({}, BaseOcclusion)
Poppercam.__index = Poppercam

function Poppercam.new()
	local self = setmetatable(BaseOcclusion.new(), Poppercam)
	
	self.gamepad = {
		Thumbstick2 = Vector2.new(),
	}
	self.keyboard = {
		Left = 0,
		Right = 0,
		I = 0,
		O = 0
	}
	self.mouse = {
		Movement = Vector2.new(),
		Wheel = 0,
	}
	
	self.UISConnections = {}
	self.steppedConn =  nil
	self.worldDt = 1/60
	return self
end

function Poppercam:GetPanning()
	for _, input in ipairs(UserInputService:GetMouseButtonsPressed()) do
		if input.UserInputType == Enum.UserInputType.MouseButton2 then
			return true
		end
	end
	return false
end

function Poppercam:GetRotation()
	local kKeyboard = Vector2.new(self.keyboard.Left - self.keyboard.Right, 0)
	local kGamepad = self.gamepad.Thumbstick2
	local kMouse = self.mouse.Movement
	self.mouse.Movement = Vector2.new()
	local result = kKeyboard*ROTATION_SPEED_KEYS + kGamepad*ROTATION_SPEED_GAMEPAD + kMouse*ROTATION_SPEED_MOUSE
	return result.Y, result.X
end

function Poppercam:GetZoomDelta()
	local kKeyboard = self.keyboard.O - self.keyboard.I
	local kMouse = -self.mouse.Wheel
	self.mouse.Wheel = 0
	return kKeyboard*ZOOM_SPEED_KEYS + kMouse*ZOOM_SPEED_MOUSE
end

function Poppercam:GetOcclusionMode()
	return Enum.DevCameraOcclusionMode.Zoom
end

function Poppercam:Enable(enable)
	if enable then
		-- Enabling	
		self:BindInputs()		
	else
		-- Disabling
		self:UnbindInputs()
		self:ResetDeviceInputs()
	end
end

function Poppercam:Update(renderDt, desiredCameraCFrame, desiredCameraFocus)
	self.camera = game.Workspace.CurrentCamera
	if self.camera.CameraType == Enum.CameraType.Custom then
		local subject, subjectTransform, subjectRoot = Subject(self.worldDt)
		if subject then
			local pitch, yaw = self:GetRotation()
			local zoomDelta = self:GetZoomDelta()
			local newFocus = Rotate:Step(self.worldDt, subjectTransform, pitch, yaw) -- vehicle yaw spring must use the world step
			local zoom, transparency, firstPerson = Zoom(renderDt, zoomDelta, newFocus, subjectRoot)
			local newCameraCFrame = newFocus*CFrame.new(0, 0, zoom)
			return newCameraCFrame, newFocus
		end
	end
	
	return desiredCameraCFrame, desiredCameraFocus
end

function Poppercam:ResetDeviceInputs()
	for _, device in pairs{self.gamepad, self.keyboard, self.mouse} do
		for k, v in pairs(device) do
			device[k] = v*0
		end
	end
end

function Poppercam:BindInputs()
	local function Thumbstick(action, state, input)
		local position = input.Position
		self.gamepad[input.KeyCode.Name] = Vector2.new(AnalogCurve(position.X), AnalogCurve(position.Y))
	end

	local function MouseMove(action, state, input)
		local delta = input.Delta
		self.mouse.Movement = Vector2.new(-delta.X, -delta.Y)
		return Enum.ContextActionResult.Pass
	end
	
	local function MouseWheel(action, state, input)
		self.mouse.Wheel = input.Position.Z
		return Enum.ContextActionResult.Pass
	end
	
	local function Keypress(action, state, input)
		self.keyboard[input.KeyCode.Name] = state == Enum.UserInputState.Begin and 1 or 0
	end
		
	ContextActionService:BindActionAtPriority("Camera/Thumbstick", Thumbstick, false, INPUT_PRIORITY,
		Enum.KeyCode.Thumbstick2
	)
	ContextActionService:BindActionAtPriority("Camera/MouseMove",  MouseMove, false, INPUT_PRIORITY,
		Enum.UserInputType.MouseMovement
	)
	ContextActionService:BindActionAtPriority("Camera/MouseWheel", MouseWheel, false, INPUT_PRIORITY,
		Enum.UserInputType.MouseWheel
	)
	ContextActionService:BindActionAtPriority("Camera/Keypress", Keypress, false, INPUT_PRIORITY,
		Enum.KeyCode.Left,
		Enum.KeyCode.Right,
		Enum.KeyCode.I,
		Enum.KeyCode.O
	)
	
	local resetFunction = function() self:ResetDeviceInputs() end
	self.UISConnections["TextBoxFocused"] = UserInputService.TextBoxFocused:Connect(resetFunction)		
	self.UISConnections["TextBoxFocusReleased"] = UserInputService.TextBoxFocusReleased:Connect(resetFunction)
	self.UISConnections["WindowFocused"] = UserInputService.WindowFocused:Connect(resetFunction)
	self.UISConnections["WindowFocusReleased"] = UserInputService.WindowFocusReleased:Connect(resetFunction)
	
	self.steppedConn = RunService.Stepped:Connect(function(t,dt)
		self.worldDt = dt
	end)
end

function Poppercam:UnbindInputs()
	ContextActionService:UnbindAction("Camera/Thumbstick")
	ContextActionService:UnbindAction("Camera/MouseMove")
	ContextActionService:UnbindAction("Camera/MouseWheel")
	ContextActionService:UnbindAction("Camera/Keypress")	
	
	for _, connection in pairs(self.UISConnections) do
		connection:Disconnect()
	end
	self.UISConnections = {}
		
	if self.steppedConn then
		self.steppedConn:Disconnect()
	end
end

-- Called when character is added
function Poppercam:CharacterAdded(character, player)
	
end

-- Called when character is about to be removed
function Poppercam:CharacterRemoving(character, player)
	
end

function Poppercam:OnCameraSubjectChanged(newSubject)

end

return Poppercam