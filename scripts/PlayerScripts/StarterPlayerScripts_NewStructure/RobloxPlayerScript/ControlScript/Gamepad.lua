--[[
	Gamepad Character Control - This module handles controlling your avatar using a game console-style controller
	
	2018 PlayerScripts Update - AllYourBlox		
--]]

local UserInputService = game:GetService("UserInputService")
local ContextActionService = game:GetService("ContextActionService")

--[[ Constants ]]--
local ZERO_VECTOR3 = Vector3.new(0,0,0)
local NONE = Enum.UserInputType.None
local thumbstickDeadzone = 0.2

--[[ The Module ]]--
local BaseCharacterController = require(script.Parent:WaitForChild("BaseCharacterController"))
local Gamepad = setmetatable({}, BaseCharacterController)
Gamepad.__index = Gamepad

function Gamepad.new()
	print("Instantiating Gamepad Controller")
	local self = setmetatable(BaseCharacterController.new(), Gamepad)
	
	self.forwardValue  = 0
	self.backwardValue = 0
	self.leftValue = 0
	self.rightValue = 0
	
	self.activeGamepad = NONE	-- Enum.UserInputType.Gamepad1, 2, 3...
	self.gamepadConnectedConn = nil
	self.gamepadDisconnectedConn = nil
	return self
end

function Gamepad:Enable(enable)
	if not UserInputService.GamepadEnabled then
		return false
	end
	
	if enable == self.enabled then
		-- Module is already in the state being requested. True is returned here since the module will be in the state
		-- expected by the code that follows the Enable() call. This makes more sense than returning false to indicate
		-- no action was necessary. False indicates failure to be in requested/expected state.
		return true
	end
	
	self.forwardValue  = 0
	self.backwardValue = 0
	self.leftValue = 0
	self.rightValue = 0
	self.moveVector = ZERO_VECTOR3
	
	if enable then
		self.activeGamepad = self:GetHighestPriorityGamepad()
		if self.activeGamepad ~= NONE then
			self:BindContextActions()
			self:ConnectGamepadConnectionListeners()
		else
			-- No connected gamepads, failure to enable
			return false
		end
	else
		self:UnbindContextActions()
		self:DisconnectGamepadConnectionListeners()
		self.activeGamepad = NONE
	end
	
	self.enabled = enable
	return true
end

-- This function selects the lowest number gamepad from the currently-connected gamepad
-- and sets it as the active gamepad
function Gamepad:GetHighestPriorityGamepad()
	local connectedGamepads = UserInputService:GetConnectedGamepads()
	local bestGamepad = NONE -- Note that this value is higher than all valid gamepad values
	for _, gamepad in pairs(connectedGamepads) do
		if gamepad.Value < bestGamepad.Value then
			bestGamepad = gamepad
		end
	end
	return bestGamepad
end

function Gamepad:BindContextActions()
	
	if self.activeGamepad == NONE then
		-- There must be an active gamepad to set up bindings
		return false
	end
	
	
	local updateMovement = function(inputState)
		if inputState == Enum.UserInputState.Cancel then
			self.moveVector = ZERO_VECTOR3
		else
			self.moveVector = Vector3.new(self.leftValue + self.rightValue, 0, self.forwardValue + self.backwardValue)
		end
	end
	
	-- Note: In the previous version of this code, the movement values were not zeroed-out on UserInputState. Cancel, now they are,
	-- which fixes them from getting stuck on.
	local handleMoveForward = function(actionName, inputState, inputObject)			
		self.forwardValue = (inputState == Enum.UserInputState.Begin) and -1 or 0
		updateMovement(inputState)
	end
	
	local handleMoveBackward = function(actionName, inputState, inputObject)	
		self.backwardValue = (inputState == Enum.UserInputState.Begin) and 1 or 0
		updateMovement(inputState)
	end
	
	local handleMoveLeft = function(actionName, inputState, inputObject)	
		self.leftValue = (inputState == Enum.UserInputState.Begin) and -1 or 0
		updateMovement(inputState)
	end
	
	local handleMoveRight = function(actionName, inputState, inputObject)	
		self.rightValue = (inputState == Enum.UserInputState.Begin) and 1 or 0
		updateMovement(inputState)
	end
	
	local handleJumpAction = function(actionName, inputState, inputObject)
		self.isJumping = (inputState == Enum.UserInputState.Begin)
	end
	
	local handleThumbstickInput = function(actionName, inputState, inputObject)
		if self.activeGamepad ~= inputObject.UserInputType then return end
		if inputObject.KeyCode ~= Enum.KeyCode.Thumbstick1 then return end
		
		if inputState == Enum.UserInputState.Cancel then
			self.moveVector = ZERO_VECTOR3
			return
		end
		
		if inputObject.Position.magnitude > thumbstickDeadzone then
			self.moveVector  =  Vector3.new(inputObject.Position.X, 0, -inputObject.Position.Y)
		else
			self.moveVector = ZERO_VECTOR3
		end
	end
	
	ContextActionService:BindActivate(self.activeGamepad, Enum.KeyCode.ButtonR2)
	ContextActionService:BindAction("jumpAction",handleJumpAction, false, Enum.KeyCode.ButtonA)
	ContextActionService:BindAction("moveThumbstick",handleThumbstickInput, false, Enum.KeyCode.Thumbstick1)
	
	return true
end

function Gamepad:UnbindContextActions()
	if self.activeGamepad ~= NONE then
		ContextActionService:UnbindActivate(self.activeGamepad, Enum.KeyCode.ButtonR2)
	end
	ContextActionService:UnbindAction("moveThumbstick")
	ContextActionService:UnbindAction("jumpAction")
end

function Gamepad:OnNewGamepadConnected()
	-- A new gamepad has been connected.
	local bestGamepad = self:GetHighestPriorityGamepad()

	if bestGamepad == self.activeGamepad then
		-- A new gamepad was connected, but our active gamepad is not changing
		return
	end
	
	if bestGamepad == NONE then
		-- There should be an active gamepad when GamepadConnected fires, so this should not
		-- normally be hit. If there is no active gamepad, unbind actions but leave
		-- the module enabled and continue to listen for a new gamepad connection.
		warn("Gamepad:OnNewGamepadConnected found no connected gamepads")
		self:UnbindContextActions()
		return
	end
	
	if self.activeGamepad ~= NONE then
		-- Switching from one active gamepad to another
		ContextActionService:UnbindActivate(self.activeGamepad, Enum.KeyCode.ButtonR2)
	end
	
	self.activeGamepad = bestGamepad
	ContextActionService:BindActivate(self.activeGamepad, Enum.KeyCode.ButtonR2)
end

function Gamepad:OnCurrentGamepadDisconnected()
	if self.activeGamepad ~= NONE then
		ContextActionService:UnbindActivate(self.activeGamepad, Enum.KeyCode.ButtonR2)
	end
	
	local bestGamepad = self:GetHighestPriorityGamepad()

	if self.activeGamepad ~= NONE and bestGamepad == self.activeGamepad then
		warn("Gamepad:OnCurrentGamepadDisconnected found the supposedly disconnected gamepad in connectedGamepads.")
		self:UnbindContextActions()
		self.activeGamepad = NONE
		return
	end	
	
	if bestGamepad == NONE then
		-- No active gamepad, unbinding actions but leaving gamepad connection listener active
		self:UnbindContextActions()
		self.activeGamepad = NONE
	else
		-- Set new gamepad as active and bind to tool activation
		self.activeGamepad = bestGamepad
		ContextActionService:BindActivate(self.activeGamepad, Enum.KeyCode.ButtonR2)
	end
end

function Gamepad:ConnectGamepadConnectionListeners()
	self.gamepadConnectedConn = UserInputService.GamepadConnected:Connect(function(gamepadEnum)
		self:OnNewGamepadConnected()
	end)
	
	self.gamepadDisconnectedConn = UserInputService.GamepadDisconnected:Connect(function(gamepadEnum)
		if self.activeGamepad == gamepadEnum then
			self:OnCurrentGamepadDisconnected()
		end
	end)

end

function Gamepad:DisconnectGamepadConnectionListeners()
	if self.gamepadConnectedConn then
		self.gamepadConnectedConn:Disconnect()
		self.gamepadConnectedConn = nil
	end
	
	if self.gamepadDisconnectedConn then
		self.gamepadDisconnectedConn:Disconnect()
		self.gamepadDisconnectedConn = nil
	end
end

return Gamepad
