--[[
	BaseCamera - Abstract base class for camera control modules
	2018 Camera Update - AllYourBlox
--]]

--[[ Local Constants ]]--
local UNIT_Z = Vector3.new(0,0,1)
local X1_Y0_Z1 = Vector3.new(1,0,1)	--Note: not a unit vector, used for projecting onto XZ plane

local THUMBSTICK_DEADZONE = 0.2
local DEFAULT_DISTANCE = 12.5	-- Studs
local PORTRAIT_DEFAULT_DISTANCE = 25		-- Studs
local FIRST_PERSON_DISTANCE_THRESHOLD = 1.0 -- Below this value, snap into first person

-- Note: DotProduct check in CoordinateFrame::lookAt() prevents using values within about
-- 8.11 degrees of the +/- Y axis, that's why these limits are currently 80 degrees
local MIN_Y = math.rad(-80)
local MAX_Y = math.rad(80)

local VR_ANGLE = math.rad(15)
local VR_LOW_INTENSITY_ROTATION = Vector2.new(math.rad(15), 0)
local VR_HIGH_INTENSITY_ROTATION = Vector2.new(math.rad(45), 0)
local VR_LOW_INTENSITY_REPEAT = 0.1
local VR_HIGH_INTENSITY_REPEAT = 0.4

local ZERO_VECTOR2 = Vector2.new(0,0)
local ZERO_VECTOR3 = Vector3.new(0,0,0)

local TOUCH_SENSITIVTY = Vector2.new( 0.002 * math.pi, 0.0015 * math.pi)
local MOUSE_SENSITIVITY = Vector2.new( 0.002 * math.pi, 0.0015 * math.pi )

local MAX_TIME_FOR_DOUBLE_TAP = 1.5
local MAX_TAP_POS_DELTA = 15
local MAX_TAP_TIME_DELTA = 0.75

local SEAT_OFFSET = Vector3.new(0,5,0)
local VR_SEAT_OFFSET = Vector3.new(0,4,0)
local HEAD_OFFSET = Vector3.new(0,1.5,0)
local R15_HEAD_OFFSET = Vector3.new(0,2,0)

local Util = require(script.Parent:WaitForChild("CameraUtils"))

--[[ Roblox Services ]]--
local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local StarterGui = game:GetService("StarterGui")
local GuiService = game:GetService("GuiService")
local ContextActionService = game:GetService("ContextActionService")
local VRService = game:GetService("VRService")
local UserGameSettings = UserSettings():GetService("UserGameSettings")

--[[ The Module ]]--
local BaseCamera = {}
BaseCamera.__index = BaseCamera

function BaseCamera.new()
	local self = setmetatable({}, BaseCamera)

	-- So that derived classes have access to this
	self.FIRST_PERSON_DISTANCE_THRESHOLD = FIRST_PERSON_DISTANCE_THRESHOLD

	self.cameraType = nil
	self.cameraMovementMode = nil

	local player = Players.LocalPlayer
	self.lastCameraTransform = nil
	self.rotateInput = ZERO_VECTOR2
	self.userPanningCamera = false
	self.lastUserPanCamera = tick()

	self.humanoidRootPart = nil
	self.humanoidCache = {}

	-- Subject and position on last update call
	self.lastSubject = nil
	self.lastSubjectPosition = Vector3.new(0,5,0)

	-- These subject distance members refer to the nominal camera-to-subject follow distance that the camera
	-- is trying to maintain, not the actual measured value.
	-- The default is updated when screen orientation or the min/max distances change,
	-- to be sure the default is always in range and appropriate for the orientation.
	self.defaultSubjectDistance = Util.Clamp(player.CameraMinZoomDistance, player.CameraMaxZoomDistance, DEFAULT_DISTANCE)
	self.currentSubjectDistance = Util.Clamp(player.CameraMinZoomDistance, player.CameraMaxZoomDistance, DEFAULT_DISTANCE)

	self.inFirstPerson = false
	self.inMouseLockedMode = false
	self.portraitMode = false

	self.enabled = false

	-- Input Event Connections
	self.inputBeganConn = nil
	self.inputChangedConn = nil
	self.inputEndedConn = nil

	self.startPos = nil
	self.lastPos = nil
	self.panBeginLook = nil

	self.panEnabled = true
	self.keyPanEnabled = true
	self.distanceChangeEnabled = true

	self.PlayerGui = nil

	self.cameraChangedConn = nil
	self.viewportSizeChangedConn = nil

	-- VR Support
	self.shouldUseVRRotation = false
	self.VRRotationIntensityAvailable = false
	self.lastVRRotationIntensityCheckTime = 0
	self.lastVRRotationTime = 0
	self.vrRotateKeyCooldown = {}
	self.cameraTranslationConstraints = Vector3.new(1, 1, 1)
	self.humanoidJumpOrigin = nil
	self.trackingHumanoid = nil
	self.cameraFrozen = false
	self.headHeightR15 = R15_HEAD_OFFSET
	self.heightScaleChangedConn = nil
	self.subjectStateChangedConn = nil
	self.humanoidChildAddedConn = nil
	self.humanoidChildRemovedConn = nil

	-- Gamepad support
	self.activeGamepad = nil
	self.gamepadPanningCamera = false
	self.lastThumbstickRotate = nil
	self.numOfSeconds = 0.7
	self.currentSpeed = 0
	self.maxSpeed = 6
	self.vrMaxSpeed = 4
	self.lastThumbstickPos = Vector2.new(0,0)
	self.ySensitivity = 0.65
	self.lastVelocity = nil
	self.gamepadConnectedConn = nil
	self.gamepadDisconnectedConn = nil
	self.currentZoomSpeed = 1.0
	self.L3ButtonDown = false
	self.dpadLeftDown = false
	self.dpadRightDown = false

	-- Touch input support
	self.isDynamicThumbstickEnabled = false
	self.fingerTouches = {}
	self.numUnsunkTouches = 0
	self.inputStartPositions = {}
	self.inputStartTimes = {}
	self.startingDiff = nil
	self.pinchBeginZoom = nil
	self.userPanningTheCamera = false
	self.touchActivateConn = nil

	-- Mouse locked formerly known as shift lock mode
	self.mouseLockOffset = ZERO_VECTOR3

	-- [[ NOTICE ]] --
	-- Initialization things used to always execute at game load time, but now these camera modules are instantiated
	-- when needed, so the code here may run well after the start of the game

	if player.Character then
		self:OnCharacterAdded(player.Character)
	end

	player.CharacterAdded:Connect(function(char)
		self:OnCharacterAdded(char)
	end)

	if self.cameraChangedConn then self.cameraChangedConn:Disconnect() end
	self.cameraChangedConn = workspace:GetPropertyChangedSignal("CurrentCamera"):Connect(function()
		self:OnCurrentCameraChanged()
	end)

	if self.playerCameraModeChangeConn then self.playerCameraModeChangeConn:Disconnect() end
	self.playerCameraModeChangeConn = player:GetPropertyChangedSignal("CameraMode"):Connect(function()
		self:OnPlayerCameraPropertyChange()
	end)

	if self.minDistanceChangeConn then self.minDistanceChangeConn:Disconnect() end
	self.minDistanceChangeConn = player:GetPropertyChangedSignal("CameraMinZoomDistance"):Connect(function()
		self:OnPlayerCameraPropertyChange()
	end)

	if self.maxDistanceChangeConn then self.maxDistanceChangeConn:Disconnect() end
	self.maxDistanceChangeConn = player:GetPropertyChangedSignal("CameraMaxZoomDistance"):Connect(function()
		self:OnPlayerCameraPropertyChange()
	end)

	if self.playerDevTouchMoveModeChangeConn then self.playerDevTouchMoveModeChangeConn:Disconnect() end
	self.playerDevTouchMoveModeChangeConn = player:GetPropertyChangedSignal("DevTouchMovementMode"):Connect(function()
		self:OnDevTouchMovementModeChanged()
	end)
	self:OnDevTouchMovementModeChanged() -- Init

	if self.gameSettingsTouchMoveMoveChangeConn then self.gameSettingsTouchMoveMoveChangeConn:Disconnect() end
	self.gameSettingsTouchMoveMoveChangeConn = UserGameSettings:GetPropertyChangedSignal("TouchMovementMode"):Connect(function()
		self:OnGameSettingsTouchMovementModeChanged()
	end)
	self:OnGameSettingsTouchMovementModeChanged() -- Init

	UserGameSettings:SetCameraYInvertVisible()
	UserGameSettings:SetGamepadCameraSensitivityVisible()

	self.hasGameLoaded = game:IsLoaded()
	if not self.hasGameLoaded then
		self.gameLoadedConn = game.Loaded:Connect(function()
			self.hasGameLoaded = true
			self.gameLoadedConn:Disconnect()
			self.gameLoadedConn = nil
		end)
	end

	return self
end

function BaseCamera:GetModuleName()
	return "BaseCamera"
end

function BaseCamera:OnCharacterAdded(char)
	if UserInputService.TouchEnabled then
		self.PlayerGui = Players.LocalPlayer:WaitForChild("PlayerGui")
		if self.PlayerGui then
			local screenGui = Instance.new("ScreenGui")
			screenGui.Parent = self.PlayerGui
		end
		for _, child in ipairs(char:GetChildren()) do
			if child:IsA("Tool") then
				self.isAToolEquipped = true
			end
		end
		char.ChildAdded:Connect(function(child)
			if child:IsA("Tool") then
				self.isAToolEquipped = true
			end
		end)
		char.ChildRemoved:Connect(function(child)
			if child:IsA("Tool") then
				self.isAToolEquipped = false
			end
		end)
	end
end

function BaseCamera:GetHumanoidRootPart()
	if not self.humanoidRootPart then
		local player = Players.LocalPlayer
		if player.Character then
			local humanoid = player.Character:FindFirstChildOfClass("Humanoid")
			if humanoid then
				self.humanoidRootPart = humanoid.RootPart
			end
		end
	end
	return self.humanoidRootPart
end

function BaseCamera:GetBodyPartToFollow(humanoid, isDead)
	-- If the humanoid is dead, prefer the head part if one still exists as a sibling of the humanoid
	if humanoid:GetState() == Enum.HumanoidStateType.Dead then
		local character = humanoid.Parent
		if character and character:IsA("Model") then
			return character:FindFirstChild("Head") or humanoid.RootPart
		end
	end

	return humanoid.RootPart
end

function BaseCamera:GetSubjectPosition()
	local result = self.lastSubjectPosition
	local camera = game.Workspace.CurrentCamera
	local cameraSubject = camera and camera.CameraSubject

	if cameraSubject then
		if cameraSubject:IsA("Humanoid") then
			local humanoid = cameraSubject
			local humanoidIsDead = humanoid:GetState() == Enum.HumanoidStateType.Dead

			if VRService.VREnabled and humanoidIsDead and humanoid == self.lastSubject then
				result = self.lastSubjectPosition
			else
				local bodyPartToFollow = humanoid.RootPart

				-- If the humanoid is dead, prefer their head part as a follow target, if it exists
				if humanoidIsDead then
					if humanoid.Parent and humanoid.Parent:IsA("Model") then
						bodyPartToFollow = humanoid.Parent:FindFirstChild("Head") or bodyPartToFollow
					end
				end

				if bodyPartToFollow and bodyPartToFollow:IsA("BasePart") then
					local heightOffset = humanoid.RigType == Enum.HumanoidRigType.R15 and R15_HEAD_OFFSET or HEAD_OFFSET
					if humanoidIsDead then
						heightOffset = ZERO_VECTOR3
					end

					result = bodyPartToFollow.CFrame.p + bodyPartToFollow.CFrame:vectorToWorldSpace(heightOffset + humanoid.CameraOffset)
				end
			end

		elseif cameraSubject:IsA("VehicleSeat") then
			local offset = SEAT_OFFSET
			if VRService.VREnabled then
				offset = VR_SEAT_OFFSET
			end
			result = cameraSubject.CFrame.p + cameraSubject.CFrame:vectorToWorldSpace(offset)
		elseif cameraSubject:IsA("SkateboardPlatform") then
			result = cameraSubject.CFrame.p + SEAT_OFFSET
		elseif cameraSubject:IsA("BasePart") then
			result = cameraSubject.CFrame.p
		elseif cameraSubject:IsA("Model") then
			if cameraSubject.PrimaryPart then
				result = cameraSubject:GetPrimaryPartCFrame().p
			else
				result = cameraSubject:GetModelCFrame().p
			end
		end
	else
		-- cameraSubject is nil
		-- Note: Previous RootCamera did not have this else case and let self.lastSubject and self.lastSubjectPosition
		-- both get set to nil in the case of cameraSubject being nil. This function now exits here to preserve the
		-- last set valid values for these, as nil values are not handled cases
		return
	end

	self.lastSubject = cameraSubject
	self.lastSubjectPosition = result

	return result
end

function BaseCamera:UpdateDefaultSubjectDistance()
	local player = Players.LocalPlayer
	if self.portraitMode then
		self.defaultSubjectDistance = Util.Clamp(player.CameraMinZoomDistance, player.CameraMaxZoomDistance, PORTRAIT_DEFAULT_DISTANCE)
	else
		self.defaultSubjectDistance = Util.Clamp(player.CameraMinZoomDistance, player.CameraMaxZoomDistance, DEFAULT_DISTANCE)
	end
end

function BaseCamera:OnViewportSizeChanged()
	local camera = game.Workspace.CurrentCamera
	local size = camera.ViewportSize
	self.portraitMode = size.X < size.Y
	self:UpdateDefaultSubjectDistance()
end

-- Listener for changes to workspace.CurrentCamera
function BaseCamera:OnCurrentCameraChanged()
	if UserInputService.TouchEnabled then
		if self.viewportSizeChangedConn then
			self.viewportSizeChangedConn:Disconnect()
			self.viewportSizeChangedConn = nil
		end

		local newCamera = game.Workspace.CurrentCamera

		if newCamera then
			self:OnViewportSizeChanged()
			self.viewportSizeChangedConn = newCamera:GetPropertyChangedSignal("ViewportSize"):Connect(function()
				self:OnViewportSizeChanged()
			end)
		end
	end

	-- VR support additions
	if self.cameraSubjectChangedConn then
		self.cameraSubjectChangedConn:Disconnect()
		self.cameraSubjectChangedConn = nil
	end

	local camera = game.Workspace.CurrentCamera
	if camera then
		self.cameraSubjectChangedConn = camera:GetPropertyChangedSignal("CameraSubject"):Connect(function()
			self:OnNewCameraSubject()
		end)
		self:OnNewCameraSubject()
	end
end

function BaseCamera:OnDynamicThumbstickEnabled()
	if UserInputService.TouchEnabled then
		self.isDynamicThumbstickEnabled = true
	end
end

function BaseCamera:OnDynamicThumbstickDisabled()
	self.isDynamicThumbstickEnabled = false
end

function BaseCamera:OnGameSettingsTouchMovementModeChanged()
	if Players.LocalPlayer.DevTouchMovementMode == Enum.DevTouchMovementMode.UserChoice then
		if UserGameSettings.TouchMovementMode.Name == "DynamicThumbstick" then
			self:OnDynamicThumbstickEnabled()
		else
			self:OnDynamicThumbstickDisabled()
		end
	end
end

function BaseCamera:OnDevTouchMovementModeChanged()
	if Players.LocalPlayer.DevTouchMovementMode.Name == "DynamicThumbstick" then
		self:OnDynamicThumbstickEnabled()
	else
		self:OnGameSettingsTouchMovementModeChanged()
	end
end

function BaseCamera:OnPlayerCameraPropertyChange()
	-- This call forces re-evaluation of player.CameraMode and clamping to min/max distance which may have changed
	self:SetCameraToSubjectDistance(self.currentSubjectDistance)
end

function BaseCamera:GetCameraHeight()
	if VRService.VREnabled and not self.inFirstPerson then
		return math.sin(VR_ANGLE) * self.currentSubjectDistance
	end
	return 0
end

function BaseCamera:InputTranslationToCameraAngleChange(translationVector, sensitivity)
	local camera = game.Workspace.CurrentCamera
	if camera and camera.ViewportSize.X > 0 and camera.ViewportSize.Y > 0 and (camera.ViewportSize.Y > camera.ViewportSize.X) then
		-- Screen has portrait orientation, swap X and Y sensitivity
		return translationVector * Vector2.new( sensitivity.Y, sensitivity.X)
	end
	return translationVector * sensitivity
end

function BaseCamera:Enable(enable)
	if self.enabled ~= enable then
		self.enabled = enable
		if self.enabled then
			self:ConnectInputEvents()

			if Players.LocalPlayer.CameraMode == Enum.CameraMode.LockFirstPerson then
				self.currentSubjectDistance = 0.5
				if not self.inFirstPerson then
					self:EnterFirstPerson()
				end
			end
		else
			self:DisconnectInputEvents()
			-- Clean up additional event listeners and reset a bunch of properties
			self:Cleanup()
		end
	end
end

function BaseCamera:GetEnabled()
	return self.enabled
end

function BaseCamera:OnInputBegan(input, processed)
	if input.UserInputType == Enum.UserInputType.Touch then
		self:OnTouchBegan(input, processed)
	elseif input.UserInputType == Enum.UserInputType.MouseButton2 then
		self:OnMouse2Down(input, processed)
	elseif input.UserInputType == Enum.UserInputType.MouseButton3 then
		self:OnMouse3Down(input, processed)
	end
	-- Keyboard
	if input.UserInputType == Enum.UserInputType.Keyboard then
		self:OnKeyDown(input, processed)
	end
end

function BaseCamera:OnInputChanged(input, processed)
	if input.UserInputType == Enum.UserInputType.Touch then
		self:OnTouchChanged(input, processed)
	elseif input.UserInputType == Enum.UserInputType.MouseMovement then
		self:OnMouseMoved(input, processed)
	elseif input.UserInputType == Enum.UserInputType.MouseWheel then
		self:OnMouseWheel(input, processed)
	end
end

function BaseCamera:OnInputEnded(input, processed)
	if input.UserInputType == Enum.UserInputType.Touch then
		self:OnTouchEnded(input, processed)
	elseif input.UserInputType == Enum.UserInputType.MouseButton2 then
		self:OnMouse2Up(input, processed)
	elseif input.UserInputType == Enum.UserInputType.MouseButton3 then
		self:OnMouse3Up(input, processed)
	end
	-- Keyboard
	if input.UserInputType == Enum.UserInputType.Keyboard then
		self:OnKeyUp(input, processed)
	end
end

function BaseCamera:ConnectInputEvents()
	self.inputBeganConn = UserInputService.InputBegan:Connect(function(input, processed)
		self:OnInputBegan(input, processed)
	end)

	self.inputChangedConn = UserInputService.InputChanged:Connect(function(input, processed)
		self:OnInputChanged(input, processed)
	end)

	self.inputEndedConn = UserInputService.InputEnded:Connect(function(input, processed)
		self:OnInputEnded(input, processed)
	end)

	self.touchActivateConn = UserInputService.TouchTapInWorld:Connect(function(touchPos, processed)
		self:OnTouchTap(touchPos)
	end)

	self.menuOpenedConn = GuiService.MenuOpened:connect(function()
		self:ResetInputStates()
	end)

	self.gamepadConnectedConn = UserInputService.GamepadDisconnected:connect(function(gamepadEnum)
		if self.activeGamepad ~= gamepadEnum then return end
		self.activeGamepad = nil
		self:AssignActivateGamepad()
	end)

	self.gamepadDisconnectedConn = UserInputService.GamepadConnected:connect(function(gamepadEnum)
		if self.activeGamepad == nil then
			self:AssignActivateGamepad()
		end
	end)

	self:BindGamepadInputActions()
	self:AssignActivateGamepad()
	self:UpdateMouseBehavior()
end

function BaseCamera:AssignActivateGamepad()
	local connectedGamepads = UserInputService:GetConnectedGamepads()
	if #connectedGamepads > 0 then
		for i = 1, #connectedGamepads do
			if self.activeGamepad == nil then
				self.activeGamepad = connectedGamepads[i]
			elseif connectedGamepads[i].Value < self.activeGamepad.Value then
				self.activeGamepad = connectedGamepads[i]
			end
		end
	end

	if self.activeGamepad == nil then -- nothing is connected, at least set up for gamepad1
		self.activeGamepad = Enum.UserInputType.Gamepad1
	end
end

function BaseCamera:DisconnectInputEvents()
	if self.inputBeganConn then
		self.inputBeganConn:Disconnect()
		self.inputBeganConn = nil
	end
	if self.inputChangedConn then
		self.inputChangedConn:Disconnect()
		self.inputChangedConn = nil
	end
	if self.inputEndedConn then
		self.inputEndedConn:Disconnect()
		self.inputEndedConn = nil
	end
end

function BaseCamera:Cleanup()
	if self.menuOpenedConn then
		self.menuOpenedConn:Disconnect()
		self.menuOpenedConn = nil
	end
	if self.mouseLockToggleConn then
		self.mouseLockToggleConn:Disconnect()
		self.mouseLockToggleConn = nil
	end
	if self.gamepadConnectedConn then
		self.gamepadConnectedConn:Disconnect()
		self.gamepadConnectedConn = nil
	end
	if self.gamepadDisconnectedConn then
		self.gamepadDisconnectedConn:Disconnect()
		self.gamepadDisconnectedConn = nil
	end
	if self.subjectStateChangedConn then
		self.subjectStateChangedConn:Disconnect()
		self.subjectStateChangedConn = nil
	end
	if self.viewportSizeChangedConn then
		self.viewportSizeChangedConn:Disconnect()
		self.viewportSizeChangedConn = nil
	end
	if self.touchActivateConn then
		self.touchActivateConn:Disconnect()
		self.touchActivateConn = nil
	end

	self.turningLeft = false
	self.turningRight = false
	self.lastCameraTransform = nil
	self.lastSubjectCFrame = nil
	self.userPanningTheCamera = false
	self.rotateInput = Vector2.new()
	self.gamepadPanningCamera = Vector2.new(0,0)

	-- Reset input states
	self.startPos = nil
	self.lastPos = nil
	self.panBeginLook = nil
	self.isRightMouseDown = false
	self.isMiddleMouseDown = false

	self.fingerTouches = {}
	self.numUnsunkTouches = 0

	self.startingDiff = nil
	self.pinchBeginZoom = nil

	-- Unlock mouse for example if right mouse button was being held down
	if UserInputService.MouseBehavior ~= Enum.MouseBehavior.LockCenter then
		UserInputService.MouseBehavior = Enum.MouseBehavior.Default
	end
end

-- This is called when settings menu is opened
function BaseCamera:ResetInputStates()
	self.isRightMouseDown = false
	self.isMiddleMouseDown = false
	self:OnMousePanButtonReleased() -- this function doesn't seem to actually need parameters

	if UserInputService.TouchEnabled then
		--[[menu opening was causing serious touch issues
		this should disable all active touch events if
		they're active when menu opens.]]
		for inputObject in pairs(self.fingerTouches) do
			self.fingerTouches[inputObject] = nil
		end
		self.panBeginLook = nil
		self.startPos = nil
		self.lastPos = nil
		self.userPanningTheCamera = false
		self.startingDiff = nil
		self.pinchBeginZoom = nil
		self.numUnsunkTouches = 0
	end
end

function BaseCamera:GetGamepadPan(name, state, input)
	if input.UserInputType == self.activeGamepad and input.KeyCode == Enum.KeyCode.Thumbstick2 then
--		if self.L3ButtonDown then
--			-- L3 Thumbstick is depressed, right stick controls dolly in/out
--			if (input.Position.Y > THUMBSTICK_DEADZONE) then
--				self.currentZoomSpeed = 0.96
--			elseif (input.Position.Y < -THUMBSTICK_DEADZONE) then
--				self.currentZoomSpeed = 1.04
--			else 
--				self.currentZoomSpeed = 1.00
--			end
--		else
			if state == Enum.UserInputState.Cancel then
				self.gamepadPanningCamera = ZERO_VECTOR2
				return
			end

			local inputVector = Vector2.new(input.Position.X, -input.Position.Y)
			if inputVector.magnitude > THUMBSTICK_DEADZONE then
				self.gamepadPanningCamera = Vector2.new(input.Position.X, -input.Position.Y)
			else
				self.gamepadPanningCamera = ZERO_VECTOR2
			end
		--end
	end
end

function BaseCamera:DoGamepadZoom(name, state, input)
	if input.UserInputType == self.activeGamepad then
		if input.KeyCode == Enum.KeyCode.ButtonR3 then
			if state == Enum.UserInputState.Begin then			
				if self.distanceChangeEnabled then
					if self:GetCameraToSubjectDistance() > 0.5 then
						self:SetCameraToSubjectDistance(0)
					else
						self:SetCameraToSubjectDistance(10)
					end
				end
			end
		elseif input.KeyCode == Enum.KeyCode.DPadLeft then
			self.dpadLeftDown = (state == Enum.UserInputState.Begin)
		elseif input.KeyCode == Enum.KeyCode.DPadRight then
			self.dpadRightDown = (state == Enum.UserInputState.Begin)
		end

		if self.dpadLeftDown then
			self.currentZoomSpeed = 1.04
		elseif self.dpadRightDown then
			self.currentZoomSpeed = 0.96
		else
			self.currentZoomSpeed = 1.00
		end
	end
--	elseif input.UserInputType == self.activeGamepad and input.KeyCode == Enum.KeyCode.ButtonL3 then
--		if (state == Enum.UserInputState.Begin) then
--			self.L3ButtonDown = true
--		elseif (state == Enum.UserInputState.End) then
--			self.L3ButtonDown = false
--			self.currentZoomSpeed = 1.00
--		end
--	end
end

function BaseCamera:BindGamepadInputActions()
	ContextActionService:BindAction("RootCamGamepadPan", function(name, state, input) self:GetGamepadPan(name, state, input) end, false, Enum.KeyCode.Thumbstick2)
	ContextActionService:BindAction("RootCamGamepadZoom", function(name, state, input) self:DoGamepadZoom(name, state, input) end, false, Enum.KeyCode.ButtonR3)
	--ContextActionService:BindAction("RootGamepadZoomAlt", function(name, state, input) self:DoGamepadZoom(name, state, input) end, false, Enum.KeyCode.ButtonL3)
	ContextActionService:BindAction("RootGamepadZoomOut", function(name, state, input) self:DoGamepadZoom(name, state, input) end, false, Enum.KeyCode.DPadLeft)
	ContextActionService:BindAction("RootGamepadZoomIn", function(name, state, input) self:DoGamepadZoom(name, state, input) end, false, Enum.KeyCode.DPadRight)
end

function BaseCamera:OnTouchBegan(input, processed)
	local canUseDynamicTouch = self.isDynamicThumbstickEnabled and not processed
	if canUseDynamicTouch then
		self.fingerTouches[input] = processed
		if not processed then
			self.inputStartPositions[input] = input.Position
			self.inputStartTimes[input] = tick()
			self.numUnsunkTouches = self.numUnsunkTouches + 1
		end
	end
end

function BaseCamera:OnTouchChanged(input, processed)
	if self.fingerTouches[input] == nil then
		if self.isDynamicThumbstickEnabled then
			return
		end
		self.fingerTouches[input] = processed
		if not processed then
			self.numUnsunkTouches = self.numUnsunkTouches + 1
		end
	end

	if self.numUnsunkTouches == 1 then
		if self.fingerTouches[input] == false then
			self.panBeginLook = self.panBeginLook or self:GetCameraLookVector()
			self.startPos = self.startPos or input.Position
			self.lastPos = self.lastPos or self.startPos
			self.userPanningTheCamera = true

			local delta = input.Position - self.lastPos
			delta = Vector2.new(delta.X, delta.Y * UserGameSettings:GetCameraYInvertValue())
			if self.panEnabled then
				local desiredXYVector = self:InputTranslationToCameraAngleChange(delta, TOUCH_SENSITIVTY)
				self.rotateInput = self.rotateInput + desiredXYVector
			end
			self.lastPos = input.Position
		end
	else
		self.panBeginLook = nil
		self.startPos = nil
		self.lastPos = nil
		self.userPanningTheCamera = false
	end
	if self.numUnsunkTouches == 2 then
		local unsunkTouches = {}
		for touch, wasSunk in pairs(self.fingerTouches) do
			if not wasSunk then
				table.insert(unsunkTouches, touch)
			end
		end
		if #unsunkTouches == 2 then
			local difference = (unsunkTouches[1].Position - unsunkTouches[2].Position).magnitude
			if self.startingDiff and self.pinchBeginZoom then
				local scale = difference / math.max(0.01, self.startingDiff)
				local clampedScale = Util.Clamp(0.1, 10, scale)
				if self.distanceChangeEnabled then
					self:SetCameraToSubjectDistance(self.pinchBeginZoom / clampedScale)
				end
			else
				self.startingDiff = difference
				self.pinchBeginZoom = self:GetCameraToSubjectDistance()
			end
		end
	else
		self.startingDiff = nil
		self.pinchBeginZoom = nil
	end	
end

function BaseCamera:CalcLookBehindRotateInput()
	if not self.humanoidRootPart or not game.Workspace.CurrentCamera then
		return nil
	end

	local cameraLookVector = game.Workspace.CurrentCamera.CFrame.lookVector
	local newDesiredLook = (self.humanoidRootPart.CFrame.lookVector - Vector3.new(0,0.23,0)).unit
	local horizontalShift = Util.GetAngleBetweenXZVectors(newDesiredLook, cameraLookVector)
	local vertShift = math.asin(cameraLookVector.Y) - math.asin(newDesiredLook.Y)
	if not Util.IsFinite(horizontalShift) then
		horizontalShift = 0
	end
	if not Util.IsFinite(vertShift) then
		vertShift = 0
	end

	return Vector2.new(horizontalShift, vertShift)
end

function BaseCamera:OnTouchTap(position)
	if self.isDynamicThumbstickEnabled and not self.isAToolEquipped then
		if self.lastTapTime and tick() - self.lastTapTime < MAX_TIME_FOR_DOUBLE_TAP then
--			local tween = {
--				from = self:GetCameraToSubjectDistance(),
--				to = self.defaultSubjectDistance,
--				start = tick(),
--				duration = 0.2,
--				func = function(from, to, alpha)
--					self:SetCameraToSubjectDistance(from + (to - from)*alpha)
--					return to
--				end
--			}
--			tweens["Zoom"] = tween
			self:SetCameraToSubjectDistance(self.defaultSubjectDistance)
		else
			if self.humanoidRootPart then
				-- TODO: Replace this with proper tween that does not fight with user input
				-- this overrides any actual user input with a rotate input amount to get the
				-- camera looking from behind the character
				self.rotateInput = self:CalcLookBehindRotateInput()
			end

--			local humanoid = self:GetHumanoid()
--			if humanoid then
--				local player = Players.LocalPlayer
--				if player and player.Character then
--					if humanoid and humanoid.RootPart then
--						local tween = {
--							from = this.RotateInput,
--							to = calcLookBehindRotateInput(humanoid.Torso),
--							start = tick(),
--							duration = 0.2,
--							func = function(from, to, alpha)
--								to = calcLookBehindRotateInput(humanoid.Torso)
--								if to then
--									this.RotateInput = from + (to - from)*alpha
--								end
--								return to
--							end
--						}
--						tweens["Rotate"] = tween
--
--						-- reset old camera info so follow cam doesn't rotate us
--						this.LastCameraTransform = nil
--					end
--				end
--			end
		end
		self.lastTapTime = tick()
	end
end

function BaseCamera:IsTouchTap(input)
	-- We can't make the assumption that the input exists in the inputStartPositions because we may have switched from a different camera type.
	if self.inputStartPositions[input] then
		local posDelta = (self.inputStartPositions[input] - input.Position).magnitude
		if posDelta < MAX_TAP_POS_DELTA then
			local timeDelta = self.inputStartTimes[input] - tick()
			if timeDelta < MAX_TAP_TIME_DELTA then
				return true
			end
		end
	end
	return false
end

function BaseCamera:OnTouchEnded(input, processed)
	if self.fingerTouches[input] == false then
		if self.numUnsunkTouches == 1 then
			self.panBeginLook = nil
			self.startPos = nil
			self.lastPos = nil
			self.userPanningTheCamera = false
			if self:IsTouchTap(input) then
				self:OnTouchTap(input.Position)
			end
		elseif self.numUnsunkTouches == 2 then
			self.startingDiff = nil
			self.pinchBeginZoom = nil
		end
	end

	if self.fingerTouches[input] ~= nil and self.fingerTouches[input] == false then
		self.numUnsunkTouches = self.numUnsunkTouches - 1
	end
	self.fingerTouches[input] = nil
	self.inputStartPositions[input] = nil
	self.inputStartTimes[input] = nil
end

function BaseCamera:OnMouse2Down(input, processed)
	if processed then return end

	self.isRightMouseDown = true
	self:OnMousePanButtonPressed(input, processed)
end

function BaseCamera:OnMouse2Up(input, processed)
	self.isRightMouseDown = false
	self:OnMousePanButtonReleased(input, processed)
end

function BaseCamera:OnMouse3Down(input, processed)
	if processed then return end

	self.isMiddleMouseDown = true
	self:OnMousePanButtonPressed(input, processed)
end

function BaseCamera:OnMouse3Up(input, processed)
	self.isMiddleMouseDown = false
	self:OnMousePanButtonReleased(input, processed)
end

function BaseCamera:OnMouseMoved(input, processed)
	if not self.hasGameLoaded and VRService.VREnabled then
		return
	end

	local inputDelta = input.Delta
	inputDelta = Vector2.new(inputDelta.X, inputDelta.Y * UserGameSettings:GetCameraYInvertValue())

	if self.panEnabled and ((self.startPos and self.lastPos and self.panBeginLook) or self.inFirstPerson or self.inMouseLockedMode) then
		local desiredXYVector = self:InputTranslationToCameraAngleChange(inputDelta,MOUSE_SENSITIVITY)
		self.rotateInput = self.rotateInput + desiredXYVector
	end

	if self.startPos and self.lastPos and self.panBeginLook then
		self.lastPos = self.lastPos + input.Delta
	end
end

function BaseCamera:OnMousePanButtonPressed(input, processed)
	if processed then return end
	self:UpdateMouseBehavior()
	self.panBeginLook = self.panBeginLook or self:GetCameraLookVector()
	self.startPos = self.startPos or input.Position
	self.lastPos = self.lastPos or self.startPos
	self.userPanningTheCamera = true
end

function BaseCamera:OnMousePanButtonReleased(input, processed)
	self:UpdateMouseBehavior()
	if not (self.isRightMouseDown or self.isMiddleMouseDown) then
		self.panBeginLook = nil
		self.startPos = nil
		self.lastPos = nil
		self.userPanningTheCamera = false
	end
end

function BaseCamera:OnMouseWheel(input, processed)
	if not self.hasGameLoaded and VRService.VREnabled then
		return
	end
	if not processed then
		if self.distanceChangeEnabled then
			local wheelInput = Util.Clamp(-1, 1, -input.Position.Z)

			local newDistance
			if self.inFirstPerson and wheelInput > 0 then
				newDistance = FIRST_PERSON_DISTANCE_THRESHOLD
			else
				-- The 0.156 and 1.7 values are the slope and intercept of a line that is replacing the old
				-- rk4Integrator function which was not being used as an integrator, only to get a delta as a function of distance,
				-- which was linear as it was being used. These constants preserve the status quo behavior.
				newDistance = self.currentSubjectDistance + 0.156 * self.currentSubjectDistance * wheelInput + 1.7 * math.sign(wheelInput)
			end

			self:SetCameraToSubjectDistance(newDistance)
		end
	end
end

function BaseCamera:OnKeyDown(input, processed)
	if not self.hasGameLoaded and VRService.VREnabled then
		return
	end

	if processed then
		return
	end

	if self.distanceChangeEnabled then
		if input.KeyCode == Enum.KeyCode.I then
			self:SetCameraToSubjectDistance( self.currentSubjectDistance - 5 )
		elseif input.KeyCode == Enum.KeyCode.O then
			self:SetCameraToSubjectDistance( self.currentSubjectDistance + 5 )
		end
	end

	if self.panBeginLook == nil and self.keyPanEnabled then
		if input.KeyCode == Enum.KeyCode.Left then
			self.turningLeft = true
		elseif input.KeyCode == Enum.KeyCode.Right then
			self.turningRight = true
		elseif input.KeyCode == Enum.KeyCode.Comma then
			local angle = Util.RotateVectorByAngleAndRound(self:GetCameraLookVector() * Vector3.new(1,0,1), -math.pi*0.1875, math.pi*0.25)
			if angle ~= 0 then
				self.rotateInput = self.rotateInput + Vector2.new(angle, 0)
				self.lastUserPanCamera = tick()
				self.lastCameraTransform = nil
			end
		elseif input.KeyCode == Enum.KeyCode.Period then
			local angle = Util.RotateVectorByAngleAndRound(self:GetCameraLookVector() * Vector3.new(1,0,1), math.pi*0.1875, math.pi*0.25)
			if angle ~= 0 then
				self.rotateInput = self.rotateInput + Vector2.new(angle, 0)
				self.lastUserPanCamera = tick()
				self.lastCameraTransform = nil
			end
		elseif input.KeyCode == Enum.KeyCode.PageUp then
			self.rotateInput = self.rotateInput + Vector2.new(0,math.rad(15))
			self.lastCameraTransform = nil
		elseif input.KeyCode == Enum.KeyCode.PageDown then
			self.rotateInput = self.rotateInput + Vector2.new(0,math.rad(-15))
			self.lastCameraTransform = nil
		end
	end
end

function BaseCamera:OnKeyUp(input, processed)
	if input.KeyCode == Enum.KeyCode.Left then
		self.turningLeft = false
	elseif input.KeyCode == Enum.KeyCode.Right then
		self.turningRight = false
	end
end

function BaseCamera:UpdateMouseBehavior()
	-- first time transition to first person mode or mouse-locked third person
	if self.inFirstPerson or self.inMouseLockedMode then
		pcall(function() UserGameSettings.RotationType = Enum.RotationType.CameraRelative end)
		if UserInputService.MouseBehavior ~= Enum.MouseBehavior.LockCenter then
			UserInputService.MouseBehavior = Enum.MouseBehavior.LockCenter
		end
	else
		pcall(function() UserGameSettings.RotationType = Enum.RotationType.MovementRelative end)
		if self.isRightMouseDown or self.isMiddleMouseDown then
			UserInputService.MouseBehavior = Enum.MouseBehavior.LockCurrentPosition
		else
			UserInputService.MouseBehavior = Enum.MouseBehavior.Default
		end
	end
end

function BaseCamera:UpdateForDistancePropertyChange()
	-- Calling this setter with the current value will force checking that it is still
	-- in range after a change to the min/max distance limits
	self:SetCameraToSubjectDistance(self.currentSubjectDistance)
end

function BaseCamera:SetCameraToSubjectDistance(desiredSubjectDistance)
	local player = Players.LocalPlayer

	-- By default, camera modules will respect LockFirstPerson and override the currentSubjectDistance with 0
	-- regardless of what Player.CameraMinZoomDistance is set to, so that first person can be made
	-- available by the developer without needing to allow players to mousewheel dolly into first person.
	-- Some modules will override this function to remove or change first-person capability.
	if player.CameraMode == Enum.CameraMode.LockFirstPerson then
		self.currentSubjectDistance = 0.5
		if not self.inFirstPerson then
			self:EnterFirstPerson()
		end
	else
		local newSubjectDistance = Util.Clamp(player.CameraMinZoomDistance, player.CameraMaxZoomDistance, desiredSubjectDistance)
		if newSubjectDistance < FIRST_PERSON_DISTANCE_THRESHOLD then
			self.currentSubjectDistance = 0.5
			if not self.inFirstPerson then
				self:EnterFirstPerson()
			end
		else
			self.currentSubjectDistance = newSubjectDistance
			if self.inFirstPerson then
				self:LeaveFirstPerson()
			end
		end
	end

	-- Returned only for convenience to the caller to know the outcome
	return self.currentSubjectDistance
end

function BaseCamera:SetCameraType( cameraType )
	--Used by derived classes
	self.cameraType = cameraType
end

function BaseCamera:GetCameraType()
	return self.cameraType
end

-- Movement mode standardized to Enum.ComputerCameraMovementMode values
function BaseCamera:SetCameraMovementMode( cameraMovementMode )
	self.cameraMovementMode = cameraMovementMode
end

function BaseCamera:GetCameraMovementMode()
	return self.cameraMovementMode
end

function BaseCamera:SetIsMouseLocked(mouseLocked)
	self.inMouseLockedMode = mouseLocked
	self:UpdateMouseBehavior()
end

function BaseCamera:GetIsMouseLocked()
	return self.inMouseLockedMode
end

function BaseCamera:SetMouseLockOffset(offsetVector)
	self.mouseLockOffset = offsetVector
end

function BaseCamera:GetMouseLockOffset()
	return self.mouseLockOffset
end

function BaseCamera:InFirstPerson()
	return self.inFirstPerson
end

function BaseCamera:EnterFirstPerson()
	-- Overriden in ClassicCamera, the only module which supports FirstPerson
end

function BaseCamera:LeaveFirstPerson()
	-- Overriden in ClassicCamera, the only module which supports FirstPerson
end

-- Nominal distance, set by dollying in and out with the mouse wheel or equivalent, not measured distance
function BaseCamera:GetCameraToSubjectDistance()
	return self.currentSubjectDistance
end

-- Actual measured distance to the camera Focus point, which may be needed in special circumstances, but should
-- never be used as the starting point for updating the nominal camera-to-subject distance (self.currentSubjectDistance)
-- since that is a desired target value set only by mouse wheel (or equivalent) input, PopperCam, and clamped to min max camera distance
function BaseCamera:GetMeasuredDistanceToFocus()
	local camera = game.Workspace.CurrentCamera
	if camera then
		return (camera.CoordinateFrame.p - camera.Focus.p).magnitude
	end
	return nil
end

function BaseCamera:GetCameraLookVector()
	return game.Workspace.CurrentCamera and game.Workspace.CurrentCamera.CFrame.lookVector or UNIT_Z
end

-- Replacements for RootCamera:RotateCamera() which did not actually rotate the camera
-- suppliedLookVector is not normally passed in, it's used only by Watch camera
function BaseCamera:CalculateNewLookCFrame(suppliedLookVector)
	local currLookVector = suppliedLookVector or self:GetCameraLookVector()
	local currPitchAngle = math.asin(currLookVector.y)
	local yTheta = Util.Clamp(-MAX_Y + currPitchAngle, -MIN_Y + currPitchAngle, self.rotateInput.y)
	local constrainedRotateInput = Vector2.new(self.rotateInput.x, yTheta)
	local startCFrame = CFrame.new(ZERO_VECTOR3, currLookVector)
	local newLookCFrame = CFrame.Angles(0, -constrainedRotateInput.x, 0) * startCFrame * CFrame.Angles(-constrainedRotateInput.y,0,0)
	return newLookCFrame
end
function BaseCamera:CalculateNewLookVector(suppliedLookVector)
	local newLookCFrame = self:CalculateNewLookCFrame(suppliedLookVector)
	return newLookCFrame.lookVector
end

function BaseCamera:CalculateNewLookVectorVR()
	local subjectPosition = self:GetSubjectPosition()
	local vecToSubject = (subjectPosition - game.Workspace.CurrentCamera.CFrame.p)
	local currLookVector = (vecToSubject * X1_Y0_Z1).unit
	local vrRotateInput = Vector2.new(self.rotateInput.x, 0)
	local startCFrame = CFrame.new(ZERO_VECTOR3, currLookVector)
	local yawRotatedVector = (CFrame.Angles(0, -vrRotateInput.x, 0) * startCFrame * CFrame.Angles(-vrRotateInput.y,0,0)).lookVector
	return (yawRotatedVector * X1_Y0_Z1).unit
end

function BaseCamera:GetHumanoid()
	local player = Players.LocalPlayer
	local character = player and player.Character
	if character then
		local resultHumanoid = self.humanoidCache[player]
		if resultHumanoid and resultHumanoid.Parent == character then
			return resultHumanoid
		else
			self.humanoidCache[player] = nil -- Bust Old Cache
			local humanoid = character:FindFirstChildOfClass("Humanoid")
			if humanoid then
				self.humanoidCache[player] = humanoid
			end
			return humanoid
		end
	end
	return nil
end

function BaseCamera:GetHumanoidPartToFollow(humanoid, humanoidStateType)
	if humanoidStateType == Enum.HumanoidStateType.Dead then
		local character = humanoid.Parent
		if character then
			return character:FindFirstChild("Head") or humanoid.Torso
		else
			return humanoid.Torso
		end
	else
		return humanoid.Torso
	end
end

function BaseCamera:UpdateGamepad()
	local gamepadPan = self.gamepadPanningCamera
	if gamepadPan and (self.hasGameLoaded or not VRService.VREnabled) then
		gamepadPan = Util.GamepadLinearToCurve(gamepadPan)
		local currentTime = tick()
		if gamepadPan.X ~= 0 or gamepadPan.Y ~= 0 then
			self.userPanningTheCamera = true
		elseif gamepadPan == ZERO_VECTOR2 then
			self.lastThumbstickRotate = nil
			if self.lastThumbstickPos == ZERO_VECTOR2 then
				self.currentSpeed = 0
			end
		end

		local finalConstant = 0

		if self.lastThumbstickRotate then
			if VRService.VREnabled then
				self.currentSpeed = self.vrMaxSpeed
			else
				local elapsedTime = (currentTime - self.lastThumbstickRotate) * 10
				self.currentSpeed = self.currentSpeed + (self.maxSpeed * ((elapsedTime*elapsedTime)/self.numOfSeconds))

				if self.currentSpeed > self.maxSpeed then self.currentSpeed = self.maxSpeed end

				if self.lastVelocity then
					local velocity = (gamepadPan - self.lastThumbstickPos)/(currentTime - self.lastThumbstickRotate)
					local velocityDeltaMag = (velocity - self.lastVelocity).magnitude

					if velocityDeltaMag > 12 then
						self.currentSpeed = self.currentSpeed * (20/velocityDeltaMag)
						if self.currentSpeed > self.maxSpeed then self.currentSpeed = self.maxSpeed end
					end
				end
			end

			local success, gamepadCameraSensitivity = pcall(function() return UserGameSettings.GamepadCameraSensitivity end)
			finalConstant = success and (gamepadCameraSensitivity * self.currentSpeed) or self.currentSpeed
			self.lastVelocity = (gamepadPan - self.lastThumbstickPos)/(currentTime - self.lastThumbstickRotate)
		end

		self.lastThumbstickPos = gamepadPan
		self.lastThumbstickRotate = currentTime

		return Vector2.new( gamepadPan.X * finalConstant, gamepadPan.Y * finalConstant * self.ySensitivity * UserGameSettings:GetCameraYInvertValue())
	end

	return ZERO_VECTOR2
end

-- [[ VR Support Section ]] --

function BaseCamera:ApplyVRTransform()
	if not VRService.VREnabled then
		return
	end

	--we only want this to happen in first person VR
	local rootJoint = self.humanoidRootPart and self.humanoidRootPart:FindFirstChild("RootJoint")
	if not rootJoint then
		return
	end

	local cameraSubject = game.Workspace.CurrentCamera.CameraSubject
	local isInVehicle = cameraSubject and cameraSubject:IsA("VehicleSeat")

	if self.inFirstPerson and not isInVehicle then
		local vrFrame = VRService:GetUserCFrame(Enum.UserCFrame.Head)
		local vrRotation = vrFrame - vrFrame.p
		rootJoint.C0 = CFrame.new(vrRotation:vectorToObjectSpace(vrFrame.p)) * CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
	else
		rootJoint.C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
	end
end

function BaseCamera:IsInFirstPerson()
	return self.inFirstPerson
end

function BaseCamera:ShouldUseVRRotation()
	if not VRService.VREnabled then
		return false
	end

	if not self.VRRotationIntensityAvailable and tick() - self.lastVRRotationIntensityCheckTime < 1 then
		return false
	end

	local success, vrRotationIntensity = pcall(function() return StarterGui:GetCore("VRRotationIntensity") end)
	self.VRRotationIntensityAvailable = success and vrRotationIntensity ~= nil
	self.lastVRRotationIntensityCheckTime = tick()

	self.shouldUseVRRotation = success and vrRotationIntensity ~= nil and vrRotationIntensity ~= "Smooth"

	return self.shouldUseVRRotation
end

function BaseCamera:GetVRRotationInput()
	local vrRotateSum = ZERO_VECTOR2
	local success, vrRotationIntensity = pcall(function() return StarterGui:GetCore("VRRotationIntensity") end)

	if not success then
		return
	end

	local vrGamepadRotation = self.GamepadPanningCamera or ZERO_VECTOR2
	local delayExpired = (tick() - self.lastVRRotationTime) >= self:GetRepeatDelayValue(vrRotationIntensity)

	if math.abs(vrGamepadRotation.x) >= self:GetActivateValue() then
		if (delayExpired or not self.vrRotateKeyCooldown[Enum.KeyCode.Thumbstick2]) then
			local sign = 1
			if vrGamepadRotation.x < 0 then
				sign = -1
			end
			vrRotateSum = vrRotateSum + self:GetRotateAmountValue(vrRotationIntensity) * sign
			self.vrRotateKeyCooldown[Enum.KeyCode.Thumbstick2] = true
		end
	elseif math.abs(vrGamepadRotation.x) < self:GetActivateValue() - 0.1 then
		self.vrRotateKeyCooldown[Enum.KeyCode.Thumbstick2] = nil
	end
	if self.turningLeft then
		if delayExpired or not self.vrRotateKeyCooldown[Enum.KeyCode.Left] then
			vrRotateSum = vrRotateSum - self:GetRotateAmountValue(vrRotationIntensity)
			self.vrRotateKeyCooldown[Enum.KeyCode.Left] = true
		end
	else
		self.vrRotateKeyCooldown[Enum.KeyCode.Left] = nil
	end
	if self.turningRight then
		if (delayExpired or not self.vrRotateKeyCooldown[Enum.KeyCode.Right]) then
			vrRotateSum = vrRotateSum + self:GetRotateAmountValue(vrRotationIntensity)
			self.vrRotateKeyCooldown[Enum.KeyCode.Right] = true
		end
	else
		self.vrRotateKeyCooldown[Enum.KeyCode.Right] = nil
	end

	if vrRotateSum ~= ZERO_VECTOR2 then
		self.lastVRRotationTime = tick()
	end

	return vrRotateSum
end

function BaseCamera:CancelCameraFreeze(keepConstraints)
	if not keepConstraints then
		self.cameraTranslationConstraints = Vector3.new(self.cameraTranslationConstraints.x, 1, self.cameraTranslationConstraints.z)
	end
	if self.cameraFrozen then
		self.trackingHumanoid = nil
		self.cameraFrozen = false
	end
end

function BaseCamera:StartCameraFreeze(subjectPosition, humanoidToTrack)
	if not self.cameraFrozen then
		self.humanoidJumpOrigin = subjectPosition
		self.trackingHumanoid = humanoidToTrack
		self.cameraTranslationConstraints = Vector3.new(self.cameraTranslationConstraints.x, 0, self.cameraTranslationConstraints.z)
		self.cameraFrozen = true
	end
end

function BaseCamera:RescaleCameraOffset(newScaleFactor)
	self.headHeightR15 = R15_HEAD_OFFSET * newScaleFactor
end

function BaseCamera:OnHumanoidSubjectChildAdded(child)
	if child.Name == "BodyHeightScale" and child:IsA("NumberValue") then
		if self.heightScaleChangedConn then
			self.heightScaleChangedConn:Disconnect()
		end
		self.heightScaleChangedConn = child.Changed:Connect(function(newScaleFactor)
			self:RescaleCameraOffset(newScaleFactor)
		end)
		self:RescaleCameraOffset(child.Value)
	end
end

function BaseCamera:OnHumanoidSubjectChildRemoved(child)
	if child.Name == "BodyHeightScale" then
		self:RescaleCameraOffset(1)
		if self.heightScaleChangedConn then
			self.heightScaleChangedConn:Disconnect()
			self.heightScaleChangedConn = nil
		end
	end
end

function BaseCamera:OnNewCameraSubject()
	if self.subjectStateChangedConn then
		self.subjectStateChangedConn:Disconnect()
		self.subjectStateChangedConn = nil
	end
	if self.humanoidChildAddedConn then
		self.humanoidChildAddedConn:Disconnect()
		self.humanoidChildAddedConn = nil
	end
	if self.humanoidChildRemovedConn then
		self.humanoidChildRemovedConn:Disconnect()
		self.humanoidChildRemovedConn = nil
	end
	if self.heightScaleChangedConn then
		self.heightScaleChangedConn:Disconnect()
		self.heightScaleChangedConn = nil
	end

	local humanoid = workspace.CurrentCamera and workspace.CurrentCamera.CameraSubject
	if self.trackingHumanoid ~= humanoid then
		self:CancelCameraFreeze()
	end
	if humanoid and humanoid:IsA("Humanoid") then
		self.humanoidChildAddedConn = humanoid.ChildAdded:Connect(function(child)
			self:OnHumanoidSubjectChildAdded(child)
		end)
		self.humanoidChildRemovedConn = humanoid.ChildRemoved:Connect(function(child)
			self:OnHumanoidSubjectChildRemoved(child)
		end)
		for _, child in pairs(humanoid:GetChildren()) do
			self:OnHumanoidSubjectChildAdded(child)
		end

		self.subjectStateChangedConn = humanoid.StateChanged:Connect(function(oldState, newState)
			if VRService.VREnabled and newState == Enum.HumanoidStateType.Jumping and not self.inFirstPerson then
				self:StartCameraFreeze(self:GetSubjectPosition(), humanoid)
			elseif newState ~= Enum.HumanoidStateType.Jumping and newState ~= Enum.HumanoidStateType.Freefall then
				self:CancelCameraFreeze(true)
			end
		end)
	end
end

function BaseCamera:GetVRFocus(subjectPosition, timeDelta)
	local lastFocus = self.LastCameraFocus or subjectPosition
	if not self.cameraFrozen then
		self.cameraTranslationConstraints = Vector3.new(self.cameraTranslationConstraints.x, math.min(1, self.cameraTranslationConstraints.y + 0.42 * timeDelta), self.cameraTranslationConstraints.z)
	end

	local newFocus
	if self.cameraFrozen and self.humanoidJumpOrigin and self.humanoidJumpOrigin.y > lastFocus.y then
		newFocus = CFrame.new(Vector3.new(subjectPosition.x, math.min(self.humanoidJumpOrigin.y, lastFocus.y + 5 * timeDelta), subjectPosition.z))
	else
		newFocus = CFrame.new(Vector3.new(subjectPosition.x, lastFocus.y, subjectPosition.z):lerp(subjectPosition, self.cameraTranslationConstraints.y))
	end

	if self.cameraFrozen then
		-- No longer in 3rd person
		if self.inFirstPerson then -- not VRService.VREnabled
			self:CancelCameraFreeze()
		end
		-- This case you jumped off a cliff and want to keep your character in view
		-- 0.5 is to fix floating point error when not jumping off cliffs
		if self.humanoidJumpOrigin and subjectPosition.y < (self.humanoidJumpOrigin.y - 0.5) then
			self:CancelCameraFreeze()
		end
	end

	return newFocus
end

function BaseCamera:GetRotateAmountValue(vrRotationIntensity)
	vrRotationIntensity = vrRotationIntensity or StarterGui:GetCore("VRRotationIntensity")
	if vrRotationIntensity then
		if vrRotationIntensity == "Low" then
			return VR_LOW_INTENSITY_ROTATION
		elseif vrRotationIntensity == "High" then
			return VR_HIGH_INTENSITY_ROTATION
		end
	end
	return ZERO_VECTOR2
end

function BaseCamera:GetRepeatDelayValue(vrRotationIntensity)
	vrRotationIntensity = vrRotationIntensity or StarterGui:GetCore("VRRotationIntensity")
	if vrRotationIntensity then
		if vrRotationIntensity == "Low" then
			return VR_LOW_INTENSITY_REPEAT
		elseif vrRotationIntensity == "High" then
			return VR_HIGH_INTENSITY_REPEAT
		end
	end
	return 0
end

function BaseCamera:Test()
	print("BaseCamera:Test()")
end

function BaseCamera:Update(dt)
	warn("BaseCamera:Update() This is a virtual function that should never be getting called.")
	return game.Workspace.CurrentCamera.CFrame, game.Workspace.CurrentCamera.Focus
end

return BaseCamera
