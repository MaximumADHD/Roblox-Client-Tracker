--[[
	Keyboard Character Control - This module handles controlling your avatar from a keyboard

	2018 PlayerScripts Update - AllYourBlox
--]]

--[[ Roblox Services ]]--
local UserInputService = game:GetService("UserInputService")
local ContextActionService = game:GetService("ContextActionService")

--[[ Constants ]]--
local ZERO_VECTOR3 = Vector3.new(0,0,0)

--[[ The Module ]]--
local BaseCharacterController = require(script.Parent:WaitForChild("BaseCharacterController"))
local Keyboard = setmetatable({}, BaseCharacterController)
Keyboard.__index = Keyboard

function Keyboard.new(CONTROL_ACTION_PRIORITY)
	local self = setmetatable(BaseCharacterController.new(), Keyboard)

	self.CONTROL_ACTION_PRIORITY = CONTROL_ACTION_PRIORITY

	self.textFocusReleasedConn = nil
	self.textFocusGainedConn = nil
	self.windowFocusReleasedConn = nil

	self.forwardValue  = 0
	self.backwardValue = 0
	self.leftValue = 0
	self.rightValue = 0

	self.jumpEnabled = true

	return self
end

function Keyboard:Enable(enable: boolean)
	if not UserInputService.KeyboardEnabled then
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
	self.jumpRequested = false
	self:UpdateJump()

	if enable then
		self:BindContextActions()
		self:ConnectFocusEventListeners()
	else
		self:UnbindContextActions()
		self:DisconnectFocusEventListeners()
	end

	self.enabled = enable
	return true
end

function Keyboard:UpdateMovement(inputState)
	if inputState == Enum.UserInputState.Cancel then
		self.moveVector = ZERO_VECTOR3
	else
		self.moveVector = Vector3.new(self.leftValue + self.rightValue, 0, self.forwardValue + self.backwardValue)
	end
end

function Keyboard:UpdateJump()
	self.isJumping = self.jumpRequested
end

function Keyboard:BindContextActions()

	-- Note: In the previous version of this code, the movement values were not zeroed-out on UserInputState. Cancel, now they are,
	-- which fixes them from getting stuck on.
	-- We return ContextActionResult.Pass here for legacy reasons.
	-- Many games rely on gameProcessedEvent being false on UserInputService.InputBegan for these control actions.
	local handleMoveForward = function(actionName, inputState, inputObject)
		self.forwardValue = (inputState == Enum.UserInputState.Begin) and -1 or 0
		self:UpdateMovement(inputState)
		return Enum.ContextActionResult.Pass
	end

	local handleMoveBackward = function(actionName, inputState, inputObject)
		self.backwardValue = (inputState == Enum.UserInputState.Begin) and 1 or 0
		self:UpdateMovement(inputState)
		return Enum.ContextActionResult.Pass
	end

	local handleMoveLeft = function(actionName, inputState, inputObject)
		self.leftValue = (inputState == Enum.UserInputState.Begin) and -1 or 0
		self:UpdateMovement(inputState)
		return Enum.ContextActionResult.Pass
	end

	local handleMoveRight = function(actionName, inputState, inputObject)
		self.rightValue = (inputState == Enum.UserInputState.Begin) and 1 or 0
		self:UpdateMovement(inputState)
		return Enum.ContextActionResult.Pass
	end

	local handleJumpAction = function(actionName, inputState, inputObject)
		self.jumpRequested = self.jumpEnabled and (inputState == Enum.UserInputState.Begin)
		self:UpdateJump()
		return Enum.ContextActionResult.Pass
	end

	-- TODO: Revert to KeyCode bindings so that in the future the abstraction layer from actual keys to
	-- movement direction is done in Lua
	ContextActionService:BindActionAtPriority("moveForwardAction", handleMoveForward, false,
		self.CONTROL_ACTION_PRIORITY, Enum.PlayerActions.CharacterForward)
	ContextActionService:BindActionAtPriority("moveBackwardAction", handleMoveBackward, false,
		self.CONTROL_ACTION_PRIORITY, Enum.PlayerActions.CharacterBackward)
	ContextActionService:BindActionAtPriority("moveLeftAction", handleMoveLeft, false,
		self.CONTROL_ACTION_PRIORITY, Enum.PlayerActions.CharacterLeft)
	ContextActionService:BindActionAtPriority("moveRightAction", handleMoveRight, false,
		self.CONTROL_ACTION_PRIORITY, Enum.PlayerActions.CharacterRight)
	ContextActionService:BindActionAtPriority("jumpAction", handleJumpAction, false,
		self.CONTROL_ACTION_PRIORITY, Enum.PlayerActions.CharacterJump)
end

function Keyboard:UnbindContextActions()
	ContextActionService:UnbindAction("moveForwardAction")
	ContextActionService:UnbindAction("moveBackwardAction")
	ContextActionService:UnbindAction("moveLeftAction")
	ContextActionService:UnbindAction("moveRightAction")
	ContextActionService:UnbindAction("jumpAction")
end

function Keyboard:ConnectFocusEventListeners()
	local function onFocusReleased()
		self.moveVector = ZERO_VECTOR3
		self.forwardValue  = 0
		self.backwardValue = 0
		self.leftValue = 0
		self.rightValue = 0
		self.jumpRequested = false
		self:UpdateJump()
	end

	local function onTextFocusGained(textboxFocused)
		self.jumpRequested = false
		self:UpdateJump()
	end

	self.textFocusReleasedConn = UserInputService.TextBoxFocusReleased:Connect(onFocusReleased)
	self.textFocusGainedConn = UserInputService.TextBoxFocused:Connect(onTextFocusGained)
	self.windowFocusReleasedConn = UserInputService.WindowFocused:Connect(onFocusReleased)
end

function Keyboard:DisconnectFocusEventListeners()
	if self.textFocusReleasedConn then
		self.textFocusReleasedConn:Disconnect()
		self.textFocusReleasedConn = nil
	end
	if self.textFocusGainedConn then
		self.textFocusGainedConn:Disconnect()
		self.textFocusGainedConn = nil
	end
	if self.windowFocusReleasedConn then
		self.windowFocusReleasedConn:Disconnect()
		self.windowFocusReleasedConn = nil
	end
end

return Keyboard
