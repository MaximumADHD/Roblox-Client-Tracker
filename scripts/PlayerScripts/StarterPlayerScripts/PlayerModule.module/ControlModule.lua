--!nonstrict
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
local GuiService = game:GetService("GuiService")
local Workspace = game:GetService("Workspace")
local UserGameSettings = UserSettings():GetService("UserGameSettings")
local VRService = game:GetService("VRService")

-- Roblox User Input Control Modules - each returns a new() constructor function used to create controllers as needed
local CommonUtils = script.Parent:WaitForChild("CommonUtils")

local Keyboard = require(script:WaitForChild("Keyboard"))
local Gamepad = require(script:WaitForChild("Gamepad"))
local DynamicThumbstick = require(script:WaitForChild("DynamicThumbstick"))

local FFlagUserDynamicThumbstickSafeAreaUpdate do
	local success, result = pcall(function()
		return UserSettings():IsUserFeatureEnabled("UserDynamicThumbstickSafeAreaUpdate")
	end)
	FFlagUserDynamicThumbstickSafeAreaUpdate = success and result
end

local TouchThumbstick = require(script:WaitForChild("TouchThumbstick"))

-- These controllers handle only walk/run movement, jumping is handled by the
-- TouchJump controller if any of these are active
local ClickToMove = require(script:WaitForChild("ClickToMoveController"))
local TouchJump = require(script:WaitForChild("TouchJump"))

local VehicleController = require(script:WaitForChild("VehicleController"))

local CONTROL_ACTION_PRIORITY = Enum.ContextActionPriority.Medium.Value
local NECK_OFFSET = -0.7
local FIRST_PERSON_THRESHOLD_DISTANCE = 5

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
	self.controlsEnabled = true

	-- For Roblox self.vehicleController
	self.humanoidSeatedConn = nil
	self.vehicleController = nil

	self.touchControlFrame = nil
	self.currentTorsoAngle = 0

	self.inputMoveVector = Vector3.new(0,0,0)

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

	GuiService:GetPropertyChangedSignal("TouchControlsEnabled"):Connect(function()
		self:UpdateTouchGuiVisibility()
		self:UpdateActiveControlModuleEnabled()
	end)

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
-- and then call GetMoveVector on it. When there is no active controller, this function returns the
-- zero vector
function ControlModule:GetMoveVector(): Vector3
	if self.activeController then
		return self.activeController:GetMoveVector()
	end
	return Vector3.new(0,0,0)
end

local function NormalizeAngle(angle): number
	angle = (angle + math.pi*4) % (math.pi*2)
	if angle > math.pi then
		angle = angle - math.pi*2
	end
	return angle
end

local function AverageAngle(angleA, angleB): number
	local difference = NormalizeAngle(angleB - angleA)
	return NormalizeAngle(angleA + difference/2)
end

function ControlModule:GetEstimatedVRTorsoFrame(): CFrame
	local headFrame = VRService:GetUserCFrame(Enum.UserCFrame.Head)
	local _, headAngle, _ = headFrame:ToEulerAnglesYXZ()
	headAngle = -headAngle
	if not VRService:GetUserCFrameEnabled(Enum.UserCFrame.RightHand) or 
		not VRService:GetUserCFrameEnabled(Enum.UserCFrame.LeftHand) then
		self.currentTorsoAngle = headAngle;
	else	
		local leftHandPos = VRService:GetUserCFrame(Enum.UserCFrame.LeftHand)
		local rightHandPos = VRService:GetUserCFrame(Enum.UserCFrame.RightHand)

		local leftHandToHead = headFrame.Position - leftHandPos.Position
		local rightHandToHead = headFrame.Position - rightHandPos.Position
		local leftHandAngle = -math.atan2(leftHandToHead.X, leftHandToHead.Z)
		local rightHandAngle = -math.atan2(rightHandToHead.X, rightHandToHead.Z)
		local averageHandAngle = AverageAngle(leftHandAngle, rightHandAngle)

		local headAngleRelativeToCurrentAngle = NormalizeAngle(headAngle - self.currentTorsoAngle)
		local averageHandAngleRelativeToCurrentAngle = NormalizeAngle(averageHandAngle - self.currentTorsoAngle)

		local averageHandAngleValid =
			averageHandAngleRelativeToCurrentAngle > -math.pi/2 and
			averageHandAngleRelativeToCurrentAngle < math.pi/2
		
		if not averageHandAngleValid then
			averageHandAngleRelativeToCurrentAngle = headAngleRelativeToCurrentAngle
		end
		
		local minimumValidAngle = math.min(averageHandAngleRelativeToCurrentAngle, headAngleRelativeToCurrentAngle)
		local maximumValidAngle = math.max(averageHandAngleRelativeToCurrentAngle, headAngleRelativeToCurrentAngle)

		local relativeAngleToUse = 0
		if minimumValidAngle > 0 then
			relativeAngleToUse = minimumValidAngle
		elseif maximumValidAngle < 0 then
			relativeAngleToUse = maximumValidAngle
		end

		self.currentTorsoAngle = relativeAngleToUse + self.currentTorsoAngle
	end

	return CFrame.new(headFrame.Position) * CFrame.fromEulerAnglesYXZ(0, -self.currentTorsoAngle, 0)
end

function ControlModule:GetActiveController()
	return self.activeController
end

-- Checks for conditions for enabling/disabling the active controller and updates whether the active controller is enabled/disabled
function ControlModule:UpdateActiveControlModuleEnabled()
	-- helpers for disable/enable
	local disable = function()
		self.activeController:Enable(false)
		if self.touchJumpController then 
			self.touchJumpController:Enable(false)
		end

		if self.moveFunction then
			self.moveFunction(Players.LocalPlayer, Vector3.new(0,0,0), true)
		end
	end

	local enable = function()
		if
			self.touchControlFrame
			and (
				self.activeControlModule == ClickToMove
				or self.activeControlModule == TouchThumbstick
				or self.activeControlModule == DynamicThumbstick
			)
		then
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

	-- there is no active controller
	if not self.activeController then
		return
	end

	-- developer called ControlModule:Disable(), don't turn back on
	if not self.controlsEnabled then
		disable()
		return
	end

	-- GuiService.TouchControlsEnabled == false and the active controller is a touch controller,
	-- disable controls
	if not GuiService.TouchControlsEnabled and UserInputService.TouchEnabled and
		(self.activeControlModule == ClickToMove or self.activeControlModule == TouchThumbstick or
			self.activeControlModule == DynamicThumbstick) then
		disable()
		return
	end

	-- no settings prevent enabling controls
	enable()
end

function ControlModule:Enable(enable: boolean?)
	if enable == nil then
		enable = true
	end
	self.controlsEnabled = enable

	if not self.activeController then
		return
	end

	self:UpdateActiveControlModuleEnabled()
end

-- For those who prefer distinct functions
function ControlModule:Disable()
	self.controlsEnabled = false

	self:UpdateActiveControlModuleEnabled()
end


-- Returns module (possibly nil) and success code to differentiate returning nil due to error vs Scriptable
function ControlModule:SelectComputerMovementModule(): ({}?, boolean)
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
function ControlModule:SelectTouchModule(): ({}?, boolean)
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

local function getGamepadRightThumbstickPosition(): Vector3
	local state = UserInputService:GetGamepadState(Enum.UserInputType.Gamepad1)
	for _, input in pairs(state) do
		if input.KeyCode == Enum.KeyCode.Thumbstick2 then
			return input.Position
		end
	end
	return Vector3.new(0,0,0)
end

function ControlModule:calculateRawMoveVector(humanoid: Humanoid, cameraRelativeMoveVector: Vector3): Vector3
	local camera = Workspace.CurrentCamera
	if not camera then
		return cameraRelativeMoveVector
	end
	local cameraCFrame = camera.CFrame

	if VRService.VREnabled and humanoid.RootPart then
		local vrFrame = VRService:GetUserCFrame(Enum.UserCFrame.Head)
		
		vrFrame = self:GetEstimatedVRTorsoFrame()
					
		-- movement relative to VR frustum
		local cameraDelta = camera.Focus.Position - cameraCFrame.Position
		if cameraDelta.Magnitude < 3 then -- "nearly" first person
			cameraCFrame = cameraCFrame * vrFrame
		else
			cameraCFrame = camera.CFrame * (vrFrame.Rotation + vrFrame.Position * camera.HeadScale)
		end
	end

	if humanoid:GetState() == Enum.HumanoidStateType.Swimming then	
		if VRService.VREnabled then
			cameraRelativeMoveVector = Vector3.new(cameraRelativeMoveVector.X, 0, cameraRelativeMoveVector.Z)
			if cameraRelativeMoveVector.Magnitude < 0.01 then
				return Vector3.zero
			end

			local pitch = -getGamepadRightThumbstickPosition().Y * math.rad(80)
			local yawAngle = math.atan2(-cameraRelativeMoveVector.X, -cameraRelativeMoveVector.Z)
			local _, cameraYaw, _ = cameraCFrame:ToEulerAnglesYXZ()
			yawAngle += cameraYaw
			local movementCFrame = CFrame.fromEulerAnglesYXZ(pitch, yawAngle, 0)
			return movementCFrame.LookVector
		else
			return cameraCFrame:VectorToWorldSpace(cameraRelativeMoveVector)
		end
	end

	local c, s
	local _, _, _, R00, R01, R02, _, _, R12, _, _, R22 = cameraCFrame:GetComponents()
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
		(c*cameraRelativeMoveVector.X + s*cameraRelativeMoveVector.Z)/norm,
		0,
		(c*cameraRelativeMoveVector.Z - s*cameraRelativeMoveVector.X)/norm
	)
end

function ControlModule:OnRenderStepped(dt)
	if self.activeController and self.activeController.enabled and self.humanoid then

		-- Now retrieve info from the controller
		local moveVector = self.activeController:GetMoveVector()
		local cameraRelative = self.activeController:IsMoveVectorCameraRelative()

		local clickToMoveController = self:GetClickToMoveController()
		if self.activeController == clickToMoveController then
			clickToMoveController:OnRenderStepped(dt)
		else
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
			moveVector = self:calculateRawMoveVector(self.humanoid, moveVector)
		end

		self.inputMoveVector = moveVector
		if VRService.VREnabled then
			moveVector = self:updateVRMoveVector(moveVector)
		end

		self.moveFunction(Players.LocalPlayer, moveVector, false)
		--end

		-- And make them jump if needed
		self.humanoid.Jump = self.activeController:GetIsJumping() or (self.touchJumpController and self.touchJumpController:GetIsJumping())
	end
end

function ControlModule:updateVRMoveVector(moveVector)
	local curCamera = workspace.CurrentCamera :: Camera

	-- movement relative to VR frustum
	local cameraDelta = curCamera.Focus.Position - curCamera.CFrame	.Position
	local firstPerson = cameraDelta.Magnitude < FIRST_PERSON_THRESHOLD_DISTANCE and true
	
	-- if the player is not moving via input in first person, follow the VRHead
	if moveVector.Magnitude == 0 and firstPerson and VRService.AvatarGestures and self.humanoid 
		and not self.humanoid.Sit then

		local vrHeadOffset = VRService:GetUserCFrame(Enum.UserCFrame.Head)
		vrHeadOffset = vrHeadOffset.Rotation + vrHeadOffset.Position * curCamera.HeadScale

		-- get the position in world space and offset at the neck
		local neck_offset = NECK_OFFSET * self.humanoid.RootPart.Size.Y / 2
		local vrHeadWorld = curCamera.CFrame * vrHeadOffset * CFrame.new(0, neck_offset, 0)
		
		local moveOffset = vrHeadWorld.Position - self.humanoid.RootPart.CFrame.Position
		return Vector3.new(moveOffset.x, 0, moveOffset.z)
	end

	return moveVector
end

function ControlModule:OnHumanoidSeated(active: boolean, currentSeatPart: BasePart)
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

	self:UpdateTouchGuiVisibility()

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

	self:UpdateTouchGuiVisibility()
end

function ControlModule:UpdateTouchGuiVisibility()
	if self.touchGui then
		local doShow = self.humanoid and GuiService.TouchControlsEnabled
		self.touchGui.Enabled = not not doShow -- convert to bool
	end
end

-- Helper function to lazily instantiate a controller if it does not yet exist,
-- disable the active controller if it is different from the on being switched to,
-- and then enable the requested controller. The argument to this function must be
-- a reference to one of the control modules, i.e. Keyboard, Gamepad, etc.

-- This function should handle all controller enabling and disabling without relying on
-- ControlModule:Enable() and Disable()
function ControlModule:SwitchToController(controlModule)
	-- controlModule is invalid, just disable current controller
	if not controlModule then
		if self.activeController then
			self.activeController:Enable(false)
		end
		self.activeController = nil
		self.activeControlModule = nil
		return
	end

	-- first time switching to this control module, should instantiate it
	if not self.controllers[controlModule] then
		self.controllers[controlModule] = controlModule.new(CONTROL_ACTION_PRIORITY)
	end

	-- switch to the new controlModule
	if self.activeController ~= self.controllers[controlModule] then
		if self.activeController then
			self.activeController:Enable(false)
		end
		self.activeController = self.controllers[controlModule]
		self.activeControlModule = controlModule -- Only used to check if controller switch is necessary

		self:UpdateActiveControlModuleEnabled()
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

	self:UpdateTouchGuiVisibility()
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
	self:UpdateTouchGuiVisibility()

	if FFlagUserDynamicThumbstickSafeAreaUpdate then
		self.touchGui.ClipToDeviceSafeArea = false;
	end

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
