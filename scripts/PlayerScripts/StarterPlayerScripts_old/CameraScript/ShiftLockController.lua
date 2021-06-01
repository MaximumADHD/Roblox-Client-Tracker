--[[
	// FileName: ShiftLockController
	// Written by: jmargh
	// Version 1.2
	// Description: Manages the state of shift lock mode

	// Required by:
		RootCamera

	// Note: ContextActionService sinks keys, so until we allow binding to ContextActionService without sinking
	// keys, this module will use UserInputService.
--]]

local Players = game:GetService('Players')
local UserInputService = game:GetService('UserInputService')
-- Settings and GameSettings are read only
local Settings = UserSettings()	-- ignore warning
local GameSettings = Settings.GameSettings

local ShiftLockController = {}

--[[ Script Variables ]]--
while not Players.LocalPlayer do
	Players.PlayerAdded:wait()
end

local LocalPlayer = Players.LocalPlayer
local Mouse = LocalPlayer:GetMouse()
local PlayerGui = LocalPlayer:WaitForChild('PlayerGui')
local ScreenGui = nil
local ShiftLockIcon = nil
local InputCn = nil
local IsShiftLockMode = false
local IsShiftLocked = false
local IsActionBound = false
local IsInFirstPerson = false

-- Toggle Event
ShiftLockController.OnShiftLockToggled = Instance.new('BindableEvent')

-- wrapping long conditional in function
local function isShiftLockMode()
	return LocalPlayer.DevEnableMouseLock and GameSettings.ControlMode == Enum.ControlMode.MouseLockSwitch and
			LocalPlayer.DevComputerMovementMode ~= Enum.DevComputerMovementMode.ClickToMove and
			GameSettings.ComputerMovementMode ~= Enum.ComputerMovementMode.ClickToMove and
			LocalPlayer.DevComputerMovementMode ~= Enum.DevComputerMovementMode.Scriptable
end

if not UserInputService.TouchEnabled then	-- TODO: Remove when safe on mobile
	IsShiftLockMode = isShiftLockMode()
end

--[[ Constants ]]--
local SHIFT_LOCK_OFF = 'rbxasset://textures/ui/mouseLock_off.png'
local SHIFT_LOCK_ON = 'rbxasset://textures/ui/mouseLock_on.png'
local SHIFT_LOCK_CURSOR = 'rbxasset://textures/MouseLockedCursor.png'

--[[ Local Functions ]]--
local function onShiftLockToggled()
	IsShiftLocked = not IsShiftLocked
	if IsShiftLocked then
		ShiftLockIcon.Image = SHIFT_LOCK_ON
		Mouse.Icon = SHIFT_LOCK_CURSOR
	else
		ShiftLockIcon.Image = SHIFT_LOCK_OFF
		Mouse.Icon = ""
	end
	ShiftLockController.OnShiftLockToggled:Fire()
end

local function initialize()
	if ScreenGui then
		ScreenGui:Destroy()
		ScreenGui = nil
	end
	ScreenGui = Instance.new('ScreenGui')
	ScreenGui.Name = "ControlGui"
	
	local frame = Instance.new('Frame')
	frame.Name = "BottomLeftControl"
	frame.Size = UDim2.new(0, 130, 0, 46)
	frame.Position = UDim2.new(0, 0, 1, -46)
	frame.BackgroundTransparency = 1
	frame.Parent = ScreenGui
	
	ShiftLockIcon = Instance.new('ImageButton')
	ShiftLockIcon.Name = "MouseLockLabel"
	ShiftLockIcon.Size = UDim2.new(0, 31, 0, 31)
	ShiftLockIcon.Position = UDim2.new(0, 12, 0, 2)
	ShiftLockIcon.BackgroundTransparency = 1
	ShiftLockIcon.Image = IsShiftLocked and SHIFT_LOCK_ON or SHIFT_LOCK_OFF
	ShiftLockIcon.Visible = true
	ShiftLockIcon.Parent = frame
	
	ShiftLockIcon.MouseButton1Click:connect(onShiftLockToggled)
	
	ScreenGui.Parent = IsShiftLockMode and PlayerGui or nil
end

--[[ Public API ]]--
function ShiftLockController:IsShiftLocked()
	return IsShiftLockMode and IsShiftLocked
end

function ShiftLockController:SetIsInFirstPerson(isInFirstPerson)
	IsInFirstPerson = isInFirstPerson
end

--[[ Input/Settings Changed Events ]]--
local mouseLockSwitchFunc = function(actionName, inputState, inputObject)
	if IsShiftLockMode then
		onShiftLockToggled()
	end
end

local function disableShiftLock()
	if ScreenGui then ScreenGui.Parent = nil end
	IsShiftLockMode = false
	Mouse.Icon = ""
	if InputCn then
		InputCn:disconnect()
		InputCn = nil
	end
	IsActionBound = false
	ShiftLockController.OnShiftLockToggled:Fire()
end

-- TODO: Remove when we figure out ContextActionService without sinking keys
local function onShiftInputBegan(inputObject, isProcessed)
	if isProcessed then return end
	if inputObject.UserInputType == Enum.UserInputType.Keyboard and
		(inputObject.KeyCode == Enum.KeyCode.LeftShift or inputObject.KeyCode == Enum.KeyCode.RightShift) then
		--
		mouseLockSwitchFunc()
	end
end

local function enableShiftLock()
	IsShiftLockMode = isShiftLockMode()
	if IsShiftLockMode then
		if ScreenGui then
			ScreenGui.Parent = PlayerGui
		end
		if IsShiftLocked then
			Mouse.Icon = SHIFT_LOCK_CURSOR
			ShiftLockController.OnShiftLockToggled:Fire()
		end
		if not IsActionBound then
			InputCn = UserInputService.InputBegan:connect(onShiftInputBegan)
			IsActionBound = true
		end
	end
end

GameSettings.Changed:connect(function(property)
	if property == 'ControlMode' then
		if GameSettings.ControlMode == Enum.ControlMode.MouseLockSwitch then
			enableShiftLock()
		else
			disableShiftLock()
		end
	elseif property == 'ComputerMovementMode' then
		if GameSettings.ComputerMovementMode == Enum.ComputerMovementMode.ClickToMove then
			disableShiftLock()
		else
			enableShiftLock()
		end
	end
end)

LocalPlayer.Changed:connect(function(property)
	if property == 'DevEnableMouseLock' then
		if LocalPlayer.DevEnableMouseLock then
			enableShiftLock()
		else
			disableShiftLock()
		end
	elseif property == 'DevComputerMovementMode' then
		if LocalPlayer.DevComputerMovementMode == Enum.DevComputerMovementMode.ClickToMove or
			LocalPlayer.DevComputerMovementMode == Enum.DevComputerMovementMode.Scriptable then
			--
			disableShiftLock()
		else
			enableShiftLock()
		end
	end
end)

LocalPlayer.CharacterAdded:connect(function(character)
	-- we need to recreate guis on character load
	if not UserInputService.TouchEnabled then
		initialize()
	end
end)

--[[ Initialization ]]--
 -- TODO: Remove when safe! ContextActionService crashes touch clients with tupele is 2 or more
if not UserInputService.TouchEnabled then
	initialize()
	if isShiftLockMode() then
		InputCn = UserInputService.InputBegan:connect(onShiftInputBegan)
		IsActionBound = true
	end
end

return ShiftLockController
