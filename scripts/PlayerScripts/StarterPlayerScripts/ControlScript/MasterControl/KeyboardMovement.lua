--[[
	// FileName: ComputerMovementKeyboardMovement
	// Version 1.2
	// Written by: jeditkacheff/jmargh
	// Description: Implements movement controls for keyboard devices
--]]
local Players = game:GetService('Players')
local UserInputService = game:GetService('UserInputService')
local ContextActionService = game:GetService('ContextActionService')
local StarterPlayer = game:GetService('StarterPlayer')
local Settings = UserSettings()
local GameSettings = Settings.GameSettings

local KeyboardMovement = {}

while not Players.LocalPlayer do
	wait()
end
local LocalPlayer = Players.LocalPlayer
local CachedHumanoid = nil
local SeatJumpCn = nil
local TextFocusReleasedCn = nil
local TextFocusGainedCn = nil
local WindowFocusReleasedCn = nil

local MasterControl = require(script.Parent)
local currentMoveVector = Vector3.new(0,0,0)

--[[ Local Functions ]]--
local function getHumanoid()
	local character = LocalPlayer and LocalPlayer.Character
	if character then
		if CachedHumanoid and CachedHumanoid.Parent == character then
			return CachedHumanoid
		else
			CachedHumanoid = nil
			for _,child in pairs(character:GetChildren()) do
				if child:IsA('Humanoid') then
					CachedHumanoid = child
					return CachedHumanoid
				end
			end
		end
	end
end

--[[ Public API ]]--
function KeyboardMovement:Enable()
	if not UserInputService.KeyboardEnabled then
		return
	end
	
	local forwardValue  = 0
	local backwardValue = 0
	local leftValue = 0
	local rightValue = 0
	
	local updateMovement = function(inputState)
		if inputState == Enum.UserInputState.Cancel then
			MasterControl:AddToPlayerMovement(-currentMoveVector)
			currentMoveVector = Vector3.new(0, 0, 0)
		else
			MasterControl:AddToPlayerMovement(-currentMoveVector)
			currentMoveVector = Vector3.new(leftValue + rightValue,0,forwardValue + backwardValue)
			MasterControl:AddToPlayerMovement(currentMoveVector)	
		end
	end
	
	local moveForwardFunc = function(actionName, inputState, inputObject)			
		if inputState == Enum.UserInputState.Begin then
			forwardValue = -1
		elseif inputState == Enum.UserInputState.End then
			forwardValue = 0
		end
		updateMovement(inputState)
	end
	
	local moveBackwardFunc = function(actionName, inputState, inputObject)	
		if inputState == Enum.UserInputState.Begin then
			backwardValue = 1
		elseif inputState == Enum.UserInputState.End then
			backwardValue = 0
		end
		updateMovement(inputState)
	end
	
	local moveLeftFunc = function(actionName, inputState, inputObject)	
		if inputState == Enum.UserInputState.Begin then
			leftValue = -1
		elseif inputState == Enum.UserInputState.End then
			leftValue = 0
		end
		updateMovement(inputState)
	end
	
	local moveRightFunc = function(actionName, inputState, inputObject)	
		if inputState == Enum.UserInputState.Begin then
			rightValue = 1
		elseif inputState == Enum.UserInputState.End then
			rightValue = 0
		end
		updateMovement(inputState)
	end
	
	local jumpFunc = function(actionName, inputState, inputObject)
		MasterControl:SetIsJumping(inputState == Enum.UserInputState.Begin)
	end
	
	-- TODO: remove up and down arrows, these seem unnecessary
	ContextActionService:BindActionToInputTypes("forwardMovement", moveForwardFunc, false, Enum.PlayerActions.CharacterForward)
	ContextActionService:BindActionToInputTypes("backwardMovement", moveBackwardFunc, false, Enum.PlayerActions.CharacterBackward)
	ContextActionService:BindActionToInputTypes("leftMovement", moveLeftFunc, false, Enum.PlayerActions.CharacterLeft)
	ContextActionService:BindActionToInputTypes("rightMovement", moveRightFunc, false, Enum.PlayerActions.CharacterRight)
	ContextActionService:BindActionToInputTypes("jumpAction", jumpFunc, false, Enum.PlayerActions.CharacterJump)
	-- TODO: make sure we check key state before binding to check if key is already down
	
	local function onFocusReleased()
		local humanoid = getHumanoid()
		if humanoid then
			MasterControl:AddToPlayerMovement(-currentMoveVector)
			currentMoveVector = Vector3.new(0, 0, 0)
			forwardValue, backwardValue, leftValue, rightValue = 0, 0, 0, 0
			MasterControl:SetIsJumping(false)
		end
	end
	
	local function onTextFocusGained(textboxFocused)
		MasterControl:SetIsJumping(false)
	end
	
	SeatJumpCn = UserInputService.InputBegan:connect(function(inputObject, isProcessed)
		if inputObject.KeyCode == Enum.KeyCode.Backspace and not isProcessed then
			local humanoid = getHumanoid()
			if humanoid and (humanoid.Sit or humanoid.PlatformStand) then
				MasterControl:DoJump()
			end
		end
	end)
	
	TextFocusReleasedCn = UserInputService.TextBoxFocusReleased:connect(onFocusReleased)
	TextFocusGainedCn = UserInputService.TextBoxFocused:connect(onTextFocusGained)
	-- TODO: remove pcall when API is live
	WindowFocusReleasedCn = UserInputService.WindowFocused:connect(onFocusReleased)
end

function KeyboardMovement:Disable()
	ContextActionService:UnbindAction("forwardMovement")
	ContextActionService:UnbindAction("backwardMovement")
	ContextActionService:UnbindAction("leftMovement")
	ContextActionService:UnbindAction("rightMovement")
	ContextActionService:UnbindAction("jumpAction")
	
	if SeatJumpCn then
		SeatJumpCn:disconnect()
		SeatJumpCn = nil
	end
	if TextFocusReleasedCn then
		TextFocusReleasedCn:disconnect()
		TextFocusReleasedCn = nil
	end
	if TextFocusGainedCn then
		TextFocusGainedCn:disconnect()
		TextFocusGainedCn = nil
	end
	if WindowFocusReleasedCn then
		WindowFocusReleasedCn:disconnect()
		WindowFocusReleasedCn = nil
	end
	
	MasterControl:AddToPlayerMovement(-currentMoveVector)
	currentMoveVector = Vector3.new(0,0,0)
	MasterControl:SetIsJumping(false)
end

return KeyboardMovement
