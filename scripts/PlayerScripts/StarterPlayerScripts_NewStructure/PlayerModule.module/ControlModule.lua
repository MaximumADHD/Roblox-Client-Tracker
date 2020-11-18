--[[
	ControlModule - This ModuleScript implements a singleton class to manage the
	selection, activation, and deactivation of the current character movement controller.
	This script binds to RenderStepped at Input priority and calls the Update() methods
	on the active controller instances.

	The character controller ModuleScripts implement classes which are instantiated and
	activated as-needed, they are no longer all instantiated up front as they were in
	the previous generation of PlayerScripts.

	2018 PlayerScripts Update - AllYourBlox
--]]
local ControlModule = {}
ControlModule.__index = ControlModule

--[[ Roblox Services ]]--
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local Workspace = game:GetService("Workspace")
local UserGameSettings = UserSettings():GetService("UserGameSettings")

-- Roblox User Input Control Modules - each returns a new() constructor function used to create controllers as needed
local Keyboard = require(script:WaitForChild("Keyboard"))
local Gamepad = require(script:WaitForChild("Gamepad"))
local DynamicThumbstick = require(script:WaitForChild("DynamicThumbstick"))

local FFlagUserMakeThumbstickDynamic do
	local success, value = pcall(function()
		return UserSettings():IsUserFeatureEnabled("UserMakeThumbstickDynamic")
	end)
	FFlagUserMakeThumbstickDynamic = success and value
end

local TouchThumbstick = FFlagUserMakeThumbstickDynamic and DynamicThumbstick or require(script:WaitForChild("TouchThumbstick"))

local FFlagUserFixExternalJumpRequest do
	local success, result = pcall(function()
		return UserSettings():IsUserFeatureEnabled("UserFixExternalJumpRequest")
	end)
	FFlagUserFixExternalJumpRequest = success and result
end

-- These controllers handle only walk/run movement, jumping is handled by the
-- TouchJump controller if any of these are active
local ClickToMove = require(script:WaitForChild("ClickToMoveController"))
local TouchJump = require(script:WaitForChild("TouchJump"))

local VehicleController = require(script:WaitForChild("VehicleController"))

local CONTROL_ACTION_PRIORITY = Enum.ContextActionPriority.Default.Value

-- Mapping from movement mode and lastInputType enum values to control modules to avoid huge if elseif switching
local movementEnumToModuleMap = {
	[Enum.TouchMovementMode.DPad] = DynamicThumbstick,
	[Enum.DevTouchMovementMode.DPad] = DynamicThumbstick,
	[Enum.TouchMovementMode.Thumbpad] = DynamicThumbstick,
	[Enum.DevTouchMovementMode.Thumbpad] = DynamicThumbstick,
	[Enum.TouchMovementMode.Thumbstick] = TouchThumbstick,
	[Enum.DevTouchMovementMode.Thumbstick] = TouchThumbstick,
	[Enum.TouchMovementMode.DynamicThumbstick] = DynamicThumbstick,
	[Enum.DevTouchMovementMode.DynamicThumbstick] = DynamicThumbstick,
	[Enum.TouchMovementMode.ClickToMove] = ClickToMove,
	[Enum.DevTouchMovementMode.ClickToMove] = ClickToMove,

	-- Current default
	[Enum.TouchMovementMode.Default] = DynamicThumbstick,

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

local lastInputType

function ControlModule.new()
	local self = setmetatable({},ControlModule)

	-- The Modules above are used to construct controller instances as-needed, and this
	-- table is a map from Module to the instance created from it
	self.controllers = {}

	self.activeControlModule = nil	-- Used to prevent unnecessarily expensive checks on each input event
	self.activeController = nil
	self.touchJumpController = nil
	self.moveFunction = Players.LocalPlayer.Move
	self.humanoid = nil
	self.lastInputType = Enum.UserInputType.None

	-- For Roblox self.vehicleController
	self.humanoidSeatedConn = nil
	self.vehicleController = nil

	self.touchControlFrame = nil

	self.vehicleController = VehicleController.new(CONTROL_ACTION_PRIORITY)

	Players.LocalPlayer.CharacterAdded:Connect(function(char) self:OnCharacterAdded(char) end)
	Players.LocalPlayer.CharacterRemoving:Connect(function(char) self:OnCharacterRemoving(char) end)
	if Players.LocalPlayer.Character then
		self:OnCharacterAdded(Players.LocalPlayer.Character)
	end

	RunService:BindToRenderStep("ControlScriptRenderstep", Enum.RenderPriority.Input.Value, function(dt)
		self:OnRenderStepped(dt)
	end)

	UserInputService.LastInputTypeChanged:Connect(function(newLastInputType)
		self:OnLastInputTypeChanged(newLastInputType)
	end)


	UserGameSettings:GetPropertyChangedSignal("TouchMovementMode"):Connect(function()
		self:OnTouchMovementModeChange()
	end)
	Players.LocalPlayer:GetPropertyChangedSignal("DevTouchMovementMode"):Connect(function()
		self:OnTouchMovementModeChange()
	end)

	UserGameSettings:GetPropertyChangedSignal("ComputerMovementMode"):Connect(function()
		self:OnComputerMovementModeChange()
	end)
	Players.LocalPlayer:GetPropertyChangedSignal("DevComputerMovementMode"):Connect(function()
		self:OnComputerMovementModeChange()
	end)

	--[[ Touch Device UI ]]--
	self.playerGui = nil
	self.touchGui = nil
	self.playerGuiAddedConn = nil

	if UserInputService.TouchEnabled then
		self.playerGui = Players.LocalPlayer:FindFirstChildOfClass("PlayerGui")
		if self.playerGui then
			self:CreateTouchGuiContainer()
			self:OnLastInputTypeChanged(UserInputService:GetLastInputType())
		else
			self.playerGuiAddedConn = Players.LocalPlayer.ChildAdded:Connect(function(child)
				if child:IsA("PlayerGui") then
					self.playerGui = child
					self:CreateTouchGuiContainer()
					self.playerGuiAddedConn:Disconnect()
					self.playerGuiAddedConn = nil
					self:OnLastInputTypeChanged(UserInputService:GetLastInputType())
				end
			end)
		end
	else
		self:OnLastInputTypeChanged(UserInputService:GetLastInputType())
	end

	return self
end

-- Convenience function so that calling code does not have to first get the activeController
-- and then call GetMoveVector on it. When there is no active controller, this function returns
-- nil so that this case can be distinguished from no current movement (which returns zero vector).
function ControlModule:GetMoveVector()
	if self.activeController then
		return self.activeController:GetMoveVector()
	end
	return Vector3.new(0,0,0)
end

function ControlModule:GetActiveController()
	return self.activeController
end

function ControlModule:EnableActiveControlModule()
	if self.activeControlModule == ClickToMove then
		-- For ClickToMove, when it is the player's choice, we also enable the full keyboard controls.
		-- When the developer is forcing click to move, the most keyboard controls (WASD) are not available, only jump.
		self.activeController:Enable(
			true,
			Players.LocalPlayer.DevComputerMovementMode == Enum.DevComputerMovementMode.UserChoice,
			self.touchJumpController
		)
	elseif self.touchControlFrame then
		self.activeController:Enable(true, self.touchControlFrame)
	else
		self.activeController:Enable(true)
	end
end

function ControlModule:Enable(enable)
	if not self.activeController then
		return
	end

	if enable == nil then
		enable = true
	end
	if enable then
		self:EnableActiveControlModule()
	else
		self:Disable()
	end
end

-- For those who prefer distinct functions
function ControlModule:Disable()
	if self.activeController then
		self.activeController:Enable(false)

		if self.moveFunction then
			self.moveFunction(Players.LocalPlayer, Vector3.new(0,0,0), true)
		end
	end
end


-- Returns module (possibly nil) and success code to differentiate returning nil due to error vs Scriptable
function ControlModule:SelectComputerMovementModule()
	if not (UserInputService.KeyboardEnabled or UserInputService.GamepadEnabled) then
		return nil, false
	end

	local computerModule
	local DevMovementMode = Players.LocalPlayer.DevComputerMovementMode

	if DevMovementMode == Enum.DevComputerMovementMode.UserChoice then
		computerModule = computerInputTypeToModuleMap[lastInputType]
		if UserGameSettings.ComputerMovementMode == Enum.ComputerMovementMode.ClickToMove and computerModule == Keyboard then
			-- User has ClickToMove set in Settings, prefer ClickToMove controller for keyboard and mouse lastInputTypes
			computerModule = ClickToMove
		end
	else
		-- Developer has selected a mode that must be used.
		computerModule = movementEnumToModuleMap[DevMovementMode]

		-- computerModule is expected to be nil here only when developer has selected Scriptable
		if (not computerModule) and DevMovementMode ~= Enum.DevComputerMovementMode.Scriptable then
			warn("No character control module is associated with DevComputerMovementMode ", DevMovementMode)
		end
	end

	if computerModule then
		return computerModule, true
	elseif DevMovementMode == Enum.DevComputerMovementMode.Scriptable then
		-- Special case where nil is returned and we actually want to set self.activeController to nil for Scriptable
		return nil, true
	else
		-- This case is for when computerModule is nil because of an error and no suitable control module could
		-- be found.
		return nil, false
	end
end

-- Choose current Touch control module based on settings (user, dev)
-- Returns module (possibly nil) and success code to differentiate returning nil due to error vs Scriptable
function ControlModule:SelectTouchModule()
	if not UserInputService.TouchEnabled then
		return nil, false
	end
	local touchModule
	local DevMovementMode = Players.LocalPlayer.DevTouchMovementMode
	if DevMovementMode == Enum.DevTouchMovementMode.UserChoice then
		touchModule = movementEnumToModuleMap[UserGameSettings.TouchMovementMode]
	elseif DevMovementMode == Enum.DevTouchMovementMode.Scriptable then
		return nil, true
	else
		touchModule = movementEnumToModuleMap[DevMovementMode]
	end
	return touchModule, true
end

local function calculateRawMoveVector(humanoid, cameraRelativeMoveVector)
	local camera = Workspace.CurrentCamera
	if not camera then
		return cameraRelativeMoveVector
	end

	if humanoid:GetState() == Enum.HumanoidStateType.Swimming then
		return camera.CFrame:VectorToWorldSpace(cameraRelativeMoveVector)
	end

	local c, s
	local _, _, _, R00, R01, R02, _, _, R12, _, _, R22 = camera.CFrame:GetComponents()
	if R12 < 1 and R12 > -1 then
		-- X and Z components from back vector.
		c = R22
		s = R02
	else
		-- In this case the camera is looking straight up or straight down.
		-- Use X components from right and up vectors.
		c = R00
		s = -R01*math.sign(R12)
	end
	local norm = math.sqrt(c*c + s*s)
	return Vector3.new(
		(c*cameraRelativeMoveVector.x + s*cameraRelativeMoveVector.z)/norm,
		0,
		(c*cameraRelativeMoveVector.z - s*cameraRelativeMoveVector.x)/norm
	)
end

function ControlModule:OnRenderStepped(dt)
	if self.activeController and self.activeController.enabled and self.humanoid then
		-- Give the controller a chance to adjust its state
		self.activeController:OnRenderStepped(dt)

		-- Now retrieve info from the controller
		local moveVector = self.activeController:GetMoveVector()
		local cameraRelative = self.activeController:IsMoveVectorCameraRelative()

		local clickToMoveController = self:GetClickToMoveController()
		if self.activeController ~= clickToMoveController then
			if moveVector.magnitude > 0 then
				-- Clean up any developer started MoveTo path
				clickToMoveController:CleanupPath()
			else
				-- Get move vector for developer started MoveTo
				clickToMoveController:OnRenderStepped(dt)
				moveVector = clickToMoveController:GetMoveVector()
				cameraRelative = clickToMoveController:IsMoveVectorCameraRelative()
			end
		end

		-- Are we driving a vehicle ?
		local vehicleConsumedInput = false
		if self.vehicleController then
			moveVector, vehicleConsumedInput = self.vehicleController:Update(moveVector, cameraRelative, self.activeControlModule==Gamepad)
		end

		-- If not, move the player
		-- Verification of vehicleConsumedInput is commented out to preserve legacy behavior,
		-- in case some game relies on Humanoid.MoveDirection still being set while in a VehicleSeat
		--if not vehicleConsumedInput then
			if cameraRelative then
				moveVector = calculateRawMoveVector(self.humanoid, moveVector)
			end
			self.moveFunction(Players.LocalPlayer, moveVector, false)
		--end

		-- And make them jump if needed
		if FFlagUserFixExternalJumpRequest then
			if self.activeController:GetIsJumping() or (self.touchJumpController and self.touchJumpController:GetIsJumping()) then
				self.humanoid.Jump = true
			end
		else
			self.humanoid.Jump = self.activeController:GetIsJumping() or (self.touchJumpController and self.touchJumpController:GetIsJumping())
		end
	end
end

function ControlModule:OnHumanoidSeated(active, currentSeatPart)
	if active then
		if currentSeatPart and currentSeatPart:IsA("VehicleSeat") then
			if not self.vehicleController then
				self.vehicleController = self.vehicleController.new(CONTROL_ACTION_PRIORITY)
			end
			self.vehicleController:Enable(true, currentSeatPart)
		end
	else
		if self.vehicleController then
			self.vehicleController:Enable(false, currentSeatPart)
		end
	end
end

function ControlModule:OnCharacterAdded(char)
	self.humanoid = char:FindFirstChildOfClass("Humanoid")
	while not self.humanoid do
		char.ChildAdded:wait()
		self.humanoid = char:FindFirstChildOfClass("Humanoid")
	end

	if self.touchGui then
		self.touchGui.Enabled = true
	end

	if self.humanoidSeatedConn then
		self.humanoidSeatedConn:Disconnect()
		self.humanoidSeatedConn = nil
	end
	self.humanoidSeatedConn = self.humanoid.Seated:Connect(function(active, currentSeatPart)
		self:OnHumanoidSeated(active, currentSeatPart)
	end)
end

function ControlModule:OnCharacterRemoving(char)
	self.humanoid = nil

	if self.touchGui then
		self.touchGui.Enabled = false
	end
end

-- Helper function to lazily instantiate a controller if it does not yet exist,
-- disable the active controller if it is different from the on being switched to,
-- and then enable the requested controller. The argument to this function must be
-- a reference to one of the control modules, i.e. Keyboard, Gamepad, etc.
function ControlModule:SwitchToController(controlModule)
	if not controlModule then
		if self.activeController then
			self.activeController:Enable(false)
		end
		self.activeController = nil
		self.activeControlModule = nil
	else
		if not self.controllers[controlModule] then
			self.controllers[controlModule] = controlModule.new(CONTROL_ACTION_PRIORITY)
		end

		if self.activeController ~= self.controllers[controlModule] then
			if self.activeController then
				self.activeController:Enable(false)
			end
			self.activeController = self.controllers[controlModule]
			self.activeControlModule = controlModule -- Only used to check if controller switch is necessary

			if self.touchControlFrame and (self.activeControlModule == ClickToMove
						or self.activeControlModule == TouchThumbstick
						or self.activeControlModule == DynamicThumbstick) then
				if not self.controllers[TouchJump] then
					self.controllers[TouchJump] = TouchJump.new()
				end
				self.touchJumpController = self.controllers[TouchJump]
				self.touchJumpController:Enable(true, self.touchControlFrame)
			else
				if self.touchJumpController then
					self.touchJumpController:Enable(false)
				end
			end

			self:EnableActiveControlModule()
		end
	end
end

function ControlModule:OnLastInputTypeChanged(newLastInputType)
	if lastInputType == newLastInputType then
		warn("LastInputType Change listener called with current type.")
	end
	lastInputType = newLastInputType

	if lastInputType == Enum.UserInputType.Touch then
		-- TODO: Check if touch module already active
		local touchModule, success = self:SelectTouchModule()
		if success then
			while not self.touchControlFrame do
				wait()
			end
			self:SwitchToController(touchModule)
		end
	elseif computerInputTypeToModuleMap[lastInputType] ~= nil then
		local computerModule = self:SelectComputerMovementModule()
		if computerModule then
			self:SwitchToController(computerModule)
		end
	end
end

-- Called when any relevant values of GameSettings or LocalPlayer change, forcing re-evalulation of
-- current control scheme
function ControlModule:OnComputerMovementModeChange()
	local controlModule, success =  self:SelectComputerMovementModule()
	if success then
		self:SwitchToController(controlModule)
	end
end

function ControlModule:OnTouchMovementModeChange()
	local touchModule, success = self:SelectTouchModule()
	if success then
		while not self.touchControlFrame do
			wait()
		end
		self:SwitchToController(touchModule)
	end
end

function ControlModule:CreateTouchGuiContainer()
	if self.touchGui then self.touchGui:Destroy() end

	-- Container for all touch device guis
	self.touchGui = Instance.new("ScreenGui")
	self.touchGui.Name = "TouchGui"
	self.touchGui.ResetOnSpawn = false
	self.touchGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	self.touchGui.Enabled = self.humanoid ~= nil

	self.touchControlFrame = Instance.new("Frame")
	self.touchControlFrame.Name = "TouchControlFrame"
	self.touchControlFrame.Size = UDim2.new(1, 0, 1, 0)
	self.touchControlFrame.BackgroundTransparency = 1
	self.touchControlFrame.Parent = self.touchGui

	self.touchGui.Parent = self.playerGui
end

function ControlModule:GetClickToMoveController()
	if not self.controllers[ClickToMove] then
		self.controllers[ClickToMove] = ClickToMove.new(CONTROL_ACTION_PRIORITY)
	end
	return self.controllers[ClickToMove]
end

return ControlModule.new()
