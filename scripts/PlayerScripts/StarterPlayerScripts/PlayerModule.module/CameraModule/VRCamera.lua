--[[
	VRCamera - Roblox VR camera control module
	2021 Roblox VR
--]]

--[[ Services ]]--
local PlayersService = game:GetService("Players")
local VRService = game:GetService("VRService")

-- Local private variables and constants
local CAMERA_BLACKOUT_TIME = 0.1
local FP_ZOOM = 0.5

-- requires
local CameraInput = require(script.Parent:WaitForChild("CameraInput"))
local Util = require(script.Parent:WaitForChild("CameraUtils"))

--[[ The Module ]]--
local VRBaseCamera = require(script.Parent:WaitForChild("VRBaseCamera"))
local VRCamera = setmetatable({}, VRBaseCamera)
VRCamera.__index = VRCamera

function VRCamera.new()
	local self = setmetatable(VRBaseCamera.new(), VRCamera)

	self.lastUpdate = tick()
	self:Reset()

	return self
end

function VRCamera:Reset()
	self.needsReset = true
	self.needsBlackout = true
	self.motionDetTime = 0.0
	self.blackOutTimer = 0
	self.lastCameraResetPosition = nil
	self.stepRotateTimeout = 0.0
end

function VRCamera:Update(timeDelta)
	local camera = workspace.CurrentCamera
	local newCameraCFrame = camera.CFrame
	local newCameraFocus = camera.Focus

	local player = PlayersService.LocalPlayer
	local humanoid = self:GetHumanoid()
	local cameraSubject = camera.CameraSubject

	if self.lastUpdate == nil or timeDelta > 1 then
		self.lastCameraTransform = nil
	end

	self:StepZoom()
	
	-- update fullscreen effects
	self:UpdateFadeFromBlack(timeDelta)
	self:UpdateEdgeBlur(player, timeDelta)

	local lastSubjPos = self.lastSubjectPosition
	local subjectPosition: Vector3 = self:GetSubjectPosition()
	
	-- transition from another camera or from spawn
	if self.needsBlackout then 
		self:StartFadeFromBlack()

		local dt = math.clamp(timeDelta, 0.0001, 0.1)
		self.blackOutTimer += dt
		if self.blackOutTimer > CAMERA_BLACKOUT_TIME and game:IsLoaded() then
			self.needsBlackout = false
			self.needsReset = true
		end
	end

	if subjectPosition and player and camera then
		newCameraFocus = self:GetVRFocus(subjectPosition, timeDelta)

		if self:IsInFirstPerson() then
			-- update camera CFrame
			newCameraCFrame, newCameraFocus = self:UpdateFirstPersonTransform(
				timeDelta,newCameraCFrame, newCameraFocus, lastSubjPos, subjectPosition)
		else -- 3rd person
			-- update camera CFrame
			newCameraCFrame, newCameraFocus = self:UpdateThirdPersonTransform(
				timeDelta, newCameraCFrame, newCameraFocus, lastSubjPos, subjectPosition)
		end

		self.lastCameraTransform = newCameraCFrame
		self.lastCameraFocus = newCameraFocus
	end

	self.lastUpdate = tick()
	return newCameraCFrame, newCameraFocus
end

function VRCamera:UpdateFirstPersonTransform(timeDelta, newCameraCFrame, newCameraFocus, lastSubjPos, subjectPosition)
	-- transition from TP to FP
	if self.needsReset then
		self:StartFadeFromBlack()
		self.needsReset = false
		self.stepRotateTimeout = 0.25
		self.VRCameraFocusFrozen = true
	end

	-- blur screen edge during movement
	local player = PlayersService.LocalPlayer
	local subjectDelta = lastSubjPos - subjectPosition
	if subjectDelta.magnitude > 0.01 then
		self:StartVREdgeBlur(player)
	end
	
	-- straight view, not angled down
	local cameraFocusP = newCameraFocus.p
	local cameraLookVector = self:GetCameraLookVector()
	cameraLookVector = Vector3.new(cameraLookVector.X, 0, cameraLookVector.Z).Unit

	if self.stepRotateTimeout > 0 then
		self.stepRotateTimeout -= timeDelta
	end

	-- step rotate in 1st person
	local rotateInput = CameraInput.getRotation()
	local yawDelta = 0
	if self.stepRotateTimeout <= 0.0 and math.abs(rotateInput.X) > 0.03 then
		yawDelta = 0.5
		if rotateInput.X < 0 then
			yawDelta = -0.5
		end
		self.needsReset = true
	end

	local newLookVector = self:CalculateNewLookVectorFromArg(cameraLookVector, Vector2.new(yawDelta, 0))
	newCameraCFrame = CFrame.new(cameraFocusP - (FP_ZOOM * newLookVector), cameraFocusP)
	
	return newCameraCFrame, newCameraFocus
end

function VRCamera:UpdateThirdPersonTransform(timeDelta, newCameraCFrame, newCameraFocus, lastSubjPos, subjectPosition)
	local zoom = self:GetCameraToSubjectDistance()
	if zoom < 0.5 then
		zoom = 0.5
	end

	if lastSubjPos ~= nil and self.lastCameraFocus ~= nil then
		-- compute delta of subject since last update
		local player = PlayersService.LocalPlayer
		local subjectDelta = lastSubjPos - subjectPosition
		local moveVector = require(player:WaitForChild("PlayerScripts").PlayerModule:WaitForChild("ControlModule")):GetMoveVector()

		-- is the subject still moving?
		local isMoving = subjectDelta.magnitude > 0.01 or moveVector.magnitude > 0.01
		if isMoving then
			self.motionDetTime = 0.1
		end

		self.motionDetTime = self.motionDetTime - timeDelta
		if self.motionDetTime > 0 then
			isMoving = true
		end

		if isMoving and not self.needsReset then
			-- if subject moves keep old camera focus
			newCameraFocus = self.lastCameraFocus

			-- if the focus subject stopped, time to reset the camera
			self.VRCameraFocusFrozen = true
		else
			local subjectMoved = self.lastCameraResetPosition == nil or (subjectPosition - self.lastCameraResetPosition).Magnitude > 1

			-- recenter the camera on teleport
			if (self.VRCameraFocusFrozen and subjectMoved) or self.needsReset then
				VRService:RecenterUserHeadCFrame()

				self.VRCameraFocusFrozen = false
				self.needsReset = false
				self.lastCameraResetPosition = subjectPosition

				self:ResetZoom()
				self:StartFadeFromBlack()

				-- get player facing direction
				local humanoid = self:GetHumanoid()
				local forwardVector = humanoid.Torso and humanoid.Torso.CFrame.lookVector or Vector3.new(1,0,0)
				-- adjust camera height
				local vecToCameraAtHeight = Vector3.new(forwardVector.X, 0, forwardVector.Z)
				local newCameraPos = newCameraFocus.Position - vecToCameraAtHeight * zoom
				-- compute new cframe at height level to subject
				local newFocus = Vector3.new(newCameraFocus.x, newCameraPos.y, newCameraFocus.z)
				local lookAtPos = Vector3.new(newCameraFocus.Position.X, newCameraPos.Y, newCameraFocus.Position.Z)
				newCameraCFrame = CFrame.new(newCameraPos, lookAtPos)
			end
		end
	end

	return newCameraCFrame, newCameraFocus
end

function VRCamera:EnterFirstPerson()
	self.inFirstPerson = true
	self:UpdateMouseBehavior()
end

function VRCamera:LeaveFirstPerson()
	self.inFirstPerson = false
	self.needsReset = true
	self:UpdateMouseBehavior()

	if self.VRBlur then
		self.VRBlur.Visible = false
	end
end

return VRCamera
