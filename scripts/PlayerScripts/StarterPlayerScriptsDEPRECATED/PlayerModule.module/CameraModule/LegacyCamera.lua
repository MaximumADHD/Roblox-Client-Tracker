--!nonstrict
--[[
	LegacyCamera - Implements legacy controller types: Attach, Fixed, Watch
	2018 Camera Update - AllYourBlox
--]]

local ZERO_VECTOR2 = Vector2.new()
local PITCH_LIMIT = math.rad(80)

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

function LegacyCamera:Update(dt: number): (CFrame?, CFrame?)

	-- Cannot update until cameraType has been set
	if not self.cameraType then
		return nil, nil
	end

	local now = tick()
	local timeDelta = (now - self.lastUpdate)
	local camera = 	workspace.CurrentCamera
	local newCameraCFrame = camera.CFrame
	local newCameraFocus = camera.Focus
	local player = PlayersService.LocalPlayer
	local rotateInput = CameraInput.getRotation(dt)

	if self.lastUpdate == nil or timeDelta > 1 then
		self.lastDistanceToSubject = nil
	end
	local subjectPosition: Vector3 = self:GetSubjectPosition()

	if self.cameraType == Enum.CameraType.Fixed then
		if subjectPosition and player and camera then
			local distanceToSubject = self:GetCameraToSubjectDistance()
			local newLookVector = self:CalculateNewLookVectorFromArg(nil, rotateInput)

			newCameraFocus = camera.Focus -- Fixed camera does not change focus
			newCameraCFrame = CFrame.new(camera.CFrame.p, camera.CFrame.p + (distanceToSubject * newLookVector))
		end

	elseif self.cameraType == Enum.CameraType.Attach then
		local subjectCFrame = self:GetSubjectCFrame()
		local cameraPitch = camera.CFrame:ToEulerAnglesYXZ()
		local _, subjectYaw = subjectCFrame:ToEulerAnglesYXZ()

		cameraPitch = math.clamp(cameraPitch - rotateInput.Y, -PITCH_LIMIT, PITCH_LIMIT)

		newCameraFocus = CFrame.new(subjectCFrame.p)*CFrame.fromEulerAnglesYXZ(cameraPitch, subjectYaw, 0)
		newCameraCFrame = newCameraFocus*CFrame.new(0, 0, self:StepZoom())

	elseif self.cameraType == Enum.CameraType.Watch then
		if subjectPosition and player and camera then
			local cameraLook = nil

			if subjectPosition == camera.CFrame.p then
				warn("Camera cannot watch subject in same position as itself")
				return camera.CFrame, camera.Focus
			end

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

			local distanceToSubject: number = self:GetCameraToSubjectDistance()
			local newLookVector: Vector3 = self:CalculateNewLookVectorFromArg(cameraLook, rotateInput)

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
