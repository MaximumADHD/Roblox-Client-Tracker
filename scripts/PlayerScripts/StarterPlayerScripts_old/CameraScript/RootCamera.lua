
local PlayersService = game:GetService('Players')
local UserInputService = game:GetService('UserInputService')
local StarterGui = game:GetService('StarterGui')
local GuiService = game:GetService('GuiService')
local ContextActionService = game:GetService('ContextActionService')
local VRService = game:GetService("VRService")

local LocalPlayer = PlayersService.LocalPlayer
local PlayerGui = nil
if LocalPlayer then
	PlayerGui = PlayersService.LocalPlayer:WaitForChild("PlayerGui")
end

local PortraitMode = false

local CameraScript = script.Parent
local ShiftLockController = require(CameraScript:WaitForChild('ShiftLockController'))

local Settings = UserSettings()
local GameSettings = Settings.GameSettings

local function clamp(low, high, num)
	return (num > high and high or num < low and low or num)
end

local math_atan2 = math.atan2
local function findAngleBetweenXZVectors(vec2, vec1)
	return math_atan2(vec1.X*vec2.Z-vec1.Z*vec2.X, vec1.X*vec2.X + vec1.Z*vec2.Z)
end

local function IsFinite(num)
	return num == num and num ~= 1/0 and num ~= -1/0
end

local THUMBSTICK_DEADZONE = 0.2

local LANDSCAPE_DEFAULT_ZOOM = 12.5
local PORTRAIT_DEFAULT_ZOOM = 25

local humanoidCache = {}
local function findPlayerHumanoid(player)
	local character = player and player.Character
	if character then
		local resultHumanoid = humanoidCache[player]
		if resultHumanoid and resultHumanoid.Parent == character then
			return resultHumanoid
		else
			humanoidCache[player] = nil -- Bust Old Cache
			local humanoid = character:FindFirstChildOfClass("Humanoid")
			if humanoid then
				humanoidCache[player] = humanoid
			end
			return humanoid
		end
	end
end

local MIN_Y = math.rad(-80)
local MAX_Y = math.rad(80)

local DEFAULT_CAMERA_ANGLE = 25
local VR_ANGLE = math.rad(15)

local VR_LOW_INTENSITY_ROTATION = Vector2.new(math.rad(15), 0)
local VR_HIGH_INTENSITY_ROTATION = Vector2.new(math.rad(45), 0)
local VR_LOW_INTENSITY_REPEAT = 0.1
local VR_HIGH_INTENSITY_REPEAT = 0.4

local ZERO_VECTOR2 = Vector2.new(0, 0)
local ZERO_VECTOR3 = Vector3.new(0, 0, 0)

local TOUCH_SENSITIVTY = Vector2.new(math.pi*2.25, math.pi*2)
local MOUSE_SENSITIVITY = Vector2.new(math.pi*4, math.pi*1.9)

local MAX_TIME_FOR_DOUBLE_TAP = 1.5
local MAX_TAP_POS_DELTA = 15
local MAX_TAP_TIME_DELTA = 0.75

local SEAT_OFFSET = Vector3.new(0,5,0)
local VR_SEAT_OFFSET = Vector3.new(0, 4, 0)
local HEAD_OFFSET = Vector3.new(0, 1.5, 0)
local R15_HEAD_OFFSET = Vector3.new(0, 2.0, 0)

local PORTRAIT_MODE_CAMERA_OFFSET = 2

-- Reset the camera look vector when the camera is enabled for the first time
local SetCameraOnSpawn = true

local hasGameLoaded = false

local GestureArea = nil
local GestureAreaManagedByControlScript = false

local function layoutGestureArea(portraitMode)
	if GestureArea and not GestureAreaManagedByControlScript then
		if portraitMode then
			GestureArea.Size = UDim2.new(1, 0, .6, 0)
			GestureArea.Position = UDim2.new(0, 0, 0, 0)
		else
			GestureArea.Size = UDim2.new(1, 0, .5, -18)
			GestureArea.Position = UDim2.new(0, 0, 0, 0)
		end
	end
end

local IsAToolEquipped = false

-- Setup gesture area that camera uses while DynamicThumbstick is enabled
local function OnCharacterAdded(character)
	if UserInputService.TouchEnabled then
		for _, child in ipairs(LocalPlayer.Character:GetChildren()) do
			if child:IsA("Tool") then
				IsAToolEquipped = true
			end
		end
		character.ChildAdded:Connect(function(child)
			if child:IsA("Tool") then
				IsAToolEquipped = true
			end
		end)
		character.ChildRemoved:Connect(function(child)
			if child:IsA("Tool") then
				IsAToolEquipped = false
			end
		end)

		if PlayerGui then
			local TouchGui = PlayerGui:FindFirstChild("TouchGui")
			if TouchGui and TouchGui:WaitForChild("GestureArea", 0.5) then
				GestureArea = TouchGui.GestureArea
				GestureAreaManagedByControlScript = true
			else
				GestureAreaManagedByControlScript = false
				local ScreenGui = Instance.new("ScreenGui")
				ScreenGui.Name = "GestureArea"
				ScreenGui.Parent = PlayerGui
				
				GestureArea = Instance.new("Frame")
                GestureArea.BackgroundTransparency = 1.0
				GestureArea.Visible = true
				GestureArea.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
				layoutGestureArea(PortraitMode)
				GestureArea.Parent = ScreenGui
			end
		end
	end
end

if LocalPlayer then
	if LocalPlayer.Character ~= nil then
		OnCharacterAdded(LocalPlayer.Character)
	end
	LocalPlayer.CharacterAdded:connect(function(character)
		OnCharacterAdded(character)
	end)
end
	
	
local function positionIntersectsGuiObject(position, guiObject)
	if position.X < guiObject.AbsolutePosition.X + guiObject.AbsoluteSize.X
		and position.X > guiObject.AbsolutePosition.X
		and position.Y < guiObject.AbsolutePosition.Y + guiObject.AbsoluteSize.Y
		and position.Y > guiObject.AbsolutePosition.Y then
		return true
	end
	return false
end	

local function GetRenderCFrame(part)
	return part:GetRenderCFrame()
end

local DefaultZoom = nil

local function CreateCamera()
	local this = {}
	local R15HeadHeight = R15_HEAD_OFFSET
	function this:GetActivateValue()
		return 0.7
	end
	
	function this:IsPortraitMode()
		return PortraitMode
	end	
	
	function this:GetRotateAmountValue(vrRotationIntensity)
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
	function this:GetRepeatDelayValue(vrRotationIntensity)
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
	
	this.ShiftLock = false
	this.Enabled = false
	local isFirstPerson = false
	local isRightMouseDown = false
	local isMiddleMouseDown = false
	this.RotateInput = ZERO_VECTOR2
	this.DefaultZoom = LANDSCAPE_DEFAULT_ZOOM
	this.activeGamepad = nil
	this.currentZoom = nil
	
	local tweens = {}

	this.lastSubject = nil
	this.lastSubjectPosition = Vector3.new(0, 5, 0)

	local lastVRRotation = 0
	local vrRotateKeyCooldown = {}
	
	local isDynamicThumbstickEnabled = false
	local dynamicThumbstickFrame = nil
	
	local function getDynamicThumbstickFrame()
		if dynamicThumbstickFrame and dynamicThumbstickFrame:IsDescendantOf(game) then
			return dynamicThumbstickFrame
		else
			local touchGui = PlayerGui:FindFirstChild("TouchGui")
			if not touchGui then return nil end
			
			local touchControlFrame = touchGui:FindFirstChild("TouchControlFrame")
			if not touchControlFrame then return nil end
			
			dynamicThumbstickFrame = touchControlFrame:FindFirstChild("DynamicThumbstickFrame")
			return dynamicThumbstickFrame
		end
	end
	
	-- Check for changes in ViewportSize to decide if PortraitMode
	local CameraChangedConn = nil
	local workspaceCameraChangedConn = nil
	local function onWorkspaceCameraChanged()
		if UserInputService.TouchEnabled then
			if CameraChangedConn then
				CameraChangedConn:Disconnect()
				CameraChangedConn = nil
			end
			local newCamera = workspace.CurrentCamera
			if newCamera then
				local size = newCamera.ViewportSize
				PortraitMode = size.X < size.Y
				layoutGestureArea(PortraitMode)
				DefaultZoom = PortraitMode and PORTRAIT_DEFAULT_ZOOM or LANDSCAPE_DEFAULT_ZOOM
				CameraChangedConn = newCamera:GetPropertyChangedSignal("ViewportSize"):Connect(function()
					size = newCamera.ViewportSize
					PortraitMode = size.X < size.Y
					layoutGestureArea(PortraitMode)
					DefaultZoom = PortraitMode and PORTRAIT_DEFAULT_ZOOM or LANDSCAPE_DEFAULT_ZOOM
				end)
			end
		end
	end
	workspaceCameraChangedConn = workspace:GetPropertyChangedSignal("CurrentCamera"):Connect(onWorkspaceCameraChanged)
	if workspace.CurrentCamera then
		onWorkspaceCameraChanged()
	end
		
	
	function this:GetShiftLock()
		return ShiftLockController:IsShiftLocked()
	end

	function this:GetHumanoid()
		local player = PlayersService.LocalPlayer
		return findPlayerHumanoid(player)
	end

	function this:GetHumanoidRootPart()
		local humanoid = this:GetHumanoid()
		return humanoid and humanoid.Torso
	end

	function this:GetRenderCFrame(part)
		GetRenderCFrame(part)
	end
	
	local STATE_DEAD = Enum.HumanoidStateType.Dead
	
	-- HumanoidRootPart when alive, Head part when dead
	local function getHumanoidPartToFollow(humanoid, humanoidStateType)
		if humanoidStateType == STATE_DEAD then
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

	local HUMANOID_STATE_DEAD = Enum.HumanoidStateType.Dead
	
	function this:GetSubjectPosition()
		local result = nil
		local camera = workspace.CurrentCamera
		local cameraSubject = camera and camera.CameraSubject
		if cameraSubject then
			if cameraSubject:IsA('Humanoid') then
				local humanoidStateType = cameraSubject:GetState()
				if VRService.VREnabled and humanoidStateType == STATE_DEAD and cameraSubject == this.lastSubject then
					result = this.lastSubjectPosition
				else
					local humanoidRootPart = getHumanoidPartToFollow(cameraSubject, humanoidStateType)
					if humanoidRootPart and humanoidRootPart:IsA('BasePart') then
						local subjectCFrame = GetRenderCFrame(humanoidRootPart)
						local heightOffset = ZERO_VECTOR3
						if humanoidStateType ~= STATE_DEAD then
							heightOffset = cameraSubject.RigType == Enum.HumanoidRigType.R15 and R15HeadHeight or HEAD_OFFSET
						end

						if PortraitMode then
							heightOffset = heightOffset + Vector3.new(0, PORTRAIT_MODE_CAMERA_OFFSET, 0)
						end

						result = subjectCFrame.p +
							subjectCFrame:vectorToWorldSpace(heightOffset + cameraSubject.CameraOffset)
					end
				end	
			elseif cameraSubject:IsA('VehicleSeat') then
				local subjectCFrame = GetRenderCFrame(cameraSubject)
				local offset = SEAT_OFFSET
				if VRService.VREnabled then
					offset = VR_SEAT_OFFSET
				end
				result = subjectCFrame.p + subjectCFrame:vectorToWorldSpace(offset)
			elseif cameraSubject:IsA('SkateboardPlatform') then
				local subjectCFrame = GetRenderCFrame(cameraSubject)
				result = subjectCFrame.p + SEAT_OFFSET
			elseif cameraSubject:IsA('BasePart') then
				local subjectCFrame = GetRenderCFrame(cameraSubject)
				result = subjectCFrame.p
			elseif cameraSubject:IsA('Model') then
				result = cameraSubject:GetModelCFrame().p
			end
		end
		this.lastSubject = cameraSubject
		this.lastSubjectPosition = result
		return result
	end

	function this:ResetCameraLook()
	end

	function this:GetCameraLook()
		return workspace.CurrentCamera and workspace.CurrentCamera.CoordinateFrame.lookVector or Vector3.new(0,0,1)
	end

	function this:GetCameraZoom()
		if this.currentZoom == nil then
			local player = PlayersService.LocalPlayer
			this.currentZoom = player and clamp(player.CameraMinZoomDistance, player.CameraMaxZoomDistance, this.DefaultZoom) or this.DefaultZoom
		end
		return this.currentZoom
	end

	function this:GetCameraActualZoom()
		local camera = workspace.CurrentCamera
		if camera then
			return (camera.CoordinateFrame.p - camera.Focus.p).magnitude
		end
	end

	function this:GetCameraHeight()
		if VRService.VREnabled and not this:IsInFirstPerson() then
			local zoom = this:GetCameraZoom()
			return math.sin(VR_ANGLE) * zoom
		end
		return 0
	end

	function this:ViewSizeX()
		local result = 1024
		local camera = workspace.CurrentCamera
		if camera then
			result = camera.ViewportSize.X
		end
		return result
	end

	function this:ViewSizeY()
		local result = 768
		local camera = workspace.CurrentCamera
		if camera then
			result = camera.ViewportSize.Y
		end
		return result
	end

	
	local math_asin = math.asin
	local math_atan2 = math.atan2
	local math_floor = math.floor
	local math_max = math.max
	local math_pi = math.pi
	local Vector2_new = Vector2.new
	local Vector3_new = Vector3.new
	local CFrame_Angles = CFrame.Angles
	local CFrame_new = CFrame.new

	function this:ScreenTranslationToAngle(translationVector)
		local screenX = this:ViewSizeX()
		local screenY = this:ViewSizeY()
		local xTheta = (translationVector.x / screenX)
		local yTheta = (translationVector.y / screenY)
		return Vector2_new(xTheta, yTheta)
	end

	function this:MouseTranslationToAngle(translationVector)
		local xTheta = (translationVector.x / 1920)
		local yTheta = (translationVector.y / 1200)
		return Vector2_new(xTheta, yTheta)
	end

	function this:RotateVector(startVector, xyRotateVector)
		local startCFrame = CFrame_new(ZERO_VECTOR3, startVector)
		local resultLookVector = (CFrame_Angles(0, -xyRotateVector.x, 0) * startCFrame * CFrame_Angles(-xyRotateVector.y,0,0)).lookVector
		return resultLookVector, Vector2_new(xyRotateVector.x, xyRotateVector.y)
	end

	function this:RotateCamera(startLook, xyRotateVector)
		if VRService.VREnabled then
			local yawRotatedVector, xyRotateVector = self:RotateVector(startLook, Vector2.new(xyRotateVector.x, 0))
			return Vector3_new(yawRotatedVector.x, 0, yawRotatedVector.z).unit, xyRotateVector
		else
			local startVertical = math_asin(startLook.y)
			local yTheta = clamp(-MAX_Y + startVertical, -MIN_Y + startVertical, xyRotateVector.y)
			return self:RotateVector(startLook, Vector2_new(xyRotateVector.x, yTheta))
		end
	end

	function this:IsInFirstPerson()
		return isFirstPerson
	end

	-- there are several cases to consider based on the state of input and camera rotation mode
	function this:UpdateMouseBehavior()
		-- first time transition to first person mode or shiftlock
		local camera = workspace.CurrentCamera
		if camera.CameraType == Enum.CameraType.Scriptable then
			return
		end
		
		if isFirstPerson or self:GetShiftLock() then
			pcall(function() GameSettings.RotationType = Enum.RotationType.CameraRelative end)
			if UserInputService.MouseBehavior ~= Enum.MouseBehavior.LockCenter then
				UserInputService.MouseBehavior = Enum.MouseBehavior.LockCenter
			end
		else
			pcall(function() GameSettings.RotationType = Enum.RotationType.MovementRelative end)
			if isRightMouseDown or isMiddleMouseDown then
				UserInputService.MouseBehavior = Enum.MouseBehavior.LockCurrentPosition
			else
				UserInputService.MouseBehavior = Enum.MouseBehavior.Default
			end
		end
	end

	function this:ZoomCamera(desiredZoom)
		local player = PlayersService.LocalPlayer
		if player then
			if player.CameraMode == Enum.CameraMode.LockFirstPerson then
				this.currentZoom = 0
			else
				this.currentZoom = clamp(player.CameraMinZoomDistance, player.CameraMaxZoomDistance, desiredZoom)
			end
		end

		isFirstPerson = self:GetCameraZoom() < 2

		ShiftLockController:SetIsInFirstPerson(isFirstPerson)
		-- set mouse behavior
		self:UpdateMouseBehavior()
		return self:GetCameraZoom()
	end

	function this:rk4Integrator(position, velocity, t)
		local direction = velocity < 0 and -1 or 1
		local function acceleration(p, v)
			local accel = direction * math_max(1, (p / 3.3) + 0.5)
			return accel
		end

		local p1 = position
		local v1 = velocity
		local a1 = acceleration(p1, v1)
		local p2 = p1 + v1 * (t / 2)
		local v2 = v1 + a1 * (t / 2)
		local a2 = acceleration(p2, v2)
		local p3 = p1 + v2 * (t / 2)
		local v3 = v1 + a2 * (t / 2)
		local a3 = acceleration(p3, v3)
		local p4 = p1 + v3 * t
		local v4 = v1 + a3 * t
		local a4 = acceleration(p4, v4)

		local positionResult = position + (v1 + 2 * v2 + 2 * v3 + v4) * (t / 6)
		local velocityResult = velocity + (a1 + 2 * a2 + 2 * a3 + a4) * (t / 6)
		return positionResult, velocityResult
	end

	function this:ZoomCameraBy(zoomScale)
		local zoom = this:GetCameraActualZoom()
		
		if zoom then
			-- Can break into more steps to get more accurate integration
            zoom = self:rk4Integrator(zoom, zoomScale, 1)
			self:ZoomCamera(zoom)
		end
		return self:GetCameraZoom()
	end

	function this:ZoomCameraFixedBy(zoomIncrement)
		return self:ZoomCamera(self:GetCameraZoom() + zoomIncrement)
	end

	function this:Update()
	end

	----- VR STUFF ------

	function this:ApplyVRTransform()
		if not VRService.VREnabled then
			return
		end
		--we only want this to happen in first person VR
		local player = PlayersService.LocalPlayer
		if not (player and player.Character
				and player.Character:FindFirstChild("HumanoidRootPart")
				and player.Character.HumanoidRootPart:FindFirstChild("RootJoint")) then
			return
		end

		local camera = workspace.CurrentCamera
		local cameraSubject = camera.CameraSubject
		local isInVehicle = cameraSubject and cameraSubject:IsA('VehicleSeat')

		if this:IsInFirstPerson() and not isInVehicle then
			local vrFrame = VRService:GetUserCFrame(Enum.UserCFrame.Head)
			local vrRotation = vrFrame - vrFrame.p
			local rootJoint = player.Character.HumanoidRootPart.RootJoint
			rootJoint.C0 = CFrame.new(vrRotation:vectorToObjectSpace(vrFrame.p)) * CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
		else
			local rootJoint = player.Character.HumanoidRootPart.RootJoint
			rootJoint.C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
		end
	end

	local vrRotationIntensityExists = true
	local lastVrRotationCheck = 0
	function this:ShouldUseVRRotation()
		if not VRService.VREnabled then
			return false
		end
		if not vrRotationIntensityExists and tick() - lastVrRotationCheck < 1 then return false end

		local success, vrRotationIntensity = pcall(function() return StarterGui:GetCore("VRRotationIntensity") end)
		vrRotationIntensityExists = success and vrRotationIntensity ~= nil
		lastVrRotationCheck = tick()

		return success and vrRotationIntensity ~= nil and vrRotationIntensity ~= "Smooth"
	end

	function this:GetVRRotationInput()
		local vrRotateSum = ZERO_VECTOR2

		local vrRotationIntensity = StarterGui:GetCore("VRRotationIntensity")

		local vrGamepadRotation = self.GamepadPanningCamera or ZERO_VECTOR2
		local delayExpired = (tick() - lastVRRotation) >= self:GetRepeatDelayValue(vrRotationIntensity)

		if math.abs(vrGamepadRotation.x) >= self:GetActivateValue() then
			if (delayExpired or not vrRotateKeyCooldown[Enum.KeyCode.Thumbstick2]) then
				local sign = 1
				if vrGamepadRotation.x < 0 then
					sign = -1
				end
				vrRotateSum = vrRotateSum + self:GetRotateAmountValue(vrRotationIntensity) * sign
				vrRotateKeyCooldown[Enum.KeyCode.Thumbstick2] = true
			end
		elseif math.abs(vrGamepadRotation.x) < self:GetActivateValue() - 0.1 then
			vrRotateKeyCooldown[Enum.KeyCode.Thumbstick2] = nil
		end
		if self.TurningLeft then
			if delayExpired or not vrRotateKeyCooldown[Enum.KeyCode.Left] then
				vrRotateSum = vrRotateSum - self:GetRotateAmountValue(vrRotationIntensity)
				vrRotateKeyCooldown[Enum.KeyCode.Left] = true
			end
		else
			vrRotateKeyCooldown[Enum.KeyCode.Left] = nil
		end
		if self.TurningRight then
			if (delayExpired or not vrRotateKeyCooldown[Enum.KeyCode.Right]) then
				vrRotateSum = vrRotateSum + self:GetRotateAmountValue(vrRotationIntensity)
				vrRotateKeyCooldown[Enum.KeyCode.Right] = true
			end
		else
			vrRotateKeyCooldown[Enum.KeyCode.Right] = nil
		end

		if vrRotateSum ~= ZERO_VECTOR2 then
			lastVRRotation = tick()
		end

		return vrRotateSum
	end

	local cameraTranslationConstraints = Vector3.new(1, 1, 1)
	local humanoidJumpOrigin = nil
	local trackingHumanoid = nil
	local cameraFrozen = false
	local subjectStateChangedConn = nil
	local cameraSubjectChangedConn = nil
	local workspaceChangedConn = nil
	local humanoidChildAddedConn = nil
	local humanoidChildRemovedConn = nil

	local function cancelCameraFreeze(keepConstraints)
		if not keepConstraints then
			cameraTranslationConstraints = Vector3.new(cameraTranslationConstraints.x, 1, cameraTranslationConstraints.z)
		end
		if cameraFrozen then
			trackingHumanoid = nil
			cameraFrozen = false
		end
	end

	local function startCameraFreeze(subjectPosition, humanoidToTrack)
		if not cameraFrozen then
			humanoidJumpOrigin = subjectPosition
			trackingHumanoid = humanoidToTrack
			cameraTranslationConstraints = Vector3.new(cameraTranslationConstraints.x, 0, cameraTranslationConstraints.z)
			cameraFrozen = true
		end
	end

	local function rescaleCameraOffset(newScaleFactor)
		R15HeadHeight = R15_HEAD_OFFSET*newScaleFactor
	end

	local heightScaleChangedConn = nil

	local function onHumanoidSubjectChildAdded(child)
		if child.Name == "BodyHeightScale" and child:IsA("NumberValue") then
			if heightScaleChangedConn then
				heightScaleChangedConn:disconnect()
			end
			heightScaleChangedConn = child.Changed:connect(rescaleCameraOffset)
			rescaleCameraOffset(child.Value)
		end
	end

	local function onHumanoidSubjectChildRemoved(child)
		if child.Name == "BodyHeightScale" then
			rescaleCameraOffset(1)
			if heightScaleChangedConn then
				heightScaleChangedConn:disconnect()
				heightScaleChangedConn = nil
			end
		end
	end

	local function onNewCameraSubject()
		if subjectStateChangedConn then
			subjectStateChangedConn:disconnect()
			subjectStateChangedConn = nil
		end
		if humanoidChildAddedConn then
			humanoidChildAddedConn:disconnect()
			humanoidChildAddedConn = nil
		end
		if humanoidChildRemovedConn then
			humanoidChildRemovedConn:disconnect()
			humanoidChildRemovedConn = nil
		end
		if heightScaleChangedConn then
			heightScaleChangedConn:disconnect()
			heightScaleChangedConn = nil
		end

		local humanoid = workspace.CurrentCamera and workspace.CurrentCamera.CameraSubject
		if trackingHumanoid ~= humanoid then
			cancelCameraFreeze()
		end
		if humanoid and humanoid:IsA('Humanoid') then
			humanoidChildAddedConn = humanoid.ChildAdded:connect(onHumanoidSubjectChildAdded)
			humanoidChildRemovedConn = humanoid.ChildRemoved:connect(onHumanoidSubjectChildRemoved)
			for _, child in pairs(humanoid:GetChildren()) do
				onHumanoidSubjectChildAdded(child)
			end

			subjectStateChangedConn = humanoid.StateChanged:connect(function(oldState, newState)
				if VRService.VREnabled and newState == Enum.HumanoidStateType.Jumping and not this:IsInFirstPerson() then
					startCameraFreeze(this:GetSubjectPosition(), humanoid)
				elseif newState ~= Enum.HumanoidStateType.Jumping and newState ~= Enum.HumanoidStateType.Freefall then
					cancelCameraFreeze(true)
				end
			end)
		end
	end

 	local function onCurrentCameraChanged()
		if cameraSubjectChangedConn then
			cameraSubjectChangedConn:disconnect()
			cameraSubjectChangedConn = nil
		end
  		local camera = workspace.CurrentCamera
  		if camera then
			cameraSubjectChangedConn = camera:GetPropertyChangedSignal("CameraSubject"):connect(onNewCameraSubject)
			onNewCameraSubject()
  		end
  	end

	function this:GetVRFocus(subjectPosition, timeDelta)
		local newFocus = nil

		local camera = workspace.CurrentCamera
		local lastFocus = self.LastCameraFocus or subjectPosition
		if not cameraFrozen then
			cameraTranslationConstraints = Vector3.new(cameraTranslationConstraints.x, math.min(1, cameraTranslationConstraints.y + 0.42 * timeDelta), cameraTranslationConstraints.z)
		end
		if cameraFrozen and humanoidJumpOrigin and humanoidJumpOrigin.y > lastFocus.y then
			newFocus = CFrame.new(Vector3.new(subjectPosition.x, math.min(humanoidJumpOrigin.y, lastFocus.y + 5 * timeDelta), subjectPosition.z))
		else
			newFocus = CFrame.new(Vector3.new(subjectPosition.x, lastFocus.y, subjectPosition.z):Lerp(subjectPosition, cameraTranslationConstraints.y))
		end

		if cameraFrozen then
			-- No longer in 3rd person
			if self:IsInFirstPerson() then -- not VRService.VREnabled
				cancelCameraFreeze()
			end
			-- This case you jumped off a cliff and want to keep your character in view
			-- 0.5 is to fix floating point error when not jumping off cliffs
			if humanoidJumpOrigin and subjectPosition.y < (humanoidJumpOrigin.y - 0.5) then
				cancelCameraFreeze()
			end
		end

		return newFocus
	end

	------------------------

	---- Input Events ----
	local startPos = nil
	local lastPos = nil
	local panBeginLook = nil
	local lastTapTime = nil

	local fingerTouches = {}
	local NumUnsunkTouches = 0
	
	local inputStartPositions = {}
	local inputStartTimes = {}

	local StartingDiff = nil
	local pinchBeginZoom = nil

	this.ZoomEnabled = true
	this.PanEnabled = true
	this.KeyPanEnabled = true
	this.GamepadPanningCamera = nil

	local function OnTouchBegan(input, processed)
		--If isDynamicThumbstickEnabled, then only process TouchBegan event if it starts in GestureArea
		
		local dtFrame = getDynamicThumbstickFrame()
        
        local isDynamicThumbstickUsingThisInput = false
        if isDynamicThumbstickEnabled then
            local ControlScript = CameraScript.Parent:FindFirstChild("ControlScript")
            if ControlScript then
                local MasterControl = ControlScript:FindFirstChild("MasterControl")
                if MasterControl then
                    local DynamicThumbstickModule = MasterControl:FindFirstChild("DynamicThumbstick")
                    if DynamicThumbstickModule then
                        DynamicThumbstickModule = require(DynamicThumbstickModule)
                        local dynamicInputObject = DynamicThumbstickModule:GetInputObject()
                        isDynamicThumbstickUsingThisInput = (dynamicInputObject == input)
                    end
                end
            end
        end
        
		if not isDynamicThumbstickUsingThisInput then
			fingerTouches[input] = processed
			if not processed then
				inputStartPositions[input] = input.Position
				inputStartTimes[input] = tick()
				NumUnsunkTouches = NumUnsunkTouches + 1
			end
		end
	end

	local function OnTouchChanged(input, processed)
		
		if fingerTouches[input] == nil then
			if isDynamicThumbstickEnabled then
				return
			end
			fingerTouches[input] = processed
			if not processed then
				NumUnsunkTouches = NumUnsunkTouches + 1
			end
		end

		if NumUnsunkTouches == 1 then
			if fingerTouches[input] == false then
				panBeginLook = panBeginLook or this:GetCameraLook()
				startPos = startPos or input.Position
				lastPos = lastPos or startPos
				this.UserPanningTheCamera = true

				local delta = input.Position - lastPos		
				
				delta = Vector2.new(delta.X, delta.Y * GameSettings:GetCameraYInvertValue())
				
				if this.PanEnabled then
					local desiredXYVector = this:ScreenTranslationToAngle(delta) * TOUCH_SENSITIVTY
					this.RotateInput = this.RotateInput + desiredXYVector
				end

				lastPos = input.Position
			end
		else
			panBeginLook = nil
			startPos = nil
			lastPos = nil
			this.UserPanningTheCamera = false
		end
		if NumUnsunkTouches == 2 then
			local unsunkTouches = {}
			for touch, wasSunk in pairs(fingerTouches) do
				if not wasSunk then
					table.insert(unsunkTouches, touch)
				end
			end
			if #unsunkTouches == 2 then
				local difference = (unsunkTouches[1].Position - unsunkTouches[2].Position).magnitude
				if StartingDiff and pinchBeginZoom then
					local scale = difference / math_max(0.01, StartingDiff)
					local clampedScale = clamp(0.1, 10, scale)
					if this.ZoomEnabled then
						this:ZoomCamera(pinchBeginZoom / clampedScale)
					end
				else
					StartingDiff = difference
					pinchBeginZoom = this:GetCameraActualZoom()
				end
			end
		else
			StartingDiff = nil
			pinchBeginZoom = nil
		end
	end
	
	local function calcLookBehindRotateInput(torso)
		if torso then
			local newDesiredLook = (torso.CFrame.lookVector - Vector3.new(0, math.sin(math.rad(DEFAULT_CAMERA_ANGLE)), 0)).unit
			local horizontalShift = findAngleBetweenXZVectors(newDesiredLook, this:GetCameraLook())
			local vertShift = math.asin(this:GetCameraLook().y) - math.asin(newDesiredLook.y)
			if not IsFinite(horizontalShift) then
				horizontalShift = 0
			end
			if not IsFinite(vertShift) then
				vertShift = 0
			end
			
			return Vector2.new(horizontalShift, vertShift)
		end
		return nil
	end
	
	local function IsTouchTap(input)
		-- We can't make the assumption that the input exists in the inputStartPositions because we may have switched from a different camera type.
		if inputStartPositions[input] then
			local posDelta = (inputStartPositions[input] - input.Position).magnitude
			if posDelta < MAX_TAP_POS_DELTA then
				local timeDelta = inputStartTimes[input] - tick()
				if timeDelta < MAX_TAP_TIME_DELTA then
					return true
				end
			end
		end
		return false
	end
	
	
	local function OnTouchEnded(input, processed)
		if fingerTouches[input] == false then
			if NumUnsunkTouches == 1 then
				panBeginLook = nil
				startPos = nil
				lastPos = nil
				this.UserPanningTheCamera = false
			elseif NumUnsunkTouches == 2 then
				StartingDiff = nil
				pinchBeginZoom = nil
			end
		end

		if fingerTouches[input] ~= nil and fingerTouches[input] == false then
			NumUnsunkTouches = NumUnsunkTouches - 1
		end
		fingerTouches[input] = nil
		inputStartPositions[input] = nil
		inputStartTimes[input] = nil
	end

	local function OnMousePanButtonPressed(input, processed)
		if processed then return end
		this:UpdateMouseBehavior()
		panBeginLook = panBeginLook or this:GetCameraLook()
		startPos = startPos or input.Position
		lastPos = lastPos or startPos
		this.UserPanningTheCamera = true
	end

	local function OnMousePanButtonReleased(input, processed)
		this:UpdateMouseBehavior()
		if not (isRightMouseDown or isMiddleMouseDown) then
			panBeginLook = nil
			startPos = nil
			lastPos = nil
			this.UserPanningTheCamera = false
		end
	end

	local function OnMouse2Down(input, processed)
		if processed then return end

		isRightMouseDown = true
		OnMousePanButtonPressed(input, processed)
	end

	local function OnMouse2Up(input, processed)
		isRightMouseDown = false
		OnMousePanButtonReleased(input, processed)
	end

	local function OnMouse3Down(input, processed)
		if processed then return end

		isMiddleMouseDown = true
		OnMousePanButtonPressed(input, processed)
	end

	local function OnMouse3Up(input, processed)
		isMiddleMouseDown = false
		OnMousePanButtonReleased(input, processed)
	end

	local function OnMouseMoved(input, processed)
		if not hasGameLoaded and VRService.VREnabled then
			return
		end
		
		local inputDelta = input.Delta
		inputDelta = Vector2.new(inputDelta.X, inputDelta.Y * GameSettings:GetCameraYInvertValue())
		
		if startPos and lastPos and panBeginLook then
			local currPos = lastPos + input.Delta
			local totalTrans = currPos - startPos
			if this.PanEnabled then
				local desiredXYVector = this:MouseTranslationToAngle(inputDelta) * MOUSE_SENSITIVITY
				this.RotateInput = this.RotateInput + desiredXYVector
			end
			lastPos = currPos
		elseif this:IsInFirstPerson() or this:GetShiftLock() then
			if this.PanEnabled then
				local desiredXYVector = this:MouseTranslationToAngle(inputDelta) * MOUSE_SENSITIVITY
				this.RotateInput = this.RotateInput + desiredXYVector
			end
		end
	end

	local function OnMouseWheel(input, processed)
		if not hasGameLoaded and VRService.VREnabled then
			return
		end
		if not processed then
			if this.ZoomEnabled then
                this:ZoomCameraBy(clamp(-1, 1, -input.Position.Z) * 1.4)
			end
		end
	end

	local function round(num)
		return math_floor(num + 0.5)
	end

	local eight2Pi = math_pi / 4

	local function rotateVectorByAngleAndRound(camLook, rotateAngle, roundAmount)
		if camLook ~= ZERO_VECTOR3 then
			camLook = camLook.unit
			local currAngle = math_atan2(camLook.z, camLook.x)
			local newAngle = round((math_atan2(camLook.z, camLook.x) + rotateAngle) / roundAmount) * roundAmount
			return newAngle - currAngle
		end
		return 0
	end

	local function OnKeyDown(input, processed)
		if not hasGameLoaded and VRService.VREnabled then
			return
		end
		if processed then return end
		if this.ZoomEnabled then
			if input.KeyCode == Enum.KeyCode.I then
				this:ZoomCameraBy(-5)
			elseif input.KeyCode == Enum.KeyCode.O then
				this:ZoomCameraBy(5)
			end
		end
		if panBeginLook == nil and this.KeyPanEnabled then
			if input.KeyCode == Enum.KeyCode.Left then
				this.TurningLeft = true
			elseif input.KeyCode == Enum.KeyCode.Right then
				this.TurningRight = true
			elseif input.KeyCode == Enum.KeyCode.Comma then
				local angle = rotateVectorByAngleAndRound(this:GetCameraLook() * Vector3.new(1,0,1), -eight2Pi * (3/4), eight2Pi)
				if angle ~= 0 then
					this.RotateInput = this.RotateInput + Vector2.new(angle, 0)
					this.LastUserPanCamera = tick()
					this.LastCameraTransform = nil
				end
			elseif input.KeyCode == Enum.KeyCode.Period then
				local angle = rotateVectorByAngleAndRound(this:GetCameraLook() * Vector3.new(1,0,1), eight2Pi * (3/4), eight2Pi)
				if angle ~= 0 then
					this.RotateInput = this.RotateInput + Vector2.new(angle, 0)
					this.LastUserPanCamera = tick()
					this.LastCameraTransform = nil
				end
			elseif input.KeyCode == Enum.KeyCode.PageUp then
			--elseif input.KeyCode == Enum.KeyCode.Home then
				this.RotateInput = this.RotateInput + Vector2.new(0,math.rad(15))
				this.LastCameraTransform = nil
			elseif input.KeyCode == Enum.KeyCode.PageDown then
			--elseif input.KeyCode == Enum.KeyCode.End then
				this.RotateInput = this.RotateInput + Vector2.new(0,math.rad(-15))
				this.LastCameraTransform = nil
			end
		end
	end

	local function OnKeyUp(input, processed)
		if input.KeyCode == Enum.KeyCode.Left then
			this.TurningLeft = false
		elseif input.KeyCode == Enum.KeyCode.Right then
			this.TurningRight = false
		end
	end

	local function onWindowFocusReleased()
		this:ResetInputStates()
	end

	local lastThumbstickRotate = nil
	local numOfSeconds = 0.7
	local currentSpeed = 0
	local maxSpeed = 6
	local vrMaxSpeed = 4
	local lastThumbstickPos = Vector2.new(0,0)
	local ySensitivity = 0.65
	local lastVelocity = nil

	-- K is a tunable parameter that changes the shape of the S-curve
	-- the larger K is the more straight/linear the curve gets
	local k = 0.35
	local lowerK = 0.8
	local function SCurveTranform(t)
		t = clamp(-1,1,t)
		if t >= 0 then
			return (k*t) / (k - t + 1)
		end
		return -((lowerK*-t) / (lowerK + t + 1))
	end

	-- DEADZONE
	local DEADZONE = 0.1
	local function toSCurveSpace(t)
		return (1 + DEADZONE) * (2*math.abs(t) - 1) - DEADZONE
	end

	local function fromSCurveSpace(t)
		return t/2 + 0.5
	end

	local function gamepadLinearToCurve(thumbstickPosition)
		local function onAxis(axisValue)
			local sign = 1
			if axisValue < 0 then
				sign = -1
			end
			local point = fromSCurveSpace(SCurveTranform(toSCurveSpace(math.abs(axisValue))))
			point = point * sign
			return clamp(-1, 1, point)
		end
		return Vector2_new(onAxis(thumbstickPosition.x), onAxis(thumbstickPosition.y))
	end

	function this:UpdateGamepad()
		local gamepadPan = this.GamepadPanningCamera
		if gamepadPan and (hasGameLoaded or not VRService.VREnabled) then
			gamepadPan = gamepadLinearToCurve(gamepadPan)
			local currentTime = tick()
			if gamepadPan.X ~= 0 or gamepadPan.Y ~= 0 then
				this.userPanningTheCamera = true
			elseif gamepadPan == ZERO_VECTOR2 then
				lastThumbstickRotate = nil
				if lastThumbstickPos == ZERO_VECTOR2 then
					currentSpeed = 0
				end
			end

			local finalConstant = 0

			if lastThumbstickRotate then
				if VRService.VREnabled then
					currentSpeed = vrMaxSpeed
				else
					local elapsedTime = (currentTime - lastThumbstickRotate) * 10
					currentSpeed = currentSpeed + (maxSpeed * ((elapsedTime*elapsedTime)/numOfSeconds))

					if currentSpeed > maxSpeed then currentSpeed = maxSpeed end

					if lastVelocity then
						local velocity = (gamepadPan - lastThumbstickPos)/(currentTime - lastThumbstickRotate)
						local velocityDeltaMag = (velocity - lastVelocity).magnitude

						if velocityDeltaMag > 12 then
							currentSpeed = currentSpeed * (20/velocityDeltaMag)
							if currentSpeed > maxSpeed then currentSpeed = maxSpeed end
						end
					end
				end

				local success, gamepadCameraSensitivity = pcall(function() return GameSettings.GamepadCameraSensitivity end)
				finalConstant = success and (gamepadCameraSensitivity * currentSpeed) or currentSpeed
				lastVelocity = (gamepadPan - lastThumbstickPos)/(currentTime - lastThumbstickRotate)
			end

			lastThumbstickPos = gamepadPan
			lastThumbstickRotate = currentTime

			return Vector2_new( gamepadPan.X * finalConstant, gamepadPan.Y * finalConstant * ySensitivity * GameSettings:GetCameraYInvertValue())
		end

		return ZERO_VECTOR2
	end

	local InputBeganConn, InputChangedConn, InputEndedConn, WindowUnfocusConn, MenuOpenedConn, ShiftLockToggleConn, GamepadConnectedConn, GamepadDisconnectedConn, TouchActivateConn = nil, nil, nil, nil, nil, nil, nil, nil, nil

	function this:DisconnectInputEvents()
		if InputBeganConn then
			InputBeganConn:disconnect()
			InputBeganConn = nil
		end
		if InputChangedConn then
			InputChangedConn:disconnect()
			InputChangedConn = nil
		end
		if InputEndedConn then
			InputEndedConn:disconnect()
			InputEndedConn = nil
		end
		if WindowUnfocusConn then
			WindowUnfocusConn:disconnect()
			WindowUnfocusConn = nil
		end 
		if MenuOpenedConn then
			MenuOpenedConn:disconnect()
			MenuOpenedConn = nil
		end
		if ShiftLockToggleConn then
			ShiftLockToggleConn:disconnect()
			ShiftLockToggleConn = nil
		end
		if GamepadConnectedConn then
			GamepadConnectedConn:disconnect()
			GamepadConnectedConn = nil
		end
		if GamepadDisconnectedConn then
			GamepadDisconnectedConn:disconnect()
			GamepadDisconnectedConn = nil
		end
		if subjectStateChangedConn then
			subjectStateChangedConn:disconnect()
			subjectStateChangedConn = nil
		end
		if workspaceChangedConn then
			workspaceChangedConn:disconnect()
			workspaceChangedConn = nil
		end
		if TouchActivateConn then
			TouchActivateConn:disconnect()
			TouchActivateConn = nil
		end

		this.TurningLeft = false
		this.TurningRight = false
		this.LastCameraTransform = nil
		self.LastSubjectCFrame = nil
		this.UserPanningTheCamera = false
		this.RotateInput = Vector2.new()
		this.GamepadPanningCamera = Vector2.new(0,0)

		-- Reset input states
		startPos = nil
		lastPos = nil
		panBeginLook = nil
		isRightMouseDown = false
		isMiddleMouseDown = false

		fingerTouches = {}
		NumUnsunkTouches = 0

		StartingDiff = nil
		pinchBeginZoom = nil

		-- Unlock mouse for example if right mouse button was being held down
		if UserInputService.MouseBehavior ~= Enum.MouseBehavior.LockCenter then
			UserInputService.MouseBehavior = Enum.MouseBehavior.Default
		end
	end

	function this:ResetInputStates()
		isRightMouseDown = false
		isMiddleMouseDown = false
		this.TurningRight = false
		this.TurningLeft = false
		OnMousePanButtonReleased() -- this function doesn't seem to actually need parameters

		if UserInputService.TouchEnabled then
			--[[menu opening was causing serious touch issues
			this should disable all active touch events if
			they're active when menu opens.]]
			for inputObject, value in pairs(fingerTouches) do
				fingerTouches[inputObject] = nil
			end
			panBeginLook = nil
			startPos = nil
			lastPos = nil
			this.UserPanningTheCamera = false
			StartingDiff = nil
			pinchBeginZoom = nil
			NumUnsunkTouches = 0
		end
	end

	function this.getGamepadPan(name, state, input)
		if state == Enum.UserInputState.Cancel then
			this.GamepadPanningCamera = ZERO_VECTOR2
			return
		end		

		if input.UserInputType == this.activeGamepad and input.KeyCode == Enum.KeyCode.Thumbstick2 then
			local inputVector = Vector2.new(input.Position.X, -input.Position.Y)
			if inputVector.magnitude > THUMBSTICK_DEADZONE then
				this.GamepadPanningCamera = Vector2_new(input.Position.X, -input.Position.Y)
			else
				this.GamepadPanningCamera = ZERO_VECTOR2
			end
		end
	end

	function this.doGamepadZoom(name, state, input)
		if input.UserInputType == this.activeGamepad and input.KeyCode == Enum.KeyCode.ButtonR3 and state == Enum.UserInputState.Begin then
			if this.ZoomEnabled then
				if this:GetCameraZoom() > 0.5 then
					this:ZoomCamera(0)
				else
					this:ZoomCamera(10)
				end
			end
		end
	end
	
	function this:BindGamepadInputActions()
		ContextActionService:BindAction("RootCamGamepadPan", this.getGamepadPan, false, Enum.KeyCode.Thumbstick2)
		ContextActionService:BindAction("RootCamGamepadZoom", this.doGamepadZoom, false, Enum.KeyCode.ButtonR3)
	end

	function this:ConnectInputEvents()	
		InputBeganConn = UserInputService.InputBegan:connect(function(input, processed)
			if input.UserInputType == Enum.UserInputType.Touch then
				OnTouchBegan(input, processed)
			elseif input.UserInputType == Enum.UserInputType.MouseButton2 then
				OnMouse2Down(input, processed)
			elseif input.UserInputType == Enum.UserInputType.MouseButton3 then
				OnMouse3Down(input, processed)
			end
			-- Keyboard
			if input.UserInputType == Enum.UserInputType.Keyboard then
				OnKeyDown(input, processed)
			end
		end)

		InputChangedConn = UserInputService.InputChanged:connect(function(input, processed)
			if input.UserInputType == Enum.UserInputType.Touch then
				OnTouchChanged(input, processed)
			elseif input.UserInputType == Enum.UserInputType.MouseMovement then
				OnMouseMoved(input, processed)
			elseif input.UserInputType == Enum.UserInputType.MouseWheel then
				OnMouseWheel(input, processed)
			end
		end)

		InputEndedConn = UserInputService.InputEnded:connect(function(input, processed)
			if input.UserInputType == Enum.UserInputType.Touch then
				OnTouchEnded(input, processed)
			elseif input.UserInputType == Enum.UserInputType.MouseButton2 then
				OnMouse2Up(input, processed)
			elseif input.UserInputType == Enum.UserInputType.MouseButton3 then
				OnMouse3Up(input, processed)
			end
			-- Keyboard
			if input.UserInputType == Enum.UserInputType.Keyboard then
				OnKeyUp(input, processed)
			end
		end)

		WindowUnfocusConn = UserInputService.WindowFocusReleased:connect(onWindowFocusReleased)

		MenuOpenedConn = GuiService.MenuOpened:connect(function()
			this:ResetInputStates()
		end)

		workspaceChangedConn = workspace:GetPropertyChangedSignal("CurrentCamera"):Connect(onCurrentCameraChanged)
		if workspace.CurrentCamera then
			onCurrentCameraChanged()
		end

		ShiftLockToggleConn = ShiftLockController.OnShiftLockToggled.Event:connect(function()
			this:UpdateMouseBehavior()
		end)

		this.RotateInput = Vector2.new()

		this.activeGamepad = nil
		local function assignActivateGamepad()
			local connectedGamepads = UserInputService:GetConnectedGamepads()
			if #connectedGamepads > 0 then
				for i = 1, #connectedGamepads do
					if this.activeGamepad == nil then
						this.activeGamepad = connectedGamepads[i]
					elseif connectedGamepads[i].Value < this.activeGamepad.Value then
						this.activeGamepad = connectedGamepads[i]
					end
				end
			end

			if this.activeGamepad == nil then -- nothing is connected, at least set up for gamepad1
				this.activeGamepad = Enum.UserInputType.Gamepad1
			end
		end

		GamepadConnectedConn = UserInputService.GamepadDisconnected:connect(function(gamepadEnum)
			if this.activeGamepad ~= gamepadEnum then return end
			this.activeGamepad = nil
			assignActivateGamepad()
		end)

		GamepadDisconnectedConn = UserInputService.GamepadConnected:connect(function(gamepadEnum)
			if this.activeGamepad == nil then
				assignActivateGamepad()
			end
		end)

		self:BindGamepadInputActions()
		
		assignActivateGamepad()

		-- set mouse behavior
		self:UpdateMouseBehavior()
	end
	
	--Process tweens related to tap-to-recenter and double-tap-to-zoom
	--Needs to be called from specific cameras on each update
	function this:ProcessTweens()
		for name, tween in pairs(tweens) do
			local alpha = math.min(1.0, (tick() - tween.start)/tween.duration)
			tween.to = tween.func(tween.from, tween.to, alpha)
			if math.abs(1 - alpha) < 0.0001 then
				tweens[name] = nil
			end
		end
	end

	function this:SetEnabled(newState)
		if newState ~= self.Enabled then
			self.Enabled = newState
			if self.Enabled then
				self:ConnectInputEvents()
				self.cframe = workspace.CurrentCamera.CFrame
			else
				self:DisconnectInputEvents()
			end
		end
	end

	local function OnPlayerAdded(player)
		player.Changed:connect(function(prop)
			if this.Enabled then
				if prop == "CameraMode" or prop == "CameraMaxZoomDistance" or prop == "CameraMinZoomDistance" then
					 this:ZoomCameraFixedBy(0)
				end
			end
		end)
		
		local function OnCharacterAdded(newCharacter)

			local humanoid = findPlayerHumanoid(player)
			local start = tick()
			while tick() - start < 0.3 and (humanoid == nil or humanoid.Torso == nil) do
				wait()
				humanoid = findPlayerHumanoid(player)
			end

			if humanoid and humanoid.Torso and player.Character == newCharacter then
				local newDesiredLook = (humanoid.Torso.CFrame.lookVector - Vector3.new(0, math.sin(math.rad(DEFAULT_CAMERA_ANGLE)), 0)).unit
				local horizontalShift = findAngleBetweenXZVectors(newDesiredLook, this:GetCameraLook())
				local vertShift = math.asin(this:GetCameraLook().y) - math.asin(newDesiredLook.y)
				if not IsFinite(horizontalShift) then
					horizontalShift = 0
				end
				if not IsFinite(vertShift) then
					vertShift = 0
				end
				this.RotateInput = Vector2.new(horizontalShift, vertShift)
				
				-- reset old camera info so follow cam doesn't rotate us
				this.LastCameraTransform = nil
			end
			
			-- Need to wait for camera cframe to update before we zoom in
			-- Not waiting will force camera to original cframe
			wait()
			this:ZoomCamera(this.DefaultZoom)
		end

		player.CharacterAdded:connect(function(character)
			if this.Enabled or SetCameraOnSpawn then
				OnCharacterAdded(character)
				SetCameraOnSpawn = false
			end
		end)
		if player.Character then
			spawn(function() OnCharacterAdded(player.Character) end)
		end
	end
	if PlayersService.LocalPlayer then
		OnPlayerAdded(PlayersService.LocalPlayer)
	end
	PlayersService.ChildAdded:connect(function(child)
		if child and PlayersService.LocalPlayer == child then
			OnPlayerAdded(PlayersService.LocalPlayer)
		end
	end)

	local function OnGameLoaded()
		hasGameLoaded = true
	end

	spawn(function()
		if game:IsLoaded() then
			OnGameLoaded()
		else
			game.Loaded:wait()
			OnGameLoaded()
		end
	end)
	
	local function OnDynamicThumbstickEnabled()
		if UserInputService.TouchEnabled then
			isDynamicThumbstickEnabled = true
		end
	end
	
	local function OnDynamicThumbstickDisabled()
		isDynamicThumbstickEnabled = false
	end
	
	local function OnGameSettingsTouchMovementModeChanged()
		if LocalPlayer.DevTouchMovementMode == Enum.DevTouchMovementMode.UserChoice then
			if GameSettings.TouchMovementMode.Name == "DynamicThumbstick" then
				OnDynamicThumbstickEnabled()
			else
				OnDynamicThumbstickDisabled()
			end
		end
	end
	
	local function OnDevTouchMovementModeChanged()
		if LocalPlayer.DevTouchMovementMode.Name == "DynamicThumbstick" then
			OnDynamicThumbstickEnabled()
		else
			OnGameSettingsTouchMovementModeChanged()
		end
	end
	
	if PlayersService.LocalPlayer then
		PlayersService.LocalPlayer.Changed:Connect(function(prop)
			if prop == "DevTouchMovementMode" then
				OnDevTouchMovementModeChanged()
			end
		end)
		OnDevTouchMovementModeChanged()
	end
	
	GameSettings.Changed:Connect(function(prop)
		if prop == "TouchMovementMode" then
			OnGameSettingsTouchMovementModeChanged()
		end
	end)
	OnGameSettingsTouchMovementModeChanged()
	GameSettings:SetCameraYInvertVisible()
	pcall(function() GameSettings:SetGamepadCameraSensitivityVisible() end)
	
	return this
end

return CreateCamera
