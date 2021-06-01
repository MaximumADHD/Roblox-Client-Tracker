--[[
	// FileName: ControlScript.lua
	// Version 1.1
	// Written by: jmargh and jeditkacheff
	// Description: Manages in game controls for both touch and keyboard/mouse devices.
	
	// This script will be inserted into PlayerScripts under each player by default. If you want to
	// create your own custom controls or modify these controls, you must place a script with this
	// name, ControlScript, under StarterPlayer -> PlayerScripts.
	
	// Required Modules:
		ClickToMove
		DPad
		KeyboardMovement
		Thumbpad
		Thumbstick
		TouchJump
		MasterControl
		VehicleController
--]]

--[[ Services ]]--
local ContextActionService = game:GetService('ContextActionService')
local Players = game:GetService('Players')
local UserInputService = game:GetService('UserInputService')
local VRService = game:GetService('VRService')
-- Settings and GameSettings are read only
local Settings = UserSettings()
local GameSettings = Settings.GameSettings

-- Issue with play solo? (F6)
while not UserInputService.KeyboardEnabled and not UserInputService.TouchEnabled and not UserInputService.GamepadEnabled do
	wait()
end

--[[ Script Variables ]]--
while not Players.LocalPlayer do
	wait()
end

local lastInputType = nil
local LocalPlayer = Players.LocalPlayer
local PlayerGui = LocalPlayer:WaitForChild('PlayerGui')
local IsTouchDevice = UserInputService.TouchEnabled
local UserMovementMode = IsTouchDevice and GameSettings.TouchMovementMode or GameSettings.ComputerMovementMode
local DevMovementMode = IsTouchDevice and LocalPlayer.DevTouchMovementMode or LocalPlayer.DevComputerMovementMode
local IsUserChoice = (IsTouchDevice and DevMovementMode == Enum.DevTouchMovementMode.UserChoice) or (DevMovementMode == Enum.DevComputerMovementMode.UserChoice)
local TouchGui = nil
local TouchControlFrame = nil
local IsModalEnabled = UserInputService.ModalEnabled
local BindableEvent_OnFailStateChanged = nil
local isJumpEnabled = false

-- register what control scripts we are using
do
	local PlayerScripts = LocalPlayer:WaitForChild("PlayerScripts")
	local canRegisterControls = pcall(function() PlayerScripts:RegisterTouchMovementMode(Enum.TouchMovementMode.Default) end)

	if canRegisterControls then
		PlayerScripts:RegisterTouchMovementMode(Enum.TouchMovementMode.Thumbstick)
		PlayerScripts:RegisterTouchMovementMode(Enum.TouchMovementMode.DPad)
		PlayerScripts:RegisterTouchMovementMode(Enum.TouchMovementMode.Thumbpad)
		PlayerScripts:RegisterTouchMovementMode(Enum.TouchMovementMode.ClickToMove)
		PlayerScripts:RegisterTouchMovementMode(Enum.TouchMovementMode.DynamicThumbstick)

		PlayerScripts:RegisterComputerMovementMode(Enum.ComputerMovementMode.Default)
		PlayerScripts:RegisterComputerMovementMode(Enum.ComputerMovementMode.KeyboardMouse)
		PlayerScripts:RegisterComputerMovementMode(Enum.ComputerMovementMode.ClickToMove)
	end
end

local DynamicThumbstickAvailable = pcall(function() 
	return Enum.DevTouchMovementMode.DynamicThumbstick and Enum.TouchMovementMode.DynamicThumbstick
end)

--[[ Modules ]]--
local ClickToMoveTouchControls = nil
local ControlModules = {}

local ControlState = {}
ControlState.Current = nil
function ControlState:SwitchTo(newControl)
	if ControlState.Current == newControl then return end
	
	if ControlState.Current then
		ControlState.Current:Disable()
	end
	
	ControlState.Current = newControl
	
	if ControlState.Current then
		ControlState.Current:Enable()
	end
end

function ControlState:IsTouchJumpModuleUsed()
	return isJumpEnabled
end

local MasterControl = require(script:WaitForChild('MasterControl'))
--MasterControl needs access to ControlState in order to be able to fully enable and disable control
MasterControl.ControlState = ControlState

local DynamicThumbstickModule = require(script.MasterControl:WaitForChild('DynamicThumbstick'))
local ThumbstickModule = require(script.MasterControl:WaitForChild('Thumbstick'))
local ThumbpadModule = require(script.MasterControl:WaitForChild('Thumbpad'))
local DPadModule = require(script.MasterControl:WaitForChild('DPad'))
local TouchJumpModule = require(script.MasterControl:WaitForChild('TouchJump'))
local ClickToMoveModule = require(script.MasterControl:WaitForChild('ClickToMoveController'))

MasterControl.TouchJumpModule = TouchJumpModule
local VRNavigationModule = require(script.MasterControl:WaitForChild('VRNavigation'))
local keyboardModule = require(script.MasterControl:WaitForChild('KeyboardMovement'))
ControlModules.Gamepad = require(script.MasterControl:WaitForChild('Gamepad'))

function getTouchModule()

	local module = nil
	if not IsUserChoice then
		if DynamicThumbstickAvailable and DevMovementMode == Enum.DevTouchMovementMode.DynamicThumbstick then
			module = DynamicThumbstickModule
			isJumpEnabled = true
		elseif DevMovementMode == Enum.DevTouchMovementMode.Thumbstick then
			module = ThumbstickModule
			isJumpEnabled = true
		elseif DevMovementMode == Enum.DevTouchMovementMode.Thumbpad then
			module = ThumbpadModule
			isJumpEnabled = true
		elseif DevMovementMode == Enum.DevTouchMovementMode.DPad then
			module = DPadModule
			isJumpEnabled = false
		elseif DevMovementMode == Enum.DevTouchMovementMode.ClickToMove then
            module = ClickToMoveModule
            isJumpEnabled = false -- TODO: What should this be, true or false?
		elseif DevMovementMode == Enum.DevTouchMovementMode.Scriptable then
			module = nil
		end
	else
		if DynamicThumbstickAvailable and UserMovementMode == Enum.TouchMovementMode.DynamicThumbstick then
			module = DynamicThumbstickModule
			isJumpEnabled = true
		elseif UserMovementMode == Enum.TouchMovementMode.Default or UserMovementMode == Enum.TouchMovementMode.Thumbstick then
			module = ThumbstickModule
			isJumpEnabled = true
		elseif UserMovementMode == Enum.TouchMovementMode.Thumbpad then
			module = ThumbpadModule
			isJumpEnabled = true
		elseif UserMovementMode == Enum.TouchMovementMode.DPad then
			module = DPadModule
			isJumpEnabled = false
		elseif UserMovementMode == Enum.TouchMovementMode.ClickToMove then
			module = ClickToMoveModule
            isJumpEnabled = false -- TODO: What should this be, true or false?
		end
	end
	return module
end

function setJumpModule(isEnabled)
	if not isEnabled then
		TouchJumpModule:Disable()
	elseif ControlState.Current == ControlModules.Touch then
		TouchJumpModule:Enable()
	end
end

function setClickToMove()
	if DevMovementMode == Enum.DevTouchMovementMode.ClickToMove or DevMovementMode == Enum.DevComputerMovementMode.ClickToMove or
		UserMovementMode == Enum.ComputerMovementMode.ClickToMove or UserMovementMode == Enum.TouchMovementMode.ClickToMove then
		if lastInputType == Enum.UserInputType.Touch then
			ClickToMoveTouchControls = ControlState.Current
		end
	elseif ClickToMoveTouchControls then
		ClickToMoveTouchControls:Disable()
		ClickToMoveTouchControls = nil
	end
end

ControlModules.Touch = {}
ControlModules.Touch.Current = nil
ControlModules.Touch.LocalPlayerChangedCon = nil
ControlModules.Touch.GameSettingsChangedCon = nil

function ControlModules.Touch:RefreshControlStyle()
	if ControlModules.Touch.Current then
		ControlModules.Touch.Current:Disable()
	end
	setJumpModule(false)
	TouchJumpModule:Disable()
	ControlModules.Touch:Enable()
end
function ControlModules.Touch:DisconnectEvents()
	if ControlModules.Touch.LocalPlayerChangedCon then
		ControlModules.Touch.LocalPlayerChangedCon:disconnect()
		ControlModules.Touch.LocalPlayerChangedCon = nil
	end
	if ControlModules.Touch.GameSettingsChangedCon then
		ControlModules.Touch.GameSettingsChangedCon:disconnect()
		ControlModules.Touch.GameSettingsChangedCon = nil
	end
end
function ControlModules.Touch:Enable()
	DevMovementMode = LocalPlayer.DevTouchMovementMode
	IsUserChoice = DevMovementMode == Enum.DevTouchMovementMode.UserChoice
	if IsUserChoice then
		UserMovementMode = GameSettings.TouchMovementMode
	end
		
	local newModuleToEnable = getTouchModule()
	if newModuleToEnable then
		setClickToMove()
		setJumpModule(isJumpEnabled)
		
		newModuleToEnable:Enable()
		ControlModules.Touch.Current = newModuleToEnable
				
		if isJumpEnabled then TouchJumpModule:Enable() end
	end
	
	-- This being within the above if statement was causing issues with ClickToMove, which isn't a module within this script.
	ControlModules.Touch:DisconnectEvents()
	ControlModules.Touch.LocalPlayerChangedCon = LocalPlayer:GetPropertyChangedSignal("DevTouchMovementMode"):connect(function()
		ControlModules.Touch:RefreshControlStyle()
	end)
	ControlModules.Touch.GameSettingsChangedCon = GameSettings:GetPropertyChangedSignal("TouchMovementMode"):connect(function()
		ControlModules.Touch:RefreshControlStyle()
	end)
end
function ControlModules.Touch:Disable()
	ControlModules.Touch:DisconnectEvents()
	
	local newModuleToDisable = getTouchModule()
	
	if newModuleToDisable == ThumbstickModule or
		newModuleToDisable == DPadModule or
		newModuleToDisable == ThumbpadModule or
		newModuleToDisable == DynamicThumbstickModule then
			newModuleToDisable:Disable()
			setJumpModule(false)
			TouchJumpModule:Disable()
	end
	
	-- UserMovementMode will still have the previous value at this point
	if UserMovementMode == Enum.ComputerMovementMode.ClickToMove then
		ClickToMoveModule:Disable()
	end
end

local function getKeyboardModule()
	-- NOTE: Click to move still uses keyboard. Leaving cases in case this ever changes.
	local whichModule = nil
	if not IsUserChoice then
		if DevMovementMode == Enum.DevComputerMovementMode.KeyboardMouse then
			whichModule = keyboardModule
		elseif DevMovementMode == Enum.DevComputerMovementMode.ClickToMove then
			whichModule = keyboardModule
		end 
	else
		if UserMovementMode == Enum.ComputerMovementMode.KeyboardMouse or UserMovementMode == Enum.ComputerMovementMode.Default then
			whichModule = keyboardModule
		elseif UserMovementMode == Enum.ComputerMovementMode.ClickToMove then
			whichModule = keyboardModule
		end
	end

	return whichModule
end

ControlModules.Keyboard = {}
function ControlModules.Keyboard:RefreshControlStyle()
	ControlModules.Keyboard:Disable()
	ControlModules.Keyboard:Enable()
end
function ControlModules.Keyboard:Enable()
	DevMovementMode = LocalPlayer.DevComputerMovementMode
	IsUserChoice = DevMovementMode == Enum.DevComputerMovementMode.UserChoice
	if IsUserChoice then
		UserMovementMode = GameSettings.ComputerMovementMode
	end
		
	local newModuleToEnable = getKeyboardModule()
	if newModuleToEnable then
		newModuleToEnable:Enable()
	end
	
	if UserMovementMode == Enum.ComputerMovementMode.ClickToMove then
		ClickToMoveModule:Enable()
	end
	
	ControlModules.Keyboard:DisconnectEvents()
	ControlModules.Keyboard.LocalPlayerChangedCon = LocalPlayer.Changed:connect(function(property)
		if property == 'DevComputerMovementMode' then
			ControlModules.Keyboard:RefreshControlStyle()
		end
	end)
	
	ControlModules.Keyboard.GameSettingsChangedCon = GameSettings.Changed:connect(function(property)
		if property == 'ComputerMovementMode' then
			ControlModules.Keyboard:RefreshControlStyle()
		end
	end)
end
function ControlModules.Keyboard:DisconnectEvents()
	if ControlModules.Keyboard.LocalPlayerChangedCon then
		ControlModules.Keyboard.LocalPlayerChangedCon:disconnect()
		ControlModules.Keyboard.LocalPlayerChangedCon = nil
	end
	if ControlModules.Keyboard.GameSettingsChangedCon then
		ControlModules.Keyboard.GameSettingsChangedCon:disconnect()
		ControlModules.Keyboard.GameSettingsChangedCon = nil
	end
end
function ControlModules.Keyboard:Disable()
	ControlModules.Keyboard:DisconnectEvents()
	local newModuleToDisable = getKeyboardModule()
	if newModuleToDisable then
		newModuleToDisable:Disable()
	end
	
	-- UserMovementMode will still be set to previous movement type
	if UserMovementMode == Enum.ComputerMovementMode.ClickToMove then
		ClickToMoveModule:Disable()
	end
end

ControlModules.VRNavigation = {}

function ControlModules.VRNavigation:Enable()
	VRNavigationModule:Enable()
end

function ControlModules.VRNavigation:Disable()
	VRNavigationModule:Disable()
end

-- not used, but needs to be required
local VehicleController = require(script.MasterControl:WaitForChild('VehicleController'))


--[[ Initialization/Setup ]]--
local function createTouchGuiContainer()
	if TouchGui then TouchGui:Destroy() end
	
	-- Container for all touch device guis
	TouchGui = Instance.new('ScreenGui')
	TouchGui.Name = "TouchGui"
	TouchGui.ResetOnSpawn = false
	TouchGui.Parent = PlayerGui
	
	TouchControlFrame = Instance.new('Frame')
	TouchControlFrame.Name = "TouchControlFrame"
	TouchControlFrame.Size = UDim2.new(1, 0, 1, 0)
	TouchControlFrame.BackgroundTransparency = 1
	TouchControlFrame.Parent = TouchGui
	
	ThumbstickModule:Create(TouchControlFrame)
	DPadModule:Create(TouchControlFrame)
	ThumbpadModule:Create(TouchControlFrame)
	TouchJumpModule:Create(TouchControlFrame)
	DynamicThumbstickModule:Create(TouchControlFrame)
end

--[[ Settings Changed Connections ]]--
LocalPlayer.Changed:connect(function(property)
	if lastInputType == Enum.UserInputType.Touch and property == 'DevTouchMovementMode' then
		ControlState:SwitchTo(ControlModules.Touch)
	elseif UserInputService.KeyboardEnabled and property == 'DevComputerMovementMode' then
		ControlState:SwitchTo(ControlModules.Keyboard)
	end
end)

GameSettings.Changed:connect(function(property)
	if not IsUserChoice then return end
	if property == 'TouchMovementMode' or property == 'ComputerMovementMode' then
		UserMovementMode = GameSettings[property]
		if property == 'TouchMovementMode' then
			ControlState:SwitchTo(ControlModules.Touch)
		elseif property == 'ComputerMovementMode' then
			ControlState:SwitchTo(ControlModules.Keyboard)
		end
	end
end)

--[[ Touch Events ]]--
UserInputService.Changed:connect(function(property)
	if property == 'ModalEnabled' then
		IsModalEnabled = UserInputService.ModalEnabled

		if lastInputType == Enum.UserInputType.Touch then
			if ControlState.Current == ControlModules.Touch and IsModalEnabled then
				ControlState:SwitchTo(nil)
			elseif ControlState.Current == nil and not IsModalEnabled then
				ControlState:SwitchTo(ControlModules.Touch)
			end
		end
	end
end)

BindableEvent_OnFailStateChanged = MasterControl:GetClickToMoveFailStateChanged()

if BindableEvent_OnFailStateChanged then
	BindableEvent_OnFailStateChanged.Event:connect(function(isOn)
		if lastInputType == Enum.UserInputType.Touch and ClickToMoveTouchControls then
			if isOn then
				ControlState:SwitchTo(ClickToMoveTouchControls)
			else
				ControlState:SwitchTo(nil)
			end
		end
	end)
end

local switchToInputType = function(newLastInputType)
	lastInputType = newLastInputType
	
	if VRService.VREnabled then
		ControlState:SwitchTo(ControlModules.VRNavigation)
		return
	end

	if lastInputType == Enum.UserInputType.Touch then
				ControlState:SwitchTo(ControlModules.Touch)
	elseif lastInputType == Enum.UserInputType.Keyboard or
			lastInputType == Enum.UserInputType.MouseButton1 or
			lastInputType == Enum.UserInputType.MouseButton2 or
			lastInputType == Enum.UserInputType.MouseButton3 or
			lastInputType == Enum.UserInputType.MouseWheel or
			lastInputType == Enum.UserInputType.MouseMovement  then
				ControlState:SwitchTo(ControlModules.Keyboard)
	elseif lastInputType == Enum.UserInputType.Gamepad1 or
			lastInputType == Enum.UserInputType.Gamepad2 or
			lastInputType == Enum.UserInputType.Gamepad3 or
			lastInputType == Enum.UserInputType.Gamepad4 then
				ControlState:SwitchTo(ControlModules.Gamepad)
	end
end

if IsTouchDevice then
	createTouchGuiContainer()
end

MasterControl:Init()

UserInputService.GamepadDisconnected:connect(function(gamepadEnum)
	local connectedGamepads = UserInputService:GetConnectedGamepads()
	if #connectedGamepads > 0 then return end
	
	if not VRService.VREnabled then
		if UserInputService.KeyboardEnabled then
			ControlState:SwitchTo(ControlModules.Keyboard)
		elseif IsTouchDevice then
			ControlState:SwitchTo(ControlModules.Touch)
		end
	end
end)

UserInputService.GamepadConnected:connect(function(gamepadEnum)
	if not VRService.VREnabled then
		ControlState:SwitchTo(ControlModules.Gamepad)
	end
end)

switchToInputType(UserInputService:GetLastInputType())
UserInputService.LastInputTypeChanged:connect(switchToInputType)

VRService:GetPropertyChangedSignal("VREnabled"):Connect(function()	
	if VRService.VREnabled then
		ControlState:SwitchTo(ControlModules.VRNavigation)
	end
end)
