--!nonstrict
--[[
	VRCamera - Roblox VR camera control module
	2021 Roblox VR
--]]

--[[ Services ]]--

local PlayersService = game:GetService("Players")
local VRService = game:GetService("VRService")
local UserGameSettings = UserSettings():GetService("UserGameSettings")

-- Local private variables and constants
local CAMERA_BLACKOUT_TIME = 0.1
local FP_ZOOM = 0.5
local TORSO_FORWARD_OFFSET_RATIO = 1/8
local NECK_OFFSET = -0.7

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
	self.focusOffset = CFrame.new()
	self:Reset()

	self.controlModule = require(PlayersService.LocalPlayer:WaitForChild("PlayerScripts").PlayerModule:WaitForChild("ControlModule"))
	self.savedAutoRotate = true 

	return self
end

function VRCamera:Reset()
	self.needsReset = true
	self.needsBlackout = true
	self.motionDetTime = 0.0
	self.blackOutTimer = 0
	self.lastCameraResetPosition = nil
	VRBaseCamera.Reset(self)
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
		-- update camera cframe based on first/third person
		if self:IsInFirstPerson() then
			if VRService.AvatarGestures then
				-- the immersion camera better aligns the player with the avatar
				newCameraCFrame, newCameraFocus = self:UpdateImmersionCamera(
					timeDelta,newCameraCFrame, newCameraFocus, lastSubjPos, subjectPosition)
			else
				newCameraCFrame, newCameraFocus = self:UpdateFirstPersonTransform(
					timeDelta,newCameraCFrame, newCameraFocus, lastSubjPos, subjectPosition)
			end
		else -- 3rd person
			if VRService.ThirdPersonFollowCamEnabled then
				newCameraCFrame, newCameraFocus = self:UpdateThirdPersonFollowTransform(
					timeDelta, newCameraCFrame, newCameraFocus, lastSubjPos, subjectPosition)
			else
				newCameraCFrame, newCameraFocus = self:UpdateThirdPersonComfortTransform(
					timeDelta, newCameraCFrame, newCameraFocus, lastSubjPos, subjectPosition)
			end
		end

		self.lastCameraTransform = newCameraCFrame
		self.lastCameraFocus = newCameraFocus
	end

	self.lastUpdate = tick()
	return newCameraCFrame, newCameraFocus
end

-- returns where the floor should be placed given the camera subject, nil if anything is invalid
function VRCamera:GetAvatarFeetWorldYValue(): number?
	local camera = workspace.CurrentCamera
	local cameraSubject = camera.CameraSubject
	if not cameraSubject then
		return nil
	end

	if cameraSubject:IsA("Humanoid") and cameraSubject.RootPart then
		local rootPart = cameraSubject.RootPart
		return rootPart.Position.Y - rootPart.Size.Y / 2 - cameraSubject.HipHeight
	end

	return nil
end

function VRCamera:UpdateFirstPersonTransform(timeDelta, newCameraCFrame, newCameraFocus, lastSubjPos, subjectPosition)
	-- transition from TP to FP
	if self.needsReset then
		self:StartFadeFromBlack()
		self.needsReset = false
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

	local yawDelta = self:getRotation(timeDelta)

	local newLookVector = self:CalculateNewLookVectorFromArg(cameraLookVector, Vector2.new(yawDelta, 0))
	newCameraCFrame = CFrame.new(cameraFocusP - (FP_ZOOM * newLookVector), cameraFocusP)

	return newCameraCFrame, newCameraFocus
end

function VRCamera:UpdateImmersionCamera(timeDelta, newCameraCFrame, newCameraFocus, lastSubjPos, subjectPosition)
	local subjectCFrame = self:GetSubjectCFrame()
	local curCamera = workspace.CurrentCamera :: Camera

	-- character rotation details
	local character = PlayersService.LocalPlayer.Character
	local humanoid = self:GetHumanoid()
	if not humanoid then
		return curCamera.CFrame, curCamera.Focus
	end
	local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
	if not humanoidRootPart then 
		return curCamera.CFrame, curCamera.Focus
	end
	self.characterOrientation = humanoidRootPart:FindFirstChild("CharacterAlignOrientation")
	if not self.characterOrientation then
		local rootAttachment = humanoidRootPart:FindFirstChild("RootAttachment")
		if not rootAttachment then
			return
		end
		self.characterOrientation= Instance.new("AlignOrientation")
		self.characterOrientation.Name = "CharacterAlignOrientation"
		self.characterOrientation.Mode = Enum.OrientationAlignmentMode.OneAttachment
		self.characterOrientation.Attachment0 = rootAttachment
		self.characterOrientation.RigidityEnabled = true
		self.characterOrientation.Parent = humanoidRootPart
	end
	if self.characterOrientation.Enabled == false then
		self.characterOrientation.Enabled = true
	end

	-- just entered first person, or need to reset camera
	if self.needsReset then
		self.needsReset = false
		
		self.savedAutoRotate = humanoid.AutoRotate
		humanoid.AutoRotate = false

		if self.NoRecenter then
			self.NoRecenter = false
			VRService:RecenterUserHeadCFrame()
		end
		
		self:StartFadeFromBlack()

		-- place the VR head at the subject's CFrame
		newCameraCFrame = subjectCFrame
	else
		-- if seated, just keep aligned with the seat itself
		if humanoid.Sit then
			newCameraCFrame = subjectCFrame
			if (newCameraCFrame.Position - curCamera.CFrame.Position).Magnitude > 0.01 then
				self:StartVREdgeBlur(PlayersService.LocalPlayer)
			end
		else
			-- keep character rotation with torso
			local torsoRotation = self.controlModule:GetEstimatedVRTorsoFrame()
			self.characterOrientation.CFrame = curCamera.CFrame * torsoRotation

			-- The character continues moving for a brief moment after the moveVector stops. Continue updating the camera.
			if self.controlModule.inputMoveVector.Magnitude > 0 then
				self.motionDetTime = 0.1
			end

			if self.controlModule.inputMoveVector.Magnitude > 0 or self.motionDetTime > 0 then
				self.motionDetTime -= timeDelta

				-- Add an edge blur if the subject moved
				self:StartVREdgeBlur(PlayersService.LocalPlayer)

				-- moving by input, so we should align the vrHead with the character
				local vrHeadOffset = VRService:GetUserCFrame(Enum.UserCFrame.Head)
				vrHeadOffset = vrHeadOffset.Rotation + vrHeadOffset.Position * curCamera.HeadScale

				-- the location of the character's body should be "below" the head. Directly below if the player is looking
				-- forward, but further back if they are looking down
				local hrp = character.HumanoidRootPart
				local neck_offset = NECK_OFFSET * hrp.Size.Y / 2
				local neckWorld = curCamera.CFrame * vrHeadOffset * CFrame.new(0, neck_offset, 0)
				local hrpLook = hrp.CFrame.LookVector
				neckWorld -= Vector3.new(hrpLook.X, 0, hrpLook.Z).Unit * hrp.Size.Y * TORSO_FORWARD_OFFSET_RATIO

				-- the camera must remain stable relative to the humanoid root part or the IK calculations will look jittery
				local goalCameraPosition = subjectPosition - neckWorld.Position + curCamera.CFrame.Position

				-- maintain the Y value
				goalCameraPosition = Vector3.new(goalCameraPosition.X, subjectPosition.Y, goalCameraPosition.Z)

				newCameraCFrame = curCamera.CFrame.Rotation + goalCameraPosition
			else
				-- don't change x, z position, follow the y value
				newCameraCFrame = curCamera.CFrame.Rotation + Vector3.new(curCamera.CFrame.Position.X, subjectPosition.Y, curCamera.CFrame.Position.Z)
			end

			local yawDelta = self:getRotation(timeDelta)
			if math.abs(yawDelta) > 0 then
				-- The head location in world space
				local vrHeadOffset = VRService:GetUserCFrame(Enum.UserCFrame.Head)
				vrHeadOffset = vrHeadOffset.Rotation + vrHeadOffset.Position * curCamera.HeadScale
				local VRheadWorld = newCameraCFrame * vrHeadOffset

				local desiredVRHeadCFrame = CFrame.new(VRheadWorld.Position) * CFrame.Angles(0, -math.rad(yawDelta * 90), 0) * VRheadWorld.Rotation

				-- set the camera to place the VR head at the correct location
				newCameraCFrame = desiredVRHeadCFrame * vrHeadOffset:Inverse()
			end
		end
end

	return newCameraCFrame, newCameraCFrame * CFrame.new(0, 0, -FP_ZOOM)
end

function VRCamera:UpdateThirdPersonComfortTransform(timeDelta, newCameraCFrame, newCameraFocus, lastSubjPos, subjectPosition)
	local zoom = self:GetCameraToSubjectDistance()
	if zoom < 0.5 then
		zoom = 0.5
	end

	if lastSubjPos ~= nil and self.lastCameraFocus ~= nil then
		-- compute delta of subject since last update
		local player = PlayersService.LocalPlayer
		local subjectDelta = lastSubjPos - subjectPosition
		local moveVector = self.controlModule:GetMoveVector()

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

			-- compute offset for 3rd person camera rotation
			local yawDelta = self:getRotation(timeDelta)
			if math.abs(yawDelta) > 0 then
				local cameraOffset = newCameraFocus:ToObjectSpace(newCameraCFrame)
				newCameraCFrame = newCameraFocus * CFrame.Angles(0, -yawDelta, 0) * cameraOffset
			end

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
				local lookAtPos = Vector3.new(newCameraFocus.Position.X, newCameraPos.Y, newCameraFocus.Position.Z)

				newCameraCFrame = CFrame.new(newCameraPos, lookAtPos)
			end
		end
	end

	return newCameraCFrame, newCameraFocus
end

function VRCamera:UpdateThirdPersonFollowTransform(timeDelta, newCameraCFrame, newCameraFocus, lastSubjPos, subjectPosition)
	local camera = workspace.CurrentCamera :: Camera
	local zoom = self:GetCameraToSubjectDistance()
	local vrFocus = self:GetVRFocus(subjectPosition, timeDelta)

	if self.needsReset then

		self.needsReset = false

		VRService:RecenterUserHeadCFrame()
		self:ResetZoom()
		self:StartFadeFromBlack()
	end
	
	if self.recentered then
		local subjectCFrame = self:GetSubjectCFrame()
		if not subjectCFrame then -- can't perform a reset until the subject is valid
			return camera.CFrame, camera.Focus
		end
		
		-- set the camera and focus to zoom distance behind the subject
		newCameraCFrame = vrFocus * subjectCFrame.Rotation * CFrame.new(0, 0, zoom)

		self.focusOffset = vrFocus:ToObjectSpace(newCameraCFrame) -- GetVRFocus returns a CFrame with no rotation
		
		self.recentered = false
		return newCameraCFrame, vrFocus
	end

	local trackCameraCFrame = vrFocus:ToWorldSpace(self.focusOffset)
	
	-- figure out if the player is moving
	local player = PlayersService.LocalPlayer
	local subjectDelta = lastSubjPos - subjectPosition
	local controlModule = self.controlModule
	local moveVector = controlModule:GetMoveVector()

	-- while moving, slowly adjust camera so the avatar is in front of your head
	if subjectDelta.magnitude > 0.01 or moveVector.magnitude > 0 then -- is the subject moving?

		local headOffset = controlModule:GetEstimatedVRTorsoFrame()

		-- account for headscale
		headOffset = headOffset.Rotation + headOffset.Position * camera.HeadScale
		local headCframe = camera.CFrame * headOffset
		local headLook = headCframe.LookVector

		local headVectorDirection = Vector3.new(headLook.X, 0, headLook.Z).Unit * zoom
		local goalHeadPosition = vrFocus.Position - headVectorDirection
		
		-- place the camera at currentposition + difference between goalHead and currentHead 
		local moveGoalCameraCFrame = CFrame.new(camera.CFrame.Position + goalHeadPosition - headCframe.Position) * trackCameraCFrame.Rotation 

		newCameraCFrame = trackCameraCFrame:Lerp(moveGoalCameraCFrame, 0.01)
	else
		newCameraCFrame = trackCameraCFrame
	end

	-- compute offset for 3rd person camera rotation
	local yawDelta = self:getRotation(timeDelta)
	if math.abs(yawDelta) > 0 then
		local cameraOffset = vrFocus:ToObjectSpace(newCameraCFrame)
		newCameraCFrame = vrFocus * CFrame.Angles(0, -yawDelta, 0) * cameraOffset
	end

	self.focusOffset = vrFocus:ToObjectSpace(newCameraCFrame) -- GetVRFocus returns a CFrame with no rotation

	-- focus is always in front of the camera
	newCameraFocus = newCameraCFrame * CFrame.new(0, 0, -zoom)

	-- vignette
	if (newCameraFocus.Position - camera.Focus.Position).Magnitude > 0.01 then
		self:StartVREdgeBlur(PlayersService.LocalPlayer)
	end

	return newCameraCFrame, newCameraFocus
end

function VRCamera:LeaveFirstPerson()
	VRBaseCamera.LeaveFirstPerson(self)
	
	self.needsReset = true
	if self.VRBlur then
		self.VRBlur.Visible = false
	end

	if self.characterOrientation then
		self.characterOrientation.Enabled = false

	end
	local humanoid = self:GetHumanoid()
	if humanoid then
		humanoid.AutoRotate = self.savedAutoRotate
	end
end

return VRCamera
