--[[
	// FileName: Gamepad
	// Written by: jeditkacheff
	// Description: Implements movement controls for gamepad devices (XBox, PS4, MFi, etc.)
--]]
local Gamepad = {}

local MasterControl = require(script.Parent)

local Players = game:GetService('Players')
local RunService = game:GetService('RunService')
local UserInputService = game:GetService('UserInputService')
local ContextActionService = game:GetService('ContextActionService')
local StarterPlayer = game:GetService('StarterPlayer')
local Settings = UserSettings()
local GameSettings = Settings.GameSettings
local currentMoveVector = Vector3.new(0,0,0)
local activateGamepad = nil

local gamepadConnectedCon = nil
local gamepadDisconnectedCon = nil

while not Players.LocalPlayer do
	wait()
end
local LocalPlayer = Players.LocalPlayer

--[[ Constants ]]--
local thumbstickDeadzone = 0.22 --raised from 14% on 3/1/16 to accommodate looser XB360 controllers

function assignActivateGamepad()
	local connectedGamepads = UserInputService:GetConnectedGamepads()
	if #connectedGamepads > 0 then
		for i = 1, #connectedGamepads do
			if activateGamepad == nil then
				activateGamepad = connectedGamepads[i]
			elseif connectedGamepads[i].Value < activateGamepad.Value then
				activateGamepad = connectedGamepads[i]
			end
		end
	end
	
	if activateGamepad == nil then -- nothing is connected, at least set up for gamepad1
		activateGamepad = Enum.UserInputType.Gamepad1
	end
end

--[[ Public API ]]--
function Gamepad:Enable()
	local forwardValue  = 0
	local backwardValue = 0
	local leftValue = 0
	local rightValue = 0
	
	local moveFunc = LocalPlayer.Move
	local gamepadSupports = UserInputService.GamepadSupports
	
	local controlCharacterGamepad = function(actionName, inputState, inputObject)
		if inputState == Enum.UserInputState.Cancel then
			MasterControl:AddToPlayerMovement(-currentMoveVector)
			currentMoveVector =  Vector3.new(0,0,0)
			return
		end

		if activateGamepad ~= inputObject.UserInputType then return end
		if inputObject.KeyCode ~= Enum.KeyCode.Thumbstick1 then return end
		
		if inputObject.Position.magnitude > thumbstickDeadzone then
			MasterControl:AddToPlayerMovement(-currentMoveVector)
			currentMoveVector =  Vector3.new(inputObject.Position.X, 0, -inputObject.Position.Y)
			MasterControl:AddToPlayerMovement(currentMoveVector)
		else
			MasterControl:AddToPlayerMovement(-currentMoveVector)
			currentMoveVector =  Vector3.new(0,0,0)
		end
	end
	
	local jumpCharacterGamepad = function(actionName, inputState, inputObject)
		if inputState == Enum.UserInputState.Cancel then
			MasterControl:SetIsJumping(false)
			return
		end

		if activateGamepad ~= inputObject.UserInputType then return end
		if inputObject.KeyCode ~= Enum.KeyCode.ButtonA then return end
		
		MasterControl:SetIsJumping(inputObject.UserInputState == Enum.UserInputState.Begin)
	end
	
	local doDpadMoveUpdate = function(userInputType)
		if LocalPlayer and LocalPlayer.Character then
			MasterControl:AddToPlayerMovement(-currentMoveVector)
			currentMoveVector = Vector3.new(leftValue + rightValue,0,forwardValue + backwardValue)
			MasterControl:AddToPlayerMovement(currentMoveVector)
		end
	end
	
	local moveForwardFunc = function(actionName, inputState, inputObject)
		if inputState == Enum.UserInputState.End then
			forwardValue = -1
		elseif inputState == Enum.UserInputState.Begin or inputState == Enum.UserInputState.Cancel then
			forwardValue = 0
		end
		
		doDpadMoveUpdate(inputObject.UserInputType)
	end
	
	local moveBackwardFunc = function(actionName, inputState, inputObject)	
		if inputState == Enum.UserInputState.End then
			backwardValue = 1
		elseif inputState == Enum.UserInputState.Begin or inputState == Enum.UserInputState.Cancel then
			backwardValue = 0
		end
		
		doDpadMoveUpdate(inputObject.UserInputType)
	end
	
	local moveLeftFunc = function(actionName, inputState, inputObject)	
		if inputState == Enum.UserInputState.End then
			leftValue = -1
		elseif inputState == Enum.UserInputState.Begin or inputState == Enum.UserInputState.Cancel then
			leftValue = 0
		end
		
		doDpadMoveUpdate(inputObject.UserInputType)
	end
	
	local moveRightFunc = function(actionName, inputState, inputObject)	
		if inputState == Enum.UserInputState.End then
			rightValue = 1
		elseif inputState == Enum.UserInputState.Begin or inputState == Enum.UserInputState.Cancel then
			rightValue = 0
		end
		
		doDpadMoveUpdate(inputObject.UserInputType)
	end
	
	local function setActivateGamepad()
		if activateGamepad then
			ContextActionService:UnbindActivate(activateGamepad, Enum.KeyCode.ButtonR2)
		end
		assignActivateGamepad()
		if activateGamepad then
			ContextActionService:BindActivate(activateGamepad, Enum.KeyCode.ButtonR2)
		end
	end
	
	ContextActionService:BindAction("JumpButton",jumpCharacterGamepad, false, Enum.KeyCode.ButtonA)
	ContextActionService:BindAction("MoveThumbstick",controlCharacterGamepad, false, Enum.KeyCode.Thumbstick1)
	
	setActivateGamepad()
	
	if not gamepadSupports(UserInputService, activateGamepad, Enum.KeyCode.Thumbstick1) then
		-- if the gamepad supports thumbsticks, theres no point in having the dpad buttons getting eaten up by these actions
		ContextActionService:BindAction("forwardDpad", moveForwardFunc, false, Enum.KeyCode.DPadUp)
		ContextActionService:BindAction("backwardDpad", moveBackwardFunc, false, Enum.KeyCode.DPadDown)
		ContextActionService:BindAction("leftDpad", moveLeftFunc, false, Enum.KeyCode.DPadLeft)
		ContextActionService:BindAction("rightDpad", moveRightFunc, false, Enum.KeyCode.DPadRight)
	end
	
	gamepadConnectedCon = UserInputService.GamepadDisconnected:connect(function(gamepadEnum)
		if activateGamepad ~= gamepadEnum then return end
		
		MasterControl:AddToPlayerMovement(-currentMoveVector)
		currentMoveVector = Vector3.new(0,0,0)
		
		activateGamepad = nil
		setActivateGamepad()
	end)

	gamepadDisconnectedCon = UserInputService.GamepadConnected:connect(function(gamepadEnum)
		if activateGamepad == nil then 
			setActivateGamepad()
		end
	end)
end

function Gamepad:Disable()
	
	ContextActionService:UnbindAction("forwardDpad")
	ContextActionService:UnbindAction("backwardDpad")
	ContextActionService:UnbindAction("leftDpad")
	ContextActionService:UnbindAction("rightDpad")
	
	ContextActionService:UnbindAction("MoveThumbstick")
	ContextActionService:UnbindAction("JumpButton")
	ContextActionService:UnbindActivate(activateGamepad, Enum.KeyCode.ButtonR2)
	
	if gamepadConnectedCon then gamepadConnectedCon:disconnect() end
	if gamepadDisconnectedCon then gamepadDisconnectedCon:disconnect() end
	
	activateGamepad = nil
	MasterControl:AddToPlayerMovement(-currentMoveVector)
	currentMoveVector = Vector3.new(0,0,0)
	MasterControl:SetIsJumping(false)
end

return Gamepad
