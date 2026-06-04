--!nonstrict
--[[
	ControlModule - This ModuleScript implements a singleton class to manage the
	selection, activation, and deactivation of the current character movement controller.

	Release notes:
		7/14/2025 - Use PreferredInput instead of LastInputType for enabling/disabling virtual thumbstick
		7/24/2025 - Use PreferredInput instead of TouchEnabled for setting movement modes, camera modes, and shift lock

]]--

local ControlModule = {}
ControlModule.__index = ControlModule

--[[ Roblox Services ]]--
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local GuiService = game:GetService("GuiService")
local Workspace = game:GetService("Workspace")
local StarterPlayer = game:GetService("StarterPlayer")
local UserGameSettings = UserSettings():GetService("UserGameSettings")
local VRService = game:GetService("VRService")
local ContextActionService = game:GetService("ContextActionService")

-- Roblox User Input Control Modules - each returns a new() constructor function used to create controllers as needed
local CommonUtils = require(script.Parent:WaitForChild("CommonUtils"))
local FlagUtil = CommonUtils.get("FlagUtil")
local FFlagUserPlayerScriptsCCLIntegrationB = FlagUtil.getUserFlag("UserPlayerScriptsCCLIntegrationB")
local FFlagUserPSSpecifySimulationFrequency = FlagUtil.getUserFlag("UserPSSpecifySimulationFrequency")
local FFlagUserPSFixTouchInitialization = FlagUtil.getUserFlag("UserPSFixTouchInitialization")
local FFlagUserPlayerScriptsBindActivateOnIAS = FlagUtil.getUserFlag("UserPlayerScriptsBindActivateOnIAS")
local CONNECTIONS = {
	SERVER_AUTHORITY_CHANGED = "SERVER_AUTHORITY_CHANGED",
}

local ActionController = require(script:WaitForChild("ActionController"))
local InputReplication = if FFlagUserPlayerScriptsCCLIntegrationB then require(script:WaitForChild("InputReplication")) else nil
local DynamicThumbstick
if RunService:IsClient() then
	DynamicThumbstick = require(script:WaitForChild("DynamicThumbstick"))
end

local ClassicThumbstick = require(script:WaitForChild("ClassicThumbstick"))

-- These controllers handle only walk/run movement, jumping is handled by the
-- TouchJump controller if any of these are active
local ClickToMove = require(script:WaitForChild("ClickToMoveController"))
local TouchJump = require(script:WaitForChild("TouchJump"))

local VehicleController = require(script:WaitForChild("VehicleController"))
local AvatarAbilitiesInterface
local avatarAbilitiesInterface
if FFlagUserPlayerScriptsCCLIntegrationB then
	AvatarAbilitiesInterface = require(script:WaitForChild("AvatarAbilitiesInterface"))
	avatarAbilitiesInterface = AvatarAbilitiesInterface.get(Players.LocalPlayer)
end

local inputContexts = script.Parent:WaitForChild("InputContexts")
local cameraContext = inputContexts:WaitForChild("CameraContext") :: InputContext
local cameraRotationAction = cameraContext:WaitForChild("CameraRotationAction") :: InputAction

local CONTROL_ACTION_PRIORITY = Enum.ContextActionPriority.Medium.Value
local NECK_OFFSET = -0.7
local FIRST_PERSON_THRESHOLD_DISTANCE = 5

-- Mapping from movement mode enum values to control modules to avoid huge if elseif switching
local movementEnumToModuleMap = {
	[Enum.TouchMovementMode.DPad] = DynamicThumbstick,
	[Enum.DevTouchMovementMode.DPad] = DynamicThumbstick,
	[Enum.TouchMovementMode.Thumbpad] = DynamicThumbstick,
	[Enum.DevTouchMovementMode.Thumbpad] = DynamicThumbstick,
	[Enum.TouchMovementMode.Thumbstick] = ClassicThumbstick,
	[Enum.DevTouchMovementMode.Thumbstick] = ClassicThumbstick,
	[Enum.TouchMovementMode.DynamicThumbstick] = DynamicThumbstick,
	[Enum.DevTouchMovementMode.DynamicThumbstick] = DynamicThumbstick,
	[Enum.TouchMovementMode.ClickToMove] = ClickToMove,
	[Enum.DevTouchMovementMode.ClickToMove] = ClickToMove,

	-- Current default
	[Enum.TouchMovementMode.Default] = DynamicThumbstick,

	[Enum.ComputerMovementMode.Default] = ActionController,
	[Enum.ComputerMovementMode.KeyboardMouse] = ActionController,
	[Enum.DevComputerMovementMode.KeyboardMouse] = ActionController,
	[Enum.DevComputerMovementMode.Scriptable] = nil,
	[Enum.ComputerMovementMode.ClickToMove] = ClickToMove,
	[Enum.DevComputerMovementMode.ClickToMove] = ClickToMove,
}

function ControlModule.new() -- TODO ControlModule should be static
	local self = setmetatable({},ControlModule)
	if RunService:IsServer() then
		-- ServerAuthority causes the server to require ControlModule
		return self
	end

	-- The Modules above are used to construct controller instances as-needed, and this
	-- table is a map from Module to the instance created from it
	self.controllers = {}

	self.activeControlModule = nil	-- Used to prevent unnecessarily expensive checks on each input event
	self.activeController = nil
	self.touchJumpController = nil
	self.moveFunction = Players.LocalPlayer.Move
	self.humanoid = nil
	self.controlsEnabled = true

	-- For Roblox self.vehicleController
	self.humanoidSeatedConn = nil
	self.vehicleController = nil

	self.touchControlFrame = nil
	self.currentTorsoAngle = 0

	self.inputMoveVector = Vector3.new(0,0,0)

	self.vehicleController = VehicleController.new()

	Players.LocalPlayer.CharacterAdded:Connect(function(char) self:OnCharacterAdded(char) end)
	Players.LocalPlayer.CharacterRemoving:Connect(function(char) self:OnCharacterRemoving(char) end)
	if Players.LocalPlayer.Character then
		self:OnCharacterAdded(Players.LocalPlayer.Character)
	end

	UserGameSettings:GetPropertyChangedSignal("TouchMovementMode"):Connect(function()
		self:UpdateMovementMode()
	end)
	Players.LocalPlayer:GetPropertyChangedSignal("DevTouchMovementMode"):Connect(function()
		self:UpdateMovementMode()
	end)

	UserGameSettings:GetPropertyChangedSignal("ComputerMovementMode"):Connect(function()
		self:UpdateMovementMode()
	end)
	Players.LocalPlayer:GetPropertyChangedSignal("DevComputerMovementMode"):Connect(function()
		self:UpdateMovementMode()
	end)

	--[[ Touch Device UI ]]--
	self.playerGui = nil
	self.touchGui = nil
	self.playerGuiAddedConn = nil

	GuiService:GetPropertyChangedSignal("TouchControlsEnabled"):Connect(function()
		self:UpdateMovementMode()
		self:UpdateActiveControlModuleEnabled()
	end)

	UserInputService:GetPropertyChangedSignal("PreferredInput"):Connect(function()
		self:UpdateMovementMode()
	end)

	self.playerGui = Players.LocalPlayer:FindFirstChildOfClass("PlayerGui")
	if not self.playerGui then
		self.playerGuiAddedConn = Players.LocalPlayer.ChildAdded:Connect(function(child)
			if child:IsA("PlayerGui") then
				self.playerGui = child
				self.playerGuiAddedConn:Disconnect()
				self.playerGuiAddedConn = nil
				self:UpdateMovementMode()
			end
		end)
	end

	if not FFlagUserPSFixTouchInitialization then
		self:UpdateMovementMode()
	end

	if FFlagUserPlayerScriptsBindActivateOnIAS then
		ContextActionService:BindActivate(Enum.UserInputType.Gamepad1, Enum.KeyCode.ButtonR2)
	end

	return self
end

-- remove with FFlagUserPlayerScriptsCCLIntegrationB
local function _fireCustomInputs(player:Player)
	local input = player:FindFirstChild("InputContexts")
	if input == nil then
		return
	end

	local characterContext = input:FindFirstChild("CharacterContext")
	if characterContext == nil then
		return
	end

	local cameraContext = input:FindFirstChild("CameraContext")

	local cameraAction = cameraContext and cameraContext:FindFirstChild("CameraAction")
	if cameraAction then
		local camera = Workspace.CurrentCamera
		cameraAction:Fire(camera.CFrame.LookVector)
	end

	local rotationAction = characterContext.RotationAction
	if rotationAction then
		rotationAction:Fire(UserGameSettings.RotationType == Enum.RotationType.CameraRelative)
	end
end

-- remove with FFlagUserPlayerScriptsCCLIntegrationB
local function _cloneInputs(player:Player)
	local newInput = StarterPlayer.PlayerModule.InputContexts:Clone()
	newInput.CharacterContext.Enabled = true
	newInput.CameraContext.Enabled = true
	newInput.Parent = player
end

function ControlModule:InitializeServerAuthority()
	if RunService:IsServer() then
		-- Server Creates Inputs
		if FFlagUserPlayerScriptsCCLIntegrationB then
			for _, player in Players:GetPlayers() do
				InputReplication.CloneInputsIfAbsent(player)
			end
			Players.PlayerAdded:Connect(InputReplication.CloneInputsIfAbsent)
		else
			for _, player in Players:GetPlayers() do
				_cloneInputs(player)
			end
			Players.PlayerAdded:Connect(_cloneInputs)
		end
		-- Server processes all input
		if (FFlagUserPSSpecifySimulationFrequency) then
			RunService:BindToSimulation(function(dt)
				for _, player in Players:GetPlayers() do
					self:ProcessInputs(player, dt)
				end
			end, Enum.StepFrequency.Hz60)
		else
			RunService:BindToSimulation(function(dt)
				for _, player in Players:GetPlayers() do
					self:ProcessInputs(player, dt)
				end
			end)		
		end
	else
		-- Fire Custom Inputs
		RunService:BindToRenderStep("CameraInput", Enum.RenderPriority.Last.Value, function()
			if FFlagUserPlayerScriptsCCLIntegrationB then
				InputReplication.FireCustomInputs(Players.LocalPlayer)
			else
				_fireCustomInputs(Players.LocalPlayer)
			end
		end)
		-- Client processes local player input only
		if (FFlagUserPSSpecifySimulationFrequency) then
			RunService:BindToSimulation(function(dt)
				self:ProcessInputs(Players.LocalPlayer, dt)
			end, Enum.StepFrequency.Hz60)
		else
			RunService:BindToSimulation(function(dt)
				self:ProcessInputs(Players.LocalPlayer, dt)
			end)
		end
	end

	if self.data and self.data.eventBus then
		self.data.isServerAuthority = true
		self.data.eventBus:publish(CONNECTIONS.SERVER_AUTHORITY_CHANGED, true)
	end
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
		self.currentTorsoAngle = headAngle
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
			if not FFlagUserPlayerScriptsCCLIntegrationB or not avatarAbilitiesInterface:isEnabled() then
				self.moveFunction(Players.LocalPlayer, Vector3.new(0,0,0), true)
			end
		end
	end

	local enable = function()
		if self.touchControlFrame and (UserInputService.PreferredInput == Enum.PreferredInput.Touch)
			and (
				self.activeControlModule == ClickToMove
				or self.activeControlModule == ClassicThumbstick
				or self.activeControlModule == DynamicThumbstick
			)
		then
			if not self.controllers[TouchJump] then
				self.controllers[TouchJump] = TouchJump.new(self.data, self.playerData)
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
	if not GuiService.TouchControlsEnabled and (UserInputService.PreferredInput == Enum.PreferredInput.Touch) and
		(self.activeControlModule == ClickToMove or self.activeControlModule == ClassicThumbstick or
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
	if self.controlsEnabled == enable then return end
	self.controlsEnabled = enable

	if not self.activeController then
		return
	end

	self:UpdateActiveControlModuleEnabled()
end

-- For those who prefer distinct functions
function ControlModule:Disable()
	self:Enable(false)
end


-- Returns module (possibly nil) and success code to differentiate returning nil due to error vs Scriptable
function ControlModule:SelectComputerMovementModule(): ({}?, boolean)
	if not (UserInputService.PreferredInput == Enum.PreferredInput.KeyboardAndMouse or UserInputService.PreferredInput == Enum.PreferredInput.Gamepad) then
		return nil, false
	end

	local computerModule = ActionController
	local DevMovementMode = Players.LocalPlayer.DevComputerMovementMode

	if DevMovementMode == Enum.DevComputerMovementMode.UserChoice then
		if UserGameSettings.ComputerMovementMode == Enum.ComputerMovementMode.ClickToMove then -- TODO: Click to move needs some work still
			-- User has ClickToMove set in Settings, prefer ClickToMove controller when using keyboard and mouse
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

function ControlModule:calculateRawMoveVector(humanoid: Humanoid, cameraRelativeMoveVector: Vector3): Vector3
	local camera = Workspace.CurrentCamera
	if not camera then
		return cameraRelativeMoveVector
	end
	local cameraCFrame = camera.CFrame

	if VRService.VREnabled and humanoid.RootPart then
		local vrFrame = self:GetEstimatedVRTorsoFrame()

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

			local pitch = 0
			if cameraRotationAction and cameraRotationAction.Enabled then
				pitch = -cameraRotationAction:GetState().Y / 2.31
			end
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

-- This function should be used to set up necessary connections. DO NOT STORE STATE
function ControlModule:initialize(data, playerData)
	self.data = data
	self.playerData = playerData -- DO NOT DO THIS, THIS IS A CONVERSION STEP. MODULES SHOULD NOT SAVE STATE

	if FFlagUserPSFixTouchInitialization then
		self:UpdateMovementMode()
	end
	ActionController.initializeActions(self.data, self.playerData)
	if FFlagUserPlayerScriptsCCLIntegrationB then
		ActionController.setupSlotActions(self.data, self.playerData)
	end
end

function ControlModule:Update(data, playerData, dt)
	assert(playerData.player)
	assert(playerData.character)

	-- We may need to wait for actions to come from the server so we initialize again
	ActionController.initializeActions(data, playerData)
	if not playerData.actions["MoveAction"] or not playerData.actions["JumpAction"] then
		return
	end

	if self.activeController and self.activeController.enabled and self.humanoid then
		ActionController.update(playerData)
		
		local clickToMoveController = self:GetClickToMoveController()
		clickToMoveController:Update(playerData, dt)

		-- Now retrieve info from the controller
		local moveVector = Vector3.new(playerData.moveVector.X, 0, -playerData.moveVector.Y)

		-- Are we driving a vehicle ?
		local vehicleConsumedInput = false
		if self.vehicleController then
			moveVector, vehicleConsumedInput = self.vehicleController:Update(moveVector, true)
		end

		-- If not, move the player
		-- Verification of vehicleConsumedInput is commented out to preserve legacy behavior,
		-- in case some game relies on Humanoid.MoveDirection still being set while in a VehicleSeat
		--if not vehicleConsumedInput then
		moveVector = self:calculateRawMoveVector(self.humanoid, moveVector)

		self.inputMoveVector = moveVector
		if VRService.VREnabled then
			moveVector = self:updateVRMoveVector(moveVector)
		end

		if not FFlagUserPlayerScriptsCCLIntegrationB or not avatarAbilitiesInterface:isEnabled() then
			self.moveFunction(Players.LocalPlayer, moveVector, false)
			-- And make them jump if needed
			self.humanoid.Jump = playerData.isJumping
		end
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
				self.vehicleController = self.vehicleController.new()
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

	if self.humanoidSeatedConn then
		self.humanoidSeatedConn:Disconnect()
		self.humanoidSeatedConn = nil
	end
	self.humanoidSeatedConn = self.humanoid.Seated:Connect(function(active, currentSeatPart)
		self:OnHumanoidSeated(active, currentSeatPart)
	end)

	self:UpdateMovementMode()
end

function ControlModule:OnCharacterRemoving(char)
	self.humanoid = nil

	self:UpdateMovementMode()
end

function ControlModule:UpdateTouchGuiVisibility()
	local doShow = self.humanoid and GuiService.TouchControlsEnabled and UserInputService.PreferredInput == Enum.PreferredInput.Touch
	if doShow and not self.touchGui then
		-- lazy load the UI
		self:CreateTouchGuiContainer()
	end

	if self.touchGui then
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
		self.controllers[controlModule] = controlModule.new(self.playerData)
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

--[[
When any of the following values change, we need to recalculate which movement mode should be active and switch to it, as well as create the touch GUI if appropriate:
		PreferredInput
		TouchMovementMode
		ComputerMovementMode
		DevTouchMovementMode
		DevComputerMovementMode
		TouchControlsEnabled
		self.playerGui			- the touch gui is attached here
		self.humanoid			- this affects if the touch gui is enabled
]]--
function ControlModule:UpdateMovementMode()
	self:UpdateTouchGuiVisibility()

	if UserInputService.PreferredInput == Enum.PreferredInput.Touch then
		local touchModule, success = self:SelectTouchModule()
		if success then
			if self.touchControlFrame then
				self:SwitchToController(touchModule)
			end
		end
	else
		local computerModule = self:SelectComputerMovementModule()
		self:SwitchToController(computerModule)
	end
end

function ControlModule:CreateTouchGuiContainer()
	if not self.playerGui then
		return
	end

	if self.touchGui then self.touchGui:Destroy() end

	-- Container for all touch device guis
	self.touchGui = Instance.new("ScreenGui")
	self.touchGui.Name = "TouchGui"
	self.touchGui.ResetOnSpawn = false
	self.touchGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	self.touchGui.ClipToDeviceSafeArea = false

	self.touchControlFrame = Instance.new("Frame")
	self.touchControlFrame.Name = "TouchControlFrame"
	self.touchControlFrame.Size = UDim2.new(1, 0, 1, 0)
	self.touchControlFrame.BackgroundTransparency = 1
	self.touchControlFrame.Parent = self.touchGui

	self.touchGui.Parent = self.playerGui
end

function ControlModule:GetClickToMoveController()
	if not self.controllers[ClickToMove] then
		self.controllers[ClickToMove] = ClickToMove.new()
	end
	return self.controllers[ClickToMove]
end

function ControlModule:ProcessInputs(player:Player, dt:number)

	if FFlagUserPlayerScriptsCCLIntegrationB then
		local thisAvatarAbilitiesInterface = AvatarAbilitiesInterface.get(player)
		-- when CCL is enabled, server inputs are instead sent to the character through SendInputToCCLCharacter
		if not thisAvatarAbilitiesInterface:isEnabled() then
			InputReplication.SendInputToHumanoidForServerAuth(player)
		end
	else
		local character = player.Character
		if character == nil then
			return
		end
		local humanoid = character:FindFirstChild("Humanoid")
		if humanoid == nil then
			return
		end
		local input = player:FindFirstChild("InputContexts")
		if input == nil then
			return
		end
		local characterContext = input:FindFirstChild("CharacterContext")
		if characterContext == nil then
			return
		end

		local cameraContext = input:FindFirstChild("CameraContext")

		local moveAction = characterContext.MoveAction
		local cameraAction = cameraContext and cameraContext.CameraAction
		local rotationAction = characterContext.RotationAction
		local jumpAction = characterContext.JumpAction

		local function isValidInput2D(vector2:Vector2):boolean
			return not (
				vector2.X ~= vector2.X or
				vector2.Y ~= vector2.Y or
				vector2.X == math.huge or
				vector2.Y == math.huge)
		end

		local function isValidInput3D(vector3:Vector3):boolean
			return not (
				vector3.X ~= vector3.X or
				vector3.Y ~= vector3.Y or
				vector3.Z ~= vector3.Z or
				vector3.X == math.huge or
				vector3.Y == math.huge or 
				vector3.Z == math.huge)
		end

		local moveVector2D = if moveAction ~= nil then moveAction:GetState() else Vector2.new(0.0, 0.0)
		local cameraVector3D = if cameraAction ~= nil then cameraAction:GetState() else Vector3.new(0.0, 0.0)

		if isValidInput2D(moveVector2D) and isValidInput3D(cameraVector3D) and cameraVector3D.Magnitude > 0.0 then
			if humanoid:GetState() ~= Enum.HumanoidStateType.Swimming then
				cameraVector3D = Vector3.new(cameraVector3D.X, 0.0, cameraVector3D.Z).Unit
			end

			local rightVector = cameraVector3D:Cross(Vector3.yAxis).Unit

			local moveVector = cameraVector3D * moveVector2D.Y + rightVector * moveVector2D.X
			humanoid:Move(moveVector)

			local rotationIsCameraRelative = rotationAction:GetState()
			if rotationIsCameraRelative then
				humanoid.AutoRotate = false
				if humanoid.SeatPart == nil and humanoid.RootPart ~= nil and not humanoid.Sit and not humanoid.RootPart:IsGrounded() then
					humanoid.RootPart.CFrame = CFrame.new(
						humanoid.RootPart.CFrame.Position,
						humanoid.RootPart.CFrame.Position + cameraVector3D
					)
				end
			else
				humanoid.AutoRotate = true
			end
		end

		local jumpBool = if jumpAction ~= nil then jumpAction:GetState() else false
		humanoid.Jump = jumpBool
	end
end

if RunService:IsClient() then
	return ControlModule.new()
else
	return ControlModule
end
