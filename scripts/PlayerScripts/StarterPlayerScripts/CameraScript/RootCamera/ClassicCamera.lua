
local PlayersService = game:GetService('Players')
local VRService = game:GetService("VRService")

local RootCameraCreator = require(script.Parent)

local UP_VECTOR = Vector3.new(0, 1, 0)
local XZ_VECTOR = Vector3.new(1, 0, 1)
local ZERO_VECTOR2 = Vector2.new(0, 0)

local VR_PITCH_FRACTION = 0.25

local Vector3_new = Vector3.new
local CFrame_new = CFrame.new
local math_min = math.min
local math_max = math.max
local math_atan2 = math.atan2
local math_rad = math.rad
local math_abs = math.abs

local function clamp(low, high, num)
	return (num > high and high or num < low and low or num)
end

local function IsFinite(num)
	return num == num and num ~= 1/0 and num ~= -1/0
end

local function IsFiniteVector3(vec3)
	return IsFinite(vec3.x) and IsFinite(vec3.y) and IsFinite(vec3.z)
end

-- May return NaN or inf or -inf
-- This is a way of finding the angle between the two vectors:
local function findAngleBetweenXZVectors(vec2, vec1)
	return math_atan2(vec1.X*vec2.Z-vec1.Z*vec2.X, vec1.X*vec2.X + vec1.Z*vec2.Z)
end

local function CreateClassicCamera()
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
		local camera = 	workspace.CurrentCamera
		local player = PlayersService.LocalPlayer
		local humanoid = self:GetHumanoid()
		local cameraSubject = camera and camera.CameraSubject
		local isInVehicle = cameraSubject and cameraSubject:IsA('VehicleSeat')
		local isOnASkateboard = cameraSubject and cameraSubject:IsA('SkateboardPlatform')
		
		if lastUpdate == nil or now - lastUpdate > 1 then
			module:ResetCameraLook()
			self.LastCameraTransform = nil
		end	
		
		if lastUpdate then
			local gamepadRotation = self:UpdateGamepad()
			
			if self:ShouldUseVRRotation() then				
				self.RotateInput = self.RotateInput + self:GetVRRotationInput()
			else
				-- Cap out the delta to 0.1 so we don't get some crazy things when we re-resume from
				local delta = math_min(0.1, now - lastUpdate)
				
				if gamepadRotation ~= ZERO_VECTOR2 then
					userPanningTheCamera = true
					self.RotateInput = self.RotateInput + (gamepadRotation * delta)
				end

				local angle = 0
				if not (isInVehicle or isOnASkateboard) then
					angle = angle + (self.TurningLeft and -120 or 0)
					angle = angle + (self.TurningRight and 120 or 0)
				end
				
				if angle ~= 0 then
					self.RotateInput = self.RotateInput +  Vector2.new(math_rad(angle * delta), 0)
					userPanningTheCamera = true
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
				-- We need to use the right vector of the camera after rotation, not before
				local newLookVector = self:RotateCamera(self:GetCameraLook(), self.RotateInput)
				local offset = ((newLookVector * XZ_VECTOR):Cross(UP_VECTOR).unit * 1.75)

				if IsFiniteVector3(offset) then
					subjectPosition = subjectPosition + offset
				end
			else
				if not userPanningTheCamera and self.LastCameraTransform then
					local isInFirstPerson = self:IsInFirstPerson()
					if (isInVehicle or isOnASkateboard) and lastUpdate and humanoid and humanoid.Torso then
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
	
							local percent = clamp(0, 1, tweenSpeed * timeDelta)
							if self:IsInFirstPerson() then
								percent = 1
							end
							
							local y = findAngleBetweenXZVectors(forwardVector, self:GetCameraLook())
							if IsFinite(y) and math_abs(y) > 0.0001 then
								self.RotateInput = self.RotateInput + Vector2.new(y * percent, 0)
							end
						end
					end
				end
			end

			local VREnabled = VRService.VREnabled
			camera.Focus = VREnabled and self:GetVRFocus(subjectPosition, timeDelta) or CFrame_new(subjectPosition)

			local cameraFocusP = camera.Focus.p
			if VREnabled and not self:IsInFirstPerson() then
				local cameraHeight = self:GetCameraHeight()
				local vecToSubject = (subjectPosition - camera.CFrame.p)
				local distToSubject = vecToSubject.magnitude

				-- Only move the camera if it exceeded a maximum distance to the subject in VR
				if distToSubject > zoom or self.RotateInput.x ~= 0 then
					local desiredDist = math_min(distToSubject, zoom)
					vecToSubject = self:RotateCamera(vecToSubject.unit * XZ_VECTOR, Vector2.new(self.RotateInput.x, 0)) * desiredDist
					local newPos = cameraFocusP - vecToSubject
					local desiredLookDir = camera.CFrame.lookVector
					if self.RotateInput.x ~= 0 then
						desiredLookDir = vecToSubject
					end
					local lookAt = Vector3.new(newPos.x + desiredLookDir.x, newPos.y, newPos.z + desiredLookDir.z)
					self.RotateInput = ZERO_VECTOR2
					
					camera.CFrame = CFrame_new(newPos, lookAt) + Vector3_new(0, cameraHeight, 0)
				end
			else
				local newLookVector = self:RotateCamera(self:GetCameraLook(), self.RotateInput)
				self.RotateInput = ZERO_VECTOR2
				camera.CFrame = CFrame_new(cameraFocusP - (zoom * newLookVector), cameraFocusP)
			end

			self.LastCameraTransform = camera.CFrame
			self.LastCameraFocus = camera.Focus
			if (isInVehicle or isOnASkateboard) and cameraSubject:IsA('BasePart') then
				self.LastSubjectCFrame = cameraSubject.CFrame
			else
				self.LastSubjectCFrame = nil
			end
		end
		
		lastUpdate = now
	end
	
	return module
end

return CreateClassicCamera
