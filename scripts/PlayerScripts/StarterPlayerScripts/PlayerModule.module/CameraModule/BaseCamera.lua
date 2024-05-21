--!nonstrict
--!nolint DeprecatedApi
--[[
	BaseCamera - Abstract base class for camera control modules
	2018 Camera Update - AllYourBlox
--]]

--[[ Local Constants ]]--

local CommonUtils = script.Parent.Parent:WaitForChild("CommonUtils")
local FlagUtil = require(CommonUtils:WaitForChild("FlagUtil"))

local FFlagUserFixGamepadMaxZoom
do
	local success, result = pcall(function()
		return UserSettings():IsUserFeatureEnabled("UserFixGamepadMaxZoom")
	end)
	FFlagUserFixGamepadMaxZoom = success and result
end
local FFlagUserFixCameraOffsetJitter = FlagUtil.getUserFlag("UserFixCameraOffsetJitter2")

local UNIT_Z = Vector3.new(0,0,1)
local X1_Y0_Z1 = Vector3.new(1,0,1)	--Note: not a unit vector, used for projecting onto XZ plane

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

local SEAT_OFFSET = Vector3.new(0,5,0)
local VR_SEAT_OFFSET = Vector3.new(0,4,0)
local HEAD_OFFSET = Vector3.new(0,1.5,0)
local R15_HEAD_OFFSET = Vector3.new(0, 1.5, 0)
local R15_HEAD_OFFSET_NO_SCALING = Vector3.new(0, 2, 0)
local HUMANOID_ROOT_PART_SIZE = Vector3.new(2, 2, 1)

local ZOOM_SENSITIVITY_CURVATURE = 0.5
local FIRST_PERSON_DISTANCE_MIN = 0.5

local CameraUtils = require(script.Parent:WaitForChild("CameraUtils"))
local ZoomController = require(script.Parent:WaitForChild("ZoomController"))
local CameraToggleStateController = require(script.Parent:WaitForChild("CameraToggleStateController"))
local CameraInput = require(script.Parent:WaitForChild("CameraInput"))
local CameraUI = require(script.Parent:WaitForChild("CameraUI"))

--[[ Roblox Services ]]--
local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local StarterGui = game:GetService("StarterGui")
local VRService = game:GetService("VRService")
local UserGameSettings = UserSettings():GetService("UserGameSettings")

local player = Players.LocalPlayer

--[[ The Module ]]--
local BaseCamera = {}
BaseCamera.__index = BaseCamera

function BaseCamera.new()
	local self = setmetatable({}, BaseCamera)
	
	self.gamepadZoomLevels = {0, 10, 20} -- zoom levels that are cycled through on a gamepad R3 press
	
	-- So that derived classes have access to this
	self.FIRST_PERSON_DISTANCE_THRESHOLD = FIRST_PERSON_DISTANCE_THRESHOLD

	self.cameraType = nil
	self.cameraMovementMode = nil

	self.lastCameraTransform = nil
	self.lastUserPanCamera = tick()

	self.humanoidRootPart = nil
	self.humanoidCache = {}

	-- Subject and position on last update call
	self.lastSubject = nil
	self.lastSubjectPosition = Vector3.new(0, 5, 0)
	self.lastSubjectCFrame = CFrame.new(self.lastSubjectPosition)

	self.currentSubjectDistance = math.clamp(DEFAULT_DISTANCE, player.CameraMinZoomDistance, player.CameraMaxZoomDistance)

	self.inFirstPerson = false
	self.inMouseLockedMode = false
	self.portraitMode = false
	self.isSmallTouchScreen = false

	-- Used by modules which want to reset the camera angle on respawn.
	self.resetCameraAngle = true

	self.enabled = false

	-- Input Event Connections

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
	self.subjectStateChangedConn = nil

	self.gamepadZoomPressConnection = nil

	-- Mouse locked formerly known as shift lock mode
	self.mouseLockOffset = ZERO_VECTOR3

	-- Initialization things used to always execute at game load time, but now these camera modules are instantiated
	-- when needed, so the code here may run well after the start of the game

	if player.Character then
		self:OnCharacterAdded(player.Character)
	end

	player.CharacterAdded:Connect(function(char)
		self:OnCharacterAdded(char)
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

	self:OnPlayerCameraPropertyChange()

	return self
end

function BaseCamera:GetModuleName()
	return "BaseCamera"
end

function BaseCamera:OnCharacterAdded(char)
	self.resetCameraAngle = self.resetCameraAngle or self:GetEnabled()
	self.humanoidRootPart = nil
	if UserInputService.TouchEnabled then
		self.PlayerGui = player:WaitForChild("PlayerGui")
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

function BaseCamera:GetHumanoidRootPart(): BasePart
	if not self.humanoidRootPart then
		if player.Character then
			local humanoid = player.Character:FindFirstChildOfClass("Humanoid")
			if humanoid then
				self.humanoidRootPart = humanoid.RootPart
			end
		end
	end
	return self.humanoidRootPart
end

function BaseCamera:GetBodyPartToFollow(humanoid: Humanoid, isDead: boolean) -- BasePart
	-- If the humanoid is dead, prefer the head part if one still exists as a sibling of the humanoid
	if humanoid:GetState() == Enum.HumanoidStateType.Dead then
		local character = humanoid.Parent
		if character and character:IsA("Model") then
			return character:FindFirstChild("Head") or humanoid.RootPart
		end
	end

	return humanoid.RootPart
end

function BaseCamera:GetSubjectCFrame(): CFrame
	local result = self.lastSubjectCFrame
	local camera = workspace.CurrentCamera
	local cameraSubject = camera and camera.CameraSubject

	if not cameraSubject then
		return result
	end

	if cameraSubject:IsA("Humanoid") then
		local humanoid = cameraSubject
		local humanoidIsDead = humanoid:GetState() == Enum.HumanoidStateType.Dead


		local cameraOffset = humanoid.CameraOffset
		-- when in mouse lock mode, the character's rotation follows the camera instead of vice versa.
		-- Allow the mouse lock calculation to be camera based instead of subject based to prevent jitter
		if FFlagUserFixCameraOffsetJitter and self:GetIsMouseLocked() then
			cameraOffset = Vector3.new()
		end

		local bodyPartToFollow = humanoid.RootPart

		-- If the humanoid is dead, prefer their head part as a follow target, if it exists
		if humanoidIsDead then
			if humanoid.Parent and humanoid.Parent:IsA("Model") then
				bodyPartToFollow = humanoid.Parent:FindFirstChild("Head") or bodyPartToFollow
			end
		end

		if bodyPartToFollow and bodyPartToFollow:IsA("BasePart") then
			local heightOffset
			if humanoid.RigType == Enum.HumanoidRigType.R15 then
				if humanoid.AutomaticScalingEnabled then
					heightOffset = R15_HEAD_OFFSET

					local rootPart = humanoid.RootPart
					if bodyPartToFollow == rootPart then
						local rootPartSizeOffset = (rootPart.Size.Y - HUMANOID_ROOT_PART_SIZE.Y)/2
						heightOffset = heightOffset + Vector3.new(0, rootPartSizeOffset, 0)
					end
				else
					heightOffset = R15_HEAD_OFFSET_NO_SCALING
				end
			else
				heightOffset = HEAD_OFFSET
			end

			if humanoidIsDead then
				heightOffset = ZERO_VECTOR3
			end

			result = bodyPartToFollow.CFrame*CFrame.new(heightOffset + cameraOffset)
		end

	elseif cameraSubject:IsA("BasePart") then
		result = cameraSubject.CFrame

	elseif cameraSubject:IsA("Model") then
		-- Model subjects are expected to have a PrimaryPart to determine orientation
		if cameraSubject.PrimaryPart then
			result = cameraSubject:GetPrimaryPartCFrame()
		else
			result = CFrame.new()
		end
	end

	if result then
		self.lastSubjectCFrame = result
	end

	return result
end

function BaseCamera:GetSubjectVelocity(): Vector3
	local camera = workspace.CurrentCamera
	local cameraSubject = camera and camera.CameraSubject

	if not cameraSubject then
		return ZERO_VECTOR3
	end

	if cameraSubject:IsA("BasePart") then
		return cameraSubject.Velocity

	elseif cameraSubject:IsA("Humanoid") then
		local rootPart = cameraSubject.RootPart

		if rootPart then
			return rootPart.Velocity
		end

	elseif cameraSubject:IsA("Model") then
		local primaryPart = cameraSubject.PrimaryPart

		if primaryPart then
			return primaryPart.Velocity
		end
	end

	return ZERO_VECTOR3
end

function BaseCamera:GetSubjectRotVelocity(): Vector3
	local camera = workspace.CurrentCamera
	local cameraSubject = camera and camera.CameraSubject

	if not cameraSubject then
		return ZERO_VECTOR3
	end

	if cameraSubject:IsA("BasePart") then
		return cameraSubject.RotVelocity

	elseif cameraSubject:IsA("Humanoid") then
		local rootPart = cameraSubject.RootPart

		if rootPart then
			return rootPart.RotVelocity
		end

	elseif cameraSubject:IsA("Model") then
		local primaryPart = cameraSubject.PrimaryPart

		if primaryPart then
			return primaryPart.RotVelocity
		end
	end

	return ZERO_VECTOR3
end

function BaseCamera:StepZoom()
	local zoom: number = self.currentSubjectDistance
	local zoomDelta: number = CameraInput.getZoomDelta()

	if math.abs(zoomDelta) > 0 then
		local newZoom

		if zoomDelta > 0 then
			newZoom = zoom + zoomDelta*(1 + zoom*ZOOM_SENSITIVITY_CURVATURE)
			newZoom = math.max(newZoom, self.FIRST_PERSON_DISTANCE_THRESHOLD)
		else
			newZoom = (zoom + zoomDelta)/(1 - zoomDelta*ZOOM_SENSITIVITY_CURVATURE)
			newZoom = math.max(newZoom, FIRST_PERSON_DISTANCE_MIN)
		end

		if newZoom < self.FIRST_PERSON_DISTANCE_THRESHOLD then
			newZoom = FIRST_PERSON_DISTANCE_MIN
		end

		self:SetCameraToSubjectDistance(newZoom)
	end

	return ZoomController.GetZoomRadius()
end

function BaseCamera:GetSubjectPosition(): Vector3?
	local result = self.lastSubjectPosition
	local camera = game.Workspace.CurrentCamera
	local cameraSubject = camera and camera.CameraSubject

	if cameraSubject then
		if cameraSubject:IsA("Humanoid") then
			local humanoid = cameraSubject
			local humanoidIsDead = humanoid:GetState() == Enum.HumanoidStateType.Dead

			local cameraOffset = humanoid.CameraOffset
			-- when in mouse lock mode, the character's rotation follows the camera instead of vice versa.
			-- Allow the mouse lock calculation to be camera based instead of subject based to prevent jitter
			if FFlagUserFixCameraOffsetJitter and self:GetIsMouseLocked() then
				cameraOffset = Vector3.new()
			end

			local bodyPartToFollow = humanoid.RootPart

			-- If the humanoid is dead, prefer their head part as a follow target, if it exists
			if humanoidIsDead then
				if humanoid.Parent and humanoid.Parent:IsA("Model") then
					bodyPartToFollow = humanoid.Parent:FindFirstChild("Head") or bodyPartToFollow
				end
			end

			if bodyPartToFollow and bodyPartToFollow:IsA("BasePart") then
				local heightOffset
				if humanoid.RigType == Enum.HumanoidRigType.R15 then
					if humanoid.AutomaticScalingEnabled then
						heightOffset = R15_HEAD_OFFSET
						if bodyPartToFollow == humanoid.RootPart then
							local rootPartSizeOffset = (humanoid.RootPart.Size.Y/2) - (HUMANOID_ROOT_PART_SIZE.Y/2)
							heightOffset = heightOffset + Vector3.new(0, rootPartSizeOffset, 0)
						end
					else
						heightOffset = R15_HEAD_OFFSET_NO_SCALING
					end
				else
					heightOffset = HEAD_OFFSET
				end

				if humanoidIsDead then
					heightOffset = ZERO_VECTOR3
				end

				result = bodyPartToFollow.CFrame.p + bodyPartToFollow.CFrame:vectorToWorldSpace(heightOffset + cameraOffset)
			end

		elseif cameraSubject:IsA("VehicleSeat") then
			local offset = SEAT_OFFSET
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
		return nil
	end

	self.lastSubject = cameraSubject
	self.lastSubjectPosition = result

	return result
end

function BaseCamera:OnViewportSizeChanged()
	local camera = game.Workspace.CurrentCamera
	local size = camera.ViewportSize
	self.portraitMode = size.X < size.Y
	self.isSmallTouchScreen = UserInputService.TouchEnabled and (size.Y < 500 or size.X < 700)
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
	if player.DevTouchMovementMode == Enum.DevTouchMovementMode.UserChoice then
		if (UserGameSettings.TouchMovementMode == Enum.TouchMovementMode.DynamicThumbstick
			or UserGameSettings.TouchMovementMode == Enum.TouchMovementMode.Default) then
			self:OnDynamicThumbstickEnabled()
		else
			self:OnDynamicThumbstickDisabled()
		end
	end
end

function BaseCamera:OnDevTouchMovementModeChanged()
	if player.DevTouchMovementMode == Enum.DevTouchMovementMode.DynamicThumbstick then
		self:OnDynamicThumbstickEnabled()
	else
		self:OnGameSettingsTouchMovementModeChanged()
	end
end

function BaseCamera:OnPlayerCameraPropertyChange()
	-- This call forces re-evaluation of player.CameraMode and clamping to min/max distance which may have changed
	self:SetCameraToSubjectDistance(self.currentSubjectDistance)
end

function BaseCamera:InputTranslationToCameraAngleChange(translationVector, sensitivity)
	return translationVector * sensitivity
end

-- cycles between zoom levels in self.gamepadZoomLevels, setting CameraToSubjectDistance. gamepadZoomLevels may
-- be out of range of Min/Max camera zoom
function BaseCamera:GamepadZoomPress()
	-- this code relies on the fact that SetCameraToSubjectDistance will clamp the min and max
	local dist = self:GetCameraToSubjectDistance()

	local max = player.CameraMaxZoomDistance

	-- check from largest to smallest, set the first zoom level which is 
	-- below the threshold
	for i = #self.gamepadZoomLevels, 1, -1 do
		local zoom = self.gamepadZoomLevels[i]
	
		if max < zoom then
			continue
		end
		
		if zoom < player.CameraMinZoomDistance then
			zoom = player.CameraMinZoomDistance
			if FFlagUserFixGamepadMaxZoom then
				-- no more zoom levels to check, all the remaining ones
				-- are < min
				if max == zoom then
					break
				end
			end
		end

		if not FFlagUserFixGamepadMaxZoom then
			if max == zoom then
				break
			end
		end

		-- theshold is set at halfway between zoom levels
		if dist > zoom + (max - zoom) / 2 then
			self:SetCameraToSubjectDistance(zoom)
			return
		end

		max = zoom
	end
	
	-- cycle back to the largest, relies on the fact that SetCameraToSubjectDistance will clamp max and min
	self:SetCameraToSubjectDistance(self.gamepadZoomLevels[#self.gamepadZoomLevels])
end

function BaseCamera:Enable(enable: boolean)
	if self.enabled ~= enable then
		self.enabled = enable

		self:OnEnabledChanged()
	end
end

function BaseCamera:OnEnabledChanged()
	if self.enabled then
		CameraInput.setInputEnabled(true)

		self.gamepadZoomPressConnection = CameraInput.gamepadZoomPress:Connect(function()
			self:GamepadZoomPress()
		end)

		if player.CameraMode == Enum.CameraMode.LockFirstPerson then
			self.currentSubjectDistance = 0.5
			if not self.inFirstPerson then
				self:EnterFirstPerson()
			end
		end

		if self.cameraChangedConn then self.cameraChangedConn:Disconnect(); self.cameraChangedConn = nil end
		self.cameraChangedConn = workspace:GetPropertyChangedSignal("CurrentCamera"):Connect(function()
			self:OnCurrentCameraChanged()
		end)
		self:OnCurrentCameraChanged()
	else
		CameraInput.setInputEnabled(false)

		if self.gamepadZoomPressConnection then
			self.gamepadZoomPressConnection:Disconnect()
			self.gamepadZoomPressConnection = nil
		end
		-- Clean up additional event listeners and reset a bunch of properties
		self:Cleanup()
	end
end

function BaseCamera:GetEnabled(): boolean
	return self.enabled
end

function BaseCamera:Cleanup()
	if self.subjectStateChangedConn then
		self.subjectStateChangedConn:Disconnect()
		self.subjectStateChangedConn = nil
	end
	if self.viewportSizeChangedConn then
		self.viewportSizeChangedConn:Disconnect()
		self.viewportSizeChangedConn = nil
	end
	if self.cameraChangedConn then 
		self.cameraChangedConn:Disconnect()
		self.cameraChangedConn = nil 
	end

	self.lastCameraTransform = nil
	self.lastSubjectCFrame = nil

	-- Unlock mouse for example if right mouse button was being held down
	CameraUtils.restoreMouseBehavior()
end

function BaseCamera:UpdateMouseBehavior()
	local blockToggleDueToClickToMove = UserGameSettings.ComputerMovementMode == Enum.ComputerMovementMode.ClickToMove

	if self.isCameraToggle and blockToggleDueToClickToMove == false then
		CameraUI.setCameraModeToastEnabled(true)
		CameraInput.enableCameraToggleInput()
		CameraToggleStateController(self.inFirstPerson)
	else
		CameraUI.setCameraModeToastEnabled(false)
		CameraInput.disableCameraToggleInput()

		-- first time transition to first person mode or mouse-locked third person
		if self.inFirstPerson or self.inMouseLockedMode then
			CameraUtils.setRotationTypeOverride(Enum.RotationType.CameraRelative)
			CameraUtils.setMouseBehaviorOverride(Enum.MouseBehavior.LockCenter)
		else
			CameraUtils.restoreRotationType()

			local rotationActivated = CameraInput.getRotationActivated()
			if rotationActivated then
				CameraUtils.setMouseBehaviorOverride(Enum.MouseBehavior.LockCurrentPosition)
			else
				CameraUtils.restoreMouseBehavior()
			end
		end
	end
end

function BaseCamera:UpdateForDistancePropertyChange()
	-- Calling this setter with the current value will force checking that it is still
	-- in range after a change to the min/max distance limits
	self:SetCameraToSubjectDistance(self.currentSubjectDistance)
end

function BaseCamera:SetCameraToSubjectDistance(desiredSubjectDistance: number): number
	local lastSubjectDistance = self.currentSubjectDistance

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
		local newSubjectDistance = math.clamp(desiredSubjectDistance, player.CameraMinZoomDistance, player.CameraMaxZoomDistance)
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

	-- Pass target distance and zoom direction to the zoom controller
	ZoomController.SetZoomParameters(self.currentSubjectDistance, math.sign(desiredSubjectDistance - lastSubjectDistance))

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

function BaseCamera:SetIsMouseLocked(mouseLocked: boolean)
	self.inMouseLockedMode = mouseLocked
end

function BaseCamera:GetIsMouseLocked(): boolean
	return self.inMouseLockedMode
end

function BaseCamera:SetMouseLockOffset(offsetVector)
	self.mouseLockOffset = offsetVector
end

function BaseCamera:GetMouseLockOffset()
	return self.mouseLockOffset
end

function BaseCamera:InFirstPerson(): boolean
	return self.inFirstPerson
end

function BaseCamera:EnterFirstPerson()
	self.inFirstPerson = true
	self:UpdateMouseBehavior()
end

function BaseCamera:LeaveFirstPerson()
	self.inFirstPerson = false
	self:UpdateMouseBehavior()
end

-- Nominal distance, set by dollying in and out with the mouse wheel or equivalent, not measured distance
function BaseCamera:GetCameraToSubjectDistance(): number
	return self.currentSubjectDistance
end

-- Actual measured distance to the camera Focus point, which may be needed in special circumstances, but should
-- never be used as the starting point for updating the nominal camera-to-subject distance (self.currentSubjectDistance)
-- since that is a desired target value set only by mouse wheel (or equivalent) input, PopperCam, and clamped to min max camera distance
function BaseCamera:GetMeasuredDistanceToFocus(): number?
	local camera = game.Workspace.CurrentCamera
	if camera then
		return (camera.CoordinateFrame.p - camera.Focus.p).magnitude
	end
	return nil
end

function BaseCamera:GetCameraLookVector(): Vector3
	return game.Workspace.CurrentCamera and game.Workspace.CurrentCamera.CFrame.LookVector or UNIT_Z
end

function BaseCamera:CalculateNewLookCFrameFromArg(suppliedLookVector: Vector3?, rotateInput: Vector2): CFrame
	local currLookVector: Vector3 = suppliedLookVector or self:GetCameraLookVector()
	local currPitchAngle = math.asin(currLookVector.Y)
	local yTheta = math.clamp(rotateInput.Y, -MAX_Y + currPitchAngle, -MIN_Y + currPitchAngle)
	local constrainedRotateInput = Vector2.new(rotateInput.X, yTheta)
	local startCFrame = CFrame.new(ZERO_VECTOR3, currLookVector)
	local newLookCFrame = CFrame.Angles(0, -constrainedRotateInput.X, 0) * startCFrame * CFrame.Angles(-constrainedRotateInput.Y,0,0)
	return newLookCFrame
end

function BaseCamera:CalculateNewLookVectorFromArg(suppliedLookVector: Vector3?, rotateInput: Vector2): Vector3
	local newLookCFrame = self:CalculateNewLookCFrameFromArg(suppliedLookVector, rotateInput)
	return newLookCFrame.LookVector
end

function BaseCamera:CalculateNewLookVectorVRFromArg(rotateInput: Vector2): Vector3
	local subjectPosition: Vector3 = self:GetSubjectPosition()
	local vecToSubject: Vector3 = (subjectPosition - (game.Workspace.CurrentCamera :: Camera).CFrame.p)
	local currLookVector: Vector3 = (vecToSubject * X1_Y0_Z1).unit
	local vrRotateInput: Vector2 = Vector2.new(rotateInput.X, 0)
	local startCFrame: CFrame = CFrame.new(ZERO_VECTOR3, currLookVector)
	local yawRotatedVector: Vector3 = (CFrame.Angles(0, -vrRotateInput.X, 0) * startCFrame * CFrame.Angles(-vrRotateInput.Y,0,0)).LookVector
	return (yawRotatedVector * X1_Y0_Z1).unit
end

function BaseCamera:GetHumanoid(): Humanoid?
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

function BaseCamera:GetHumanoidPartToFollow(humanoid: Humanoid, humanoidStateType: Enum.HumanoidStateType) -- BasePart
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


function BaseCamera:OnNewCameraSubject()
	if self.subjectStateChangedConn then
		self.subjectStateChangedConn:Disconnect()
		self.subjectStateChangedConn = nil
	end
end

function BaseCamera:IsInFirstPerson()
	return self.inFirstPerson
end

function BaseCamera:Update(dt)
	error("BaseCamera:Update() This is a virtual function that should never be getting called.", 2)
end

function BaseCamera:GetCameraHeight()
	if VRService.VREnabled and not self.inFirstPerson then
		return math.sin(VR_ANGLE) * self.currentSubjectDistance
	end
	return 0
end

return BaseCamera
