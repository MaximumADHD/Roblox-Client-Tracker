local PlayersService = game:GetService('Players')
local VRService = game:GetService("VRService")

local RootCameraCreator = require(script.Parent)

local CFrame_new = CFrame.new
local Vector2_new = Vector2.new
local Vector3_new = Vector3.new
local math_min = math.min
local math_max = math.max
local math_atan2 = math.atan2
local math_rad = math.rad
local math_abs = math.abs

local HUMANOIDSTATE_CLIMBING = Enum.HumanoidStateType.Climbing
local ZERO_VECTOR2 = Vector2.new(0, 0)
local UP_VECTOR = Vector3.new(0, 1, 0)
local XZ_VECTOR = Vector3.new(1, 0, 1)
local ZERO_VECTOR3 = Vector3.new(0, 0, 0)
local PORTRAIT_OFFSET = Vector3.new(0, -3, 0)

local function clamp(low, high, num)
	return num > high and high or num < low and low or num
end

local function IsFinite(num)
	return num == num and num ~= 1/0 and num ~= -1/0
end

local function IsFiniteVector3(vec3)
	return IsFinite(vec3.x) and IsFinite(vec3.y) and IsFinite(vec3.z)
end

-- May return NaN or inf or -inf
local function findAngleBetweenXZVectors(vec2, vec1)
	-- This is a way of finding the angle between the two vectors:
	return math_atan2(vec1.X*vec2.Z-vec1.Z*vec2.X, vec1.X*vec2.X + vec1.Z*vec2.Z)
end

local function CreateFollowCamera()
	local module = RootCameraCreator()
	
	local tweenAcceleration = math_rad(220)
	local tweenSpeed = math_rad(0)
	local tweenMaxSpeed = math_rad(250)
	local timeBeforeAutoRotate = 2
	
	local lastUpdate = tick()
	module.LastUserPanCamera = tick()
	function module:Update()
		module:ProcessTweens()
		local now = tick()
		local timeDelta = (now - lastUpdate)
		
		local userPanningTheCamera = (self.UserPanningTheCamera == true)
		local camera = workspace.CurrentCamera
		local player = PlayersService.LocalPlayer
		local humanoid = self:GetHumanoid()
		local cameraSubject = camera and camera.CameraSubject
		local isClimbing = humanoid and humanoid:GetState() == HUMANOIDSTATE_CLIMBING
		local isInVehicle = cameraSubject and cameraSubject:IsA('VehicleSeat')
		local isOnASkateboard = cameraSubject and cameraSubject:IsA('SkateboardPlatform')
		
		if lastUpdate == nil or now - lastUpdate > 1 then
			module:ResetCameraLook()
			self.LastCameraTransform = nil
		end
		
		if lastUpdate then
			
			if self:ShouldUseVRRotation() then
				self.RotateInput = self.RotateInput + self:GetVRRotationInput()
			else
				-- Cap out the delta to 0.1 so we don't get some crazy things when we re-resume from
				local delta = math_min(0.1, now - lastUpdate)
				local angle = 0
				-- NOTE: Traditional follow camera does not rotate with arrow keys
				if not (isInVehicle or isOnASkateboard) then
					angle = angle + (self.TurningLeft and -120 or 0)
					angle = angle + (self.TurningRight and 120 or 0)
				end
				
				local gamepadRotation = self:UpdateGamepad()
				if gamepadRotation ~= Vector2.new(0,0) then
					userPanningTheCamera = true
					self.RotateInput = self.RotateInput + (gamepadRotation * delta)
				end
				
				if angle ~= 0 then
					userPanningTheCamera = true
					self.RotateInput = self.RotateInput + Vector2_new(math_rad(angle * delta), 0)
				end
			end
		end
		
		-- Reset tween speed if user is panning
		if userPanningTheCamera then
			tweenSpeed = 0
			module.LastUserPanCamera = tick()
		end
		
		local userRecentlyPannedCamera = now - module.LastUserPanCamera < timeBeforeAutoRotate
		
		local subjectPosition = self:GetSubjectPosition()
		if subjectPosition and player and camera then
			local zoom = self:GetCameraZoom()
			if zoom < 0.5 then
				zoom = 0.5
			end
			
			if self:GetShiftLock() and not self:IsInFirstPerson() then
				local newLookVector = self:RotateCamera(self:GetCameraLook(), self.RotateInput)
				local offset = ((newLookVector * XZ_VECTOR):Cross(UP_VECTOR).unit * 1.75)
				if IsFiniteVector3(offset) then
					subjectPosition = subjectPosition + offset
				end
			else
				if self.LastCameraTransform and not userPanningTheCamera then
					local isInFirstPerson = self:IsInFirstPerson()
					if (isClimbing or isInVehicle or isOnASkateboard) and lastUpdate and humanoid and humanoid.Torso then
						if isInFirstPerson then
							if self.LastSubjectCFrame and (isInVehicle or isOnASkateboard) and cameraSubject:IsA('BasePart') then
								local y = -findAngleBetweenXZVectors(self.LastSubjectCFrame.lookVector, cameraSubject.CFrame.lookVector)
								if IsFinite(y) then
									self.RotateInput = self.RotateInput + Vector2.new(y, 0)
								end
								tweenSpeed = 0
							end
						elseif not userRecentlyPannedCamera then
							local forwardVector = humanoid.Torso.CFrame.lookVector
							if isOnASkateboard then
								forwardVector = cameraSubject.CFrame.lookVector
							end
							
							tweenSpeed = clamp(0, tweenMaxSpeed, tweenSpeed + tweenAcceleration * timeDelta)
							
							local percent = clamp(0, 1, tweenSpeed*timeDelta)
							if not isClimbing and self:IsInFirstPerson() then
								percent = 1
							end
							local y = findAngleBetweenXZVectors(forwardVector, self:GetCameraLook())
							-- Check for NaN
							if IsFinite(y) and math_abs(y) > 0.0001 then
								self.RotateInput = self.RotateInput + Vector2.new(y * percent, 0)
							end
						end
					elseif not (isInFirstPerson or userRecentlyPannedCamera) and not VRService.VREnabled then
						local lastVec = -(self.LastCameraTransform.p - subjectPosition)
						
						local y = findAngleBetweenXZVectors(lastVec, self:GetCameraLook())
						
						-- This cutoff is to decide if the humanoid's angle of movement,
						-- relative to the camera's look vector, is enough that
						-- we want the camera to be following them. The point is to provide 
						-- a sizable deadzone to allow more precise forward movements.
						local thetaCutoff = 0.4
						
						-- Check for NaNs
						if IsFinite(y) and math.abs(y) > 0.0001 and math_abs(y) > thetaCutoff*timeDelta then
							self.RotateInput = self.RotateInput + Vector2.new(y, 0)
						end
					end
				end
			end
			local newLookVector = self:RotateCamera(self:GetCameraLook(), self.RotateInput)
			self.RotateInput = ZERO_VECTOR2

			if VRService.VREnabled then
				camera.Focus = self:GetVRFocus(subjectPosition, timeDelta)
			elseif self:IsPortraitMode() then
				camera.Focus = CFrame_new(subjectPosition + PORTRAIT_OFFSET)
			else
				camera.Focus = CFrame_new(subjectPosition)
			end
			camera.CFrame = CFrame_new(camera.Focus.p - (zoom * newLookVector), camera.Focus.p) + Vector3.new(0, self:GetCameraHeight(), 0)

			self.LastCameraTransform = camera.CFrame
			self.LastCameraFocus = camera.Focus
			if isInVehicle or isOnASkateboard and cameraSubject:IsA('BasePart') then
				self.LastSubjectCFrame = cameraSubject.CFrame
			else
				self.LastSubjectCFrame = nil
			end
		end
		
		lastUpdate = now
	end
	
	return module
end

return CreateFollowCamera
