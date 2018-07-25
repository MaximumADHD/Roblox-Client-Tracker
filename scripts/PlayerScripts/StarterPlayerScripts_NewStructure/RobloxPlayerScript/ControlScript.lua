--[[
	ControlScript - This module manages the selection of the current character control module
	and calls update() on the active module on RenderStepped
	
	2018 PlayerScripts Update - AllYourBlox		
--]]
local ControlScript = {}

--[[ Roblox Services ]]--
local a = shared
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local Settings = UserSettings()
local GameSettings = Settings.GameSettings

local activeControlModule = nil	-- Used to prevent unnecessarily expensive checks on each input event
local activeController = nil
local touchJumpController = nil
local moveFunction = Players.LocalPlayer.Move
local humanoid = nil
local lastInputType = Enum.UserInputType.None
local cameraRelative = true

-- For Roblox VehicleController
local humanoidSeatedConn = nil
local vehicleController = nil

local touchControlFrame = nil

-- Modules - each returns a new() constructor function used to create controllers as needed
local Keyboard = require(script:WaitForChild("Keyboard"))
local Gamepad = require(script:WaitForChild("Gamepad"))
local TouchDPad = require(script:WaitForChild("TouchDPad"))
local DynamicThumbstick = require(script:WaitForChild("DynamicThumbstick"))

-- These controllers handle only walk/run movement, jumping is handled by the
-- TouchJump controller if any of these are active
local ClickToMove = require(script:WaitForChild("ClickToMoveController"))
local TouchThumbstick = require(script:WaitForChild("TouchThumbstick"))
local TouchThumbpad = require(script:WaitForChild("TouchThumbpad"))
local TouchJump = require(script:WaitForChild("TouchJump"))

-- Old control script notes that this must be required but is not used like a control module?
local VehicleController = require(script:WaitForChild("VehicleController"))

-- The Modules above are used to construct controller instances as-needed, and this
-- table is a map from Module to the instance created from it
local controllers = {}

-- Mapping from movement mode and lastInputType enum values to control modules to avoid huge if elseif switching
local movementEnumToModuleMap = {
	[Enum.TouchMovementMode.DPad] = TouchDPad,
	[Enum.DevTouchMovementMode.DPad] = TouchDPad,
	[Enum.TouchMovementMode.Thumbpad] = TouchThumbpad,
	[Enum.DevTouchMovementMode.Thumbpad] = TouchThumbpad,
	[Enum.TouchMovementMode.Thumbstick] = TouchThumbstick,
	[Enum.DevTouchMovementMode.Thumbstick] = TouchThumbstick,
	[Enum.TouchMovementMode.DynamicThumbstick] = DynamicThumbstick,
	[Enum.DevTouchMovementMode.DynamicThumbstick] = DynamicThumbstick,
	[Enum.TouchMovementMode.ClickToMove] = ClickToMove,
	[Enum.DevTouchMovementMode.ClickToMove] = ClickToMove,

	-- Current default
	[Enum.TouchMovementMode.Default] = TouchThumbstick,

	[Enum.ComputerMovementMode.Default] = Keyboard,
	[Enum.ComputerMovementMode.KeyboardMouse] = Keyboard,
	[Enum.DevComputerMovementMode.KeyboardMouse] = Keyboard,
	[Enum.DevComputerMovementMode.Scriptable] = nil,
	[Enum.ComputerMovementMode.ClickToMove] = ClickToMove,
	[Enum.DevComputerMovementMode.ClickToMove] = ClickToMove,
}

-- Keyboard controller is really keyboard and mouse controller
local computerInputTypeToModuleMap = {
	[Enum.UserInputType.Keyboard] = Keyboard,
	[Enum.UserInputType.MouseButton1] = Keyboard,
	[Enum.UserInputType.MouseButton2] = Keyboard,
	[Enum.UserInputType.MouseButton3] = Keyboard,
	[Enum.UserInputType.MouseWheel] = Keyboard,
	[Enum.UserInputType.MouseMovement] = Keyboard,
	[Enum.UserInputType.Gamepad1] = Gamepad,
	[Enum.UserInputType.Gamepad2] = Gamepad,
	[Enum.UserInputType.Gamepad3] = Gamepad,
	[Enum.UserInputType.Gamepad4] = Gamepad,
}

-- Returns module (possibly nil) and success code to differentiate returning nil due to error vs Scriptable
local function SelectComputerMovementModule()
	if not (UserInputService.KeyboardEnabled or UserInputService.GamepadEnabled) then
		return nil, false
	end
	local computerModule = nil
	local DevMovementMode = Players.LocalPlayer.DevComputerMovementMode
	if DevMovementMode == Enum.DevComputerMovementMode.UserChoice then
		computerModule = computerInputTypeToModuleMap[lastInputType]
		if not computerModule then
			computerModule = movementEnumToModuleMap[GameSettings.ComputerMovementMode]
		end
	elseif DevMovementMode == Enum.DevComputerMovementMode.Scriptable then
		return nil, true
	elseif DevMovementMode == Enum.DevComputerMovementMode.ClickToMove then
		computerModule = ClickToMove
	else
		computerModule = computerInputTypeToModuleMap[lastInputType]
		if not computerModule then
			computerModule = movementEnumToModuleMap[DevMovementMode]
		end
	end
	return computerModule, true
end

-- Choose current Touch control module based on settings (user, dev)
-- Returns module (possibly nil) and success code to differentiate returning nil due to error vs Scriptable
local function SelectTouchModule()
	if not UserInputService.TouchEnabled then
		return nil, false
	end
	local touchModule = nil
	local DevMovementMode = Players.LocalPlayer.DevTouchMovementMode
	if DevMovementMode == Enum.DevTouchMovementMode.UserChoice then
		touchModule = movementEnumToModuleMap[GameSettings.TouchMovementMode]
	elseif DevMovementMode == Enum.DevTouchMovementMode.Scriptable then
		return nil, true	
	else
		touchModule = movementEnumToModuleMap[DevMovementMode]
	end
	return touchModule, true
end

local function OnRenderStepped()
	if activeController and activeController.enabled and humanoid then
		local moveVector = activeController:GetMoveVector()

		local vehicleConsumedInput = false
		if vehicleController then
			moveVector, vehicleConsumedInput = vehicleController:Update(moveVector, activeControlModule==Gamepad)
		end

		-- User of vehicleConsumedInput is commented out to preserve legacy behavior, in case some game relies on Humanoid.MoveDirection still being set while in a VehicleSeat
		--if not vehicleConsumedInput then
			moveFunction(Players.LocalPlayer, moveVector, cameraRelative)
		--end

		humanoid.Jump = activeController:GetIsJumping() or (touchJumpController and touchJumpController:GetIsJumping())
	end
end

local function OnHumanoidSeated(active, currentSeatPart)
	if active then
		if currentSeatPart and currentSeatPart:IsA("VehicleSeat") then
			if not vehicleController then
				vehicleController = VehicleController.new()
			end
			vehicleController:Enable(true, currentSeatPart)
		end
	else
		if vehicleController then
			vehicleController:Enable(false, currentSeatPart)
		end
	end
end

local function OnCharacterAdded(char)
	humanoid = char:FindFirstChildOfClass("Humanoid")
	while not humanoid do
		char.ChildAdded:wait()
		humanoid = char:FindFirstChildOfClass("Humanoid")
	end

	if humanoidSeatedConn then
		humanoidSeatedConn:Disconnect()
		humanoidSeatedConn = nil
	end
	humanoidSeatedConn = humanoid.Seated:connect(OnHumanoidSeated)
end

local function OnCharacterRemoving(char)
	humanoid = nil
end

-- Helper function to lazily instantiate a controller if it does not yet exist,
-- disable the active controller if it is different from the on being switched to,
-- and then enable the requested controller. The argument to this function must be
-- a reference to one of the control modules, i.e. Keyboard, Gamepad, etc.
local function SwitchToController(controlModule)
	if not controlModule then
		if activeController then
			activeController:Enable(false)
		end
		activeController = nil
		activeControlModule = nil
	else
		if not controllers[controlModule] then
			controllers[controlModule] = controlModule.new()
		end

		if activeController ~= controllers[controlModule] then
			if activeController then
				activeController:Enable(false)
			end
			activeController = controllers[controlModule]
			activeControlModule = controlModule -- Only used to check if controller switch is necessary
			if touchControlFrame then
				activeController:Enable(true, touchControlFrame)
			else
				activeController:Enable(true)
			end
			if touchControlFrame and (activeControlModule == TouchThumbpad
									or activeControlModule == TouchThumbstick
									or activeControlModule == ClickToMove
									or activeControlModule == DynamicThumbstick) then
				touchJumpController = controllers[TouchJump]
				if not touchJumpController then
					touchJumpController = TouchJump.new()
				end
				touchJumpController:Enable(true, touchControlFrame)
			else
				if touchJumpController then
					touchJumpController:Enable(false)
				end
			end
		end
	end
end

local function OnLastInputTypeChanged(newLastInputType)
	if lastInputType == newLastInputType then
		warn("LastInputType Change listener called with current type.")
	end
	lastInputType = newLastInputType

	if lastInputType == Enum.UserInputType.Touch then
		-- TODO: Check if touch module already active
		local touchModule, success = SelectTouchModule()
		if success then
			while not touchControlFrame do
				wait()
			end
			SwitchToController(touchModule)
		end
	else
		local computerModule = computerInputTypeToModuleMap[lastInputType]
		if computerModule then
			SwitchToController(computerModule)
		end
	end
end

-- Called when any relevant values of GameSettings or LocalPlayer change, forcing re-evalulation of
-- current control scheme
local function OnComputerMovementModeChange()
	local controlModule, success =  SelectComputerMovementModule()
	if success then
		SwitchToController(controlModule)
	end
end

local function OnTouchMovementModeChange()
	local touchModule, success = SelectTouchModule()
	if success then
		while not touchControlFrame do
			wait()
		end
		SwitchToController(touchModule)
	end
end

Players.LocalPlayer.CharacterAdded:Connect(OnCharacterAdded)
Players.LocalPlayer.CharacterRemoving:Connect(OnCharacterRemoving)
if Players.LocalPlayer.Character then
	OnCharacterAdded(Players.LocalPlayer.Character)
end

RunService:BindToRenderStep("ControlScriptRenderstep", Enum.RenderPriority.Input.Value, OnRenderStepped)

UserInputService.LastInputTypeChanged:Connect(OnLastInputTypeChanged)

local propertyChangeListeners = {
	GameSettings:GetPropertyChangedSignal("TouchMovementMode"):Connect(OnTouchMovementModeChange),
	Players.LocalPlayer:GetPropertyChangedSignal("DevTouchMovementMode"):Connect(OnTouchMovementModeChange),

	GameSettings:GetPropertyChangedSignal("ComputerMovementMode"):Connect(OnComputerMovementModeChange),
	Players.LocalPlayer:GetPropertyChangedSignal("DevComputerMovementMode"):Connect(OnComputerMovementModeChange),
}

--[[ Touch Device UI ]]--
local PlayerGui = nil
local touchGui = nil
local playerGuiAddedConn = nil

local function createTouchGuiContainer()
	if touchGui then touchGui:Destroy() end

	-- Container for all touch device guis
	touchGui = Instance.new('ScreenGui')
	touchGui.Name = "TouchGui"
	touchGui.ResetOnSpawn = false

	touchControlFrame = Instance.new("Frame")
	touchControlFrame.Name = "TouchControlFrame"
	touchControlFrame.Size = UDim2.new(1, 0, 1, 0)
	touchControlFrame.BackgroundTransparency = 1
	touchControlFrame.Parent = touchGui

	touchGui.Parent = PlayerGui
end

if UserInputService.TouchEnabled then
	PlayerGui = Players.LocalPlayer:FindFirstChildOfClass("PlayerGui")
	if PlayerGui then
		createTouchGuiContainer()
		OnLastInputTypeChanged(UserInputService:GetLastInputType())
	else
		playerGuiAddedConn = Players.LocalPlayer.ChildAdded:Connect(function(child)
			if child:IsA("PlayerGui") then
				PlayerGui = child
				createTouchGuiContainer()
				playerGuiAddedConn:Disconnect()
				playerGuiAddedConn = nil
				OnLastInputTypeChanged(UserInputService:GetLastInputType())
			end
		end)
	end
end

return ControlScript
