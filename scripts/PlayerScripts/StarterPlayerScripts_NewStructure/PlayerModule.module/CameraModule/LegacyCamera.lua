--[[
	LegacyCamera - Implements legacy controller types: Attach, Fixed, Watch
	2018 Camera Update - AllYourBlox
--]]

local FFlagUserCameraInputRefactor do
	local success, result = pcall(function()
		return UserSettings():IsUserFeatureEnabled("UserCameraInputRefactor")
	end)
	FFlagUserCameraInputRefactor = success and result
end

local ZERO_VECTOR2 = Vector2.new(0,0)

local Util = require(script.Parent:WaitForChild("CameraUtils"))
local CameraInput = require(script.Parent:WaitForChild("CameraInput"))

--[[ Services ]]--
local PlayersService = game:GetService('Players')

--[[ The Module ]]--
local BaseCamera = require(script.Parent:WaitForChild("BaseCamera"))
local LegacyCamera = setmetatable({}, BaseCamera)
LegacyCamera.__index = LegacyCamera

function LegacyCamera.new()
	local self = setmetatable(BaseCamera.new(), LegacyCamera)

	self.cameraType = Enum.CameraType.Fixed
	self.lastUpdate = tick()
	self.lastDistanceToSubject = nil

	return self
end

function LegacyCamera:GetModuleName()
	return "LegacyCamera"
end

--[[ Functions overridden from BaseCamera ]]--
function LegacyCamera:SetCameraToSubjectDistance(desiredSubjectDistance)
	return BaseCamera.SetCameraToSubjectDistance(self,desiredSubjectDistance)
end

function LegacyCamera:Update(dt)

	-- Cannot update until cameraType has been set
	if not self.cameraType then return end

	local now = tick()
	local timeDelta = (now - self.lastUpdate)
	local camera = 	workspace.CurrentCamera
	local newCameraCFrame = camera.CFrame
	local newCameraFocus = camera.Focus
	local player = PlayersService.LocalPlayer

	if self.lastUpdate == nil or timeDelta > 1 then
		self.lastDistanceToSubject = nil
	end
	local subjectPosition = self:GetSubjectPosition()

	if self.cameraType == Enum.CameraType.Fixed then
		if self.lastUpdate and not FFlagUserCameraInputRefactor then
			-- Cap out the delta to 0.1 so we don't get some crazy things when we re-resume from
			local delta = math.min(0.1, now - self.lastUpdate)
			local gamepadRotation = self:UpdateGamepad()
			self.rotateInput = self.rotateInput + (gamepadRotation * delta)
		end

		if subjectPosition and player and camera then
			local distanceToSubject = self:GetCameraToSubjectDistance()
			local newLookVector
			if FFlagUserCameraInputRefactor then
				newLookVector = self:CalculateNewLookVectorFromArg(nil, CameraInput.getRotation())
			else
				newLookVector = self:CalculateNewLookVector()
				self.rotateInput = ZERO_VECTOR2
			end

			newCameraFocus = camera.Focus -- Fixed camera does not change focus
			newCameraCFrame = CFrame.new(camera.CFrame.p, camera.CFrame.p + (distanceToSubject * newLookVector))
		end
	elseif self.cameraType == Enum.CameraType.Attach then
		if subjectPosition and camera then
			local distanceToSubject = self:GetCameraToSubjectDistance()
			local humanoid = self:GetHumanoid()
			if self.lastUpdate and humanoid and humanoid.RootPart and not FFlagUserCameraInputRefactor then

				-- Cap out the delta to 0.1 so we don't get some crazy things when we re-resume from
				local delta = math.min(0.1, now - self.lastUpdate)
				local gamepadRotation = self:UpdateGamepad()
				self.rotateInput = self.rotateInput + (gamepadRotation * delta)

				local forwardVector = humanoid.RootPart.CFrame.lookVector

				local y = Util.GetAngleBetweenXZVectors(forwardVector, self:GetCameraLookVector())
				if Util.IsFinite(y) then
					-- Preserve vertical rotation from user input
					self.rotateInput = Vector2.new(y, self.rotateInput.Y)
				end
			end

			local newLookVector
			if FFlagUserCameraInputRefactor then
				newLookVector = self:CalculateNewLookVectorFromArg(nil, CameraInput.getRotation())
			else
				newLookVector = self:CalculateNewLookVector()
				self.rotateInput = ZERO_VECTOR2
			end

			newCameraFocus = CFrame.new(subjectPosition)
			newCameraCFrame = CFrame.new(subjectPosition - (distanceToSubject * newLookVector), subjectPosition)
		end
	elseif self.cameraType == Enum.CameraType.Watch then
		if subjectPosition and player and camera then
			local cameraLook = nil

			local humanoid = self:GetHumanoid()
			if humanoid and humanoid.RootPart then
				local diffVector = subjectPosition - camera.CFrame.p
				cameraLook = diffVector.unit

				if self.lastDistanceToSubject and self.lastDistanceToSubject == self:GetCameraToSubjectDistance() then
					-- Don't clobber the zoom if they zoomed the camera
					local newDistanceToSubject = diffVector.magnitude
					self:SetCameraToSubjectDistance(newDistanceToSubject)
				end
			end

			local distanceToSubject = self:GetCameraToSubjectDistance()
			local newLookVector
			if FFlagUserCameraInputRefactor then
				newLookVector = self:CalculateNewLookVectorFromArg(cameraLook, CameraInput.getRotation())
			else
				newLookVector = self:CalculateNewLookVector(cameraLook)
				self.rotateInput = ZERO_VECTOR2
			end

			newCameraFocus = CFrame.new(subjectPosition)
			newCameraCFrame = CFrame.new(subjectPosition - (distanceToSubject * newLookVector), subjectPosition)

			self.lastDistanceToSubject = distanceToSubject
		end
	else
		-- Unsupported type, return current values unchanged
		return camera.CFrame, camera.Focus
	end

	self.lastUpdate = now
	return newCameraCFrame, newCameraFocus
end

return LegacyCamera
