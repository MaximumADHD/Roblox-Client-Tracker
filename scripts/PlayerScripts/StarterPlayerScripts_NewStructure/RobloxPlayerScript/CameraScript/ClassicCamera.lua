--[[
	ClassicCamera - Classic Roblox camera control module
	2018 Camera Update - AllYourBlox

	Note: This module also handles camera control types Follow and Track, the
	latter of which is currently not distinguished from Classic
--]]

-- Local private variables and constants
local ZERO_VECTOR2 = Vector2.new(0,0)

local tweenAcceleration = math.rad(220)		--Radians/Second^2
local tweenSpeed = math.rad(0)				--Radians/Second
local tweenMaxSpeed = math.rad(250)			--Radians/Second
local TIME_BEFORE_AUTO_ROTATE = 2.0 		--Seconds, used when auto-aligning camera with vehicles
local PORTRAIT_OFFSET = Vector3.new(0,-3,0)

--[[ Services ]]--
local PlayersService = game:GetService('Players')
local VRService = game:GetService("VRService")

local Util = require(script.Parent:WaitForChild("CameraUtils"))

--[[ The Module ]]--
local BaseCamera = require(script.Parent:WaitForChild("BaseCamera"))
local ClassicCamera = setmetatable({}, BaseCamera)
ClassicCamera.__index = ClassicCamera

function ClassicCamera.new()
	local self = setmetatable(BaseCamera.new(), ClassicCamera)

	self.isFollowCamera = false
	self.lastUpdate = tick()

	return self
end

function ClassicCamera:GetModuleName()
	return "ClassicCamera"
end

-- Movement mode standardized to Enum.ComputerCameraMovementMode values
function ClassicCamera:SetCameraMovementMode( cameraMovementMode )
	BaseCamera.SetCameraMovementMode(self,cameraMovementMode)
	self.isFollowCamera = cameraMovementMode == Enum.ComputerCameraMovementMode.Follow
end

function ClassicCamera:Test()
	print("ClassicCamera:Test()")
end

function ClassicCamera:Update()
	local now = tick()
	local timeDelta = (now - self.lastUpdate)

	local camera = 	workspace.CurrentCamera
	local newCameraCFrame = camera.CFrame
	local newCameraFocus = camera.Focus
	local player = PlayersService.LocalPlayer
	local humanoid = self:GetHumanoid()
	local cameraSubject = camera.CameraSubject
	local isInVehicle = cameraSubject and cameraSubject:IsA('VehicleSeat')
	local isOnASkateboard = cameraSubject and cameraSubject:IsA('SkateboardPlatform')
	local isClimbing = humanoid and humanoid:GetState() == Enum.HumanoidStateType.Climbing

	if self.lastUpdate == nil or timeDelta > 1 then
		self.lastCameraTransform = nil
	end

	if self.lastUpdate then
		local gamepadRotation = self:UpdateGamepad()

		if self:ShouldUseVRRotation() then
			self.rotateInput = self.rotateInput + self:GetVRRotationInput()
		else
			-- Cap out the delta to 0.1 so we don't get some crazy things when we re-resume from
			local delta = math.min(0.1, timeDelta)

			if gamepadRotation ~= ZERO_VECTOR2 then
				self.rotateInput = self.rotateInput + (gamepadRotation * delta)
			end

			local angle = 0
			if not (isInVehicle or isOnASkateboard) then
				angle = angle + (self.turningLeft and -120 or 0)
				angle = angle + (self.turningRight and 120 or 0)
			end

			if angle ~= 0 then
				self.rotateInput = self.rotateInput +  Vector2.new(math.rad(angle * delta), 0)
			end
		end
	end

	-- Reset tween speed if user is panning
	if self.userPanningTheCamera then
		tweenSpeed = 0
		self.lastUserPanCamera = tick()
	end

	local userRecentlyPannedCamera = now - self.lastUserPanCamera < TIME_BEFORE_AUTO_ROTATE
	local subjectPosition = self:GetSubjectPosition()

	if subjectPosition and player and camera then
		local zoom = self:GetCameraToSubjectDistance()
		if zoom < 0.5 then
			zoom = 0.5
		end

		if self:GetIsMouseLocked() and not self:IsInFirstPerson() then
			-- We need to use the right vector of the camera after rotation, not before
			local newLookCFrame = self:CalculateNewLookCFrame()

			local offset = self:GetMouseLockOffset()
			local cameraRelativeOffset = offset.X * newLookCFrame.rightVector + offset.Y * newLookCFrame.upVector + offset.Z * newLookCFrame.lookVector

			--offset can be NAN, NAN, NAN if newLookVector has only y component
			if Util.IsFiniteVector3(cameraRelativeOffset) then
				subjectPosition = subjectPosition + cameraRelativeOffset
			end
		else
			if not self.userPanningTheCamera and self.lastCameraTransform then

				local isInFirstPerson = self:IsInFirstPerson()

				if (isInVehicle or isOnASkateboard or (self.isFollowCamera and isClimbing)) and self.lastUpdate and humanoid and humanoid.Torso then
					if isInFirstPerson then
						if self.lastSubjectCFrame and (isInVehicle or isOnASkateboard) and cameraSubject:IsA('BasePart') then
							local y = -Util.GetAngleBetweenXZVectors(self.lastSubjectCFrame.lookVector, cameraSubject.CFrame.lookVector)
							if Util.IsFinite(y) then
								self.rotateInput = self.rotateInput + Vector2.new(y, 0)
							end
							tweenSpeed = 0
						end
					elseif not userRecentlyPannedCamera then
						local forwardVector = humanoid.Torso.CFrame.lookVector
						if isOnASkateboard then
							forwardVector = cameraSubject.CFrame.lookVector
						end

						tweenSpeed = Util.Clamp(0, tweenMaxSpeed, tweenSpeed + tweenAcceleration * timeDelta)

						local percent = Util.Clamp(0, 1, tweenSpeed * timeDelta)
						if self:IsInFirstPerson() and not (self.isFollowCamera and self.isClimbing) then
							percent = 1
						end

						local y = Util.GetAngleBetweenXZVectors(forwardVector, self:GetCameraLookVector())
						if Util.IsFinite(y) and math.abs(y) > 0.0001 then
							self.rotateInput = self.rotateInput + Vector2.new(y * percent, 0)
						end
					end

				elseif self.isFollowCamera and (not (isInFirstPerson or userRecentlyPannedCamera) and not VRService.VREnabled) then
					-- Logic that was unique to the old FollowCamera module
					local lastVec = -(self.lastCameraTransform.p - subjectPosition)

					local y = Util.GetAngleBetweenXZVectors(lastVec, self:GetCameraLookVector())

					-- This cutoff is to decide if the humanoid's angle of movement,
					-- relative to the camera's look vector, is enough that
					-- we want the camera to be following them. The point is to provide
					-- a sizable deadzone to allow more precise forward movements.
					local thetaCutoff = 0.4

					-- Check for NaNs
					if Util.IsFinite(y) and math.abs(y) > 0.0001 and math.abs(y) > thetaCutoff * timeDelta then
						self.rotateInput = self.rotateInput + Vector2.new(y, 0)
					end
				end
			end
		end

		if not self.isFollowCamera then
			local VREnabled = VRService.VREnabled
			newCameraFocus = VREnabled and self:GetVRFocus(subjectPosition, timeDelta) or CFrame.new(subjectPosition)

			local cameraFocusP = newCameraFocus.p
			if VREnabled and not self:IsInFirstPerson() then
				local cameraHeight = self:GetCameraHeight()
				local vecToSubject = (subjectPosition - camera.CFrame.p)
				local distToSubject = vecToSubject.magnitude

				-- Only move the camera if it exceeded a maximum distance to the subject in VR
				if distToSubject > zoom or self.rotateInput.x ~= 0 then
					local desiredDist = math.min(distToSubject, zoom)
					vecToSubject = self:CalculateNewLookVectorVR() * desiredDist
					local newPos = cameraFocusP - vecToSubject
					local desiredLookDir = camera.CFrame.lookVector
					if self.rotateInput.x ~= 0 then
						desiredLookDir = vecToSubject
					end
					local lookAt = Vector3.new(newPos.x + desiredLookDir.x, newPos.y, newPos.z + desiredLookDir.z)
					self.rotateInput = ZERO_VECTOR2

					newCameraCFrame = CFrame.new(newPos, lookAt) + Vector3.new(0, cameraHeight, 0)
				end
			else
				local newLookVector = self:CalculateNewLookVector()
				self.rotateInput = ZERO_VECTOR2
				newCameraCFrame = CFrame.new(cameraFocusP - (zoom * newLookVector), cameraFocusP)
			end
		else -- is FollowCamera
			local newLookVector = self:CalculateNewLookVector()
			self.rotateInput = ZERO_VECTOR2

			if VRService.VREnabled then
				newCameraFocus = self:GetVRFocus(subjectPosition, timeDelta)
			elseif self.portraitMode then
				newCameraFocus = CFrame.new(subjectPosition + PORTRAIT_OFFSET)
			else
				newCameraFocus = CFrame.new(subjectPosition)
			end
			newCameraCFrame = CFrame.new(newCameraFocus.p - (zoom * newLookVector), newCameraFocus.p) + Vector3.new(0, self:GetCameraHeight(), 0)
		end

		self.lastCameraTransform = newCameraCFrame
		self.lastCameraFocus = newCameraFocus
		if (isInVehicle or isOnASkateboard) and cameraSubject:IsA('BasePart') then
			self.lastSubjectCFrame = cameraSubject.CFrame
		else
			self.lastSubjectCFrame = nil
		end
	end

	self.lastUpdate = now
	return newCameraCFrame, newCameraFocus
end

function ClassicCamera:EnterFirstPerson()
	self.inFirstPerson = true
	self:UpdateMouseBehavior()
end

function ClassicCamera:LeaveFirstPerson()
	self.inFirstPerson = false
	self:UpdateMouseBehavior()
end

return ClassicCamera
