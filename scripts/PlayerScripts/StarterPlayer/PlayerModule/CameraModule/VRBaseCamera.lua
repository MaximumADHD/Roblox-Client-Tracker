--!nonstrict
--[[
	VRBaseCamera - Base class for VR camera
	2021 Roblox VR
--]]

--[[ Local Constants ]]--
local VR_ANGLE = math.rad(15)
local VR_PANEL_SIZE = 512
local VR_ZOOM = 7
local VR_FADE_SPEED = 10 -- 1/10 second
local VR_SCREEN_EGDE_BLEND_TIME = 0.14
local VR_SEAT_OFFSET = Vector3.new(0,4,0)

local FFlagUserVRVehicleCamera
do
	local success, result = pcall(function()
		return UserSettings():IsUserFeatureEnabled("UserVRVehicleCamera2")
	end)
	FFlagUserVRVehicleCamera = success and result
end

local VRService = game:GetService("VRService")
local Players = game:GetService("Players")
local player = Players.LocalPlayer
local Lighting = game:GetService("Lighting")
local RunService = game:GetService("RunService")
local UserGameSettings = UserSettings():GetService("UserGameSettings")

local CameraInput = require(script.Parent:WaitForChild("CameraInput"))
local ZoomController = require(script.Parent:WaitForChild("ZoomController"))
local CommonUtils = script.Parent.Parent:WaitForChild("CommonUtils")
local FlagUtil = require(CommonUtils:WaitForChild("FlagUtil"))
local FFlagUserCameraInputDt = FlagUtil.getUserFlag("UserCameraInputDt")

--[[ The Module ]]--
local BaseCamera = require(script.Parent:WaitForChild("BaseCamera"))
local VRBaseCamera = setmetatable({}, BaseCamera)
VRBaseCamera.__index = VRBaseCamera

function VRBaseCamera.new()
	local self = setmetatable(BaseCamera.new(), VRBaseCamera)
	
	-- zoom levels cycles when pressing R3 on a gamepad, not multiplied by headscale yet
	self.gamepadZoomLevels = {0, VR_ZOOM}
	
	-- need to save headscale value to respond to changes
	self.headScale = 1

	self:SetCameraToSubjectDistance(VR_ZOOM)

	-- VR screen effect
	self.VRFadeResetTimer = 0
	self.VREdgeBlurTimer = 0

	-- initialize vr specific variables
	self.gamepadResetConnection = nil
	self.needsReset = true
	self.recentered = false
	
	-- timer for step rotation
	self:Reset()
	
	return self
end

function VRBaseCamera:Reset()
	self.stepRotateTimeout = 0
end

function VRBaseCamera:GetModuleName()
	return "VRBaseCamera"
end

function VRBaseCamera:GamepadZoomPress()
	BaseCamera.GamepadZoomPress(self)

	-- don't want the spring animation in VR, may cause motion sickness
	self:GamepadReset()
	self:ResetZoom()
end

function VRBaseCamera:GamepadReset()
	self.stepRotateTimeout = 0
	self.needsReset = true
end

function VRBaseCamera:ResetZoom()
	ZoomController.SetZoomParameters(self.currentSubjectDistance, 0)
	ZoomController.ReleaseSpring()
end

function VRBaseCamera:OnEnabledChanged()
	BaseCamera.OnEnabledChanged(self)

	if self.enabled then
		self.gamepadResetConnection = CameraInput.gamepadReset:Connect(function()
			self:GamepadReset()
		end)
		
		-- reset on options change
		self.thirdPersonOptionChanged = VRService:GetPropertyChangedSignal("ThirdPersonFollowCamEnabled"):Connect(function()
			if FFlagUserVRVehicleCamera then
				self:Reset()
			else
				-- only need to reset third person options if in third person
				if not self:IsInFirstPerson() then
					self:Reset()
				end 
			end
		end)
		
		self.vrRecentered = VRService.UserCFrameChanged:Connect(function(userCFrame, _)
			if userCFrame == Enum.UserCFrame.Floor then
				self.recentered = true
			end
		end)
	else
		-- make sure zoom is reset when switching to another camera
		if self.inFirstPerson then
			self:GamepadZoomPress()
		end

		-- disconnect connections
		if self.thirdPersonOptionChanged then
			self.thirdPersonOptionChanged:Disconnect()
			self.thirdPersonOptionChanged = nil
		end

		if self.vrRecentered then
			self.vrRecentered:Disconnect()
			self.vrRecentered = nil
		end
		
		if self.cameraHeadScaleChangedConn then
			self.cameraHeadScaleChangedConn:Disconnect()
			self.cameraHeadScaleChangedConn = nil
		end

		if self.gamepadResetConnection then
			self.gamepadResetConnection:Disconnect()
			self.gamepadResetConnection = nil
		end

		-- reset VR effects
		self.VREdgeBlurTimer = 0
		self:UpdateEdgeBlur(player, 1)
		local VRFade = Lighting:FindFirstChild("VRFade")
		if VRFade then
			VRFade.Brightness = 0
		end
	end
end

function VRBaseCamera:OnCurrentCameraChanged()
	BaseCamera.OnCurrentCameraChanged(self)

	-- disconnect connections to reestablish on new camera
	if self.cameraHeadScaleChangedConn then
		self.cameraHeadScaleChangedConn:Disconnect()
		self.cameraHeadScaleChangedConn = nil
	end
	
	-- add new connections if camera is valid
	local camera = workspace.CurrentCamera :: Camera
	if camera then
		self.cameraHeadScaleChangedConn = camera:GetPropertyChangedSignal("HeadScale"):Connect(function() self:OnHeadScaleChanged() end)
		self:OnHeadScaleChanged()
	end
end

function VRBaseCamera:OnHeadScaleChanged()

	local camera = workspace.CurrentCamera :: Camera
	local newHeadScale = camera.HeadScale
	
	-- scale zoom levels by headscale
	for i, zoom in self.gamepadZoomLevels do
		self.gamepadZoomLevels[i] = zoom * newHeadScale / self.headScale
	end
		
	-- rescale current distance
	self:SetCameraToSubjectDistance(self:GetCameraToSubjectDistance()  * newHeadScale / self.headScale)
	self.headScale = newHeadScale
end

-- defines subject and height of VR camera
function VRBaseCamera:GetVRFocus(subjectPosition, timeDelta)
	local lastFocus = self.lastCameraFocus or subjectPosition

	self.cameraTranslationConstraints = Vector3.new(
		self.cameraTranslationConstraints.x,
		math.min(1, self.cameraTranslationConstraints.y + timeDelta),
		self.cameraTranslationConstraints.z)

	local cameraHeightDelta = Vector3.new(0, self:GetCameraHeight(), 0)
	local newFocus = CFrame.new(Vector3.new(subjectPosition.x, lastFocus.y, subjectPosition.z):
			Lerp(subjectPosition + cameraHeightDelta, self.cameraTranslationConstraints.y))

	return newFocus
end

-- (VR) Screen effects --------------
function VRBaseCamera:StartFadeFromBlack()
	if UserGameSettings.VignetteEnabled == false then
		return
	end

	local VRFade = Lighting:FindFirstChild("VRFade")
	if not VRFade then
		VRFade = Instance.new("ColorCorrectionEffect")
		VRFade.Name = "VRFade"
		VRFade.Parent = Lighting
	end
	VRFade.Brightness = -1
	self.VRFadeResetTimer = 0.1
end

function VRBaseCamera:UpdateFadeFromBlack(timeDelta: number)
	local VRFade = Lighting:FindFirstChild("VRFade")
	if self.VRFadeResetTimer > 0  then
		self.VRFadeResetTimer = math.max(self.VRFadeResetTimer - timeDelta, 0)

		local VRFade = Lighting:FindFirstChild("VRFade")
		if VRFade and VRFade.Brightness < 0 then
			VRFade.Brightness = math.min(VRFade.Brightness + timeDelta * VR_FADE_SPEED, 0)
		end
	else
		if VRFade then -- sanity check, VRFade off
			VRFade.Brightness = 0
		end
	end
end

function VRBaseCamera:StartVREdgeBlur(player)
	if UserGameSettings.VignetteEnabled == false then
		return
	end

	local blurPart = nil
	blurPart = (workspace.CurrentCamera :: Camera):FindFirstChild("VRBlurPart")
	if not blurPart then
		local basePartSize = Vector3.new(0.44,0.47,1)
		blurPart = Instance.new("Part")
		blurPart.Name = "VRBlurPart"
		blurPart.Parent = workspace.CurrentCamera
		blurPart.CanTouch = false
		blurPart.CanCollide = false
		blurPart.CanQuery = false
		blurPart.Anchored = true
		blurPart.Size = basePartSize
		blurPart.Transparency = 1
		blurPart.CastShadow = false

		RunService.RenderStepped:Connect(function(step)
			local userHeadCF = VRService:GetUserCFrame(Enum.UserCFrame.Head)

			local vrCF = (workspace.CurrentCamera :: Camera).CFrame * (CFrame.new(userHeadCF.p * (workspace.CurrentCamera :: Camera).HeadScale) * (userHeadCF - userHeadCF.p))
			blurPart.CFrame = (vrCF * CFrame.Angles(0, math.rad(180), 0)) + vrCF.LookVector * (1.05 * (workspace.CurrentCamera :: Camera).HeadScale)
			blurPart.Size = basePartSize * (workspace.CurrentCamera :: Camera).HeadScale
		end)
	end

	local VRScreen = player.PlayerGui:FindFirstChild("VRBlurScreen")
	local VRBlur = nil
	if VRScreen then
		VRBlur = VRScreen:FindFirstChild("VRBlur")
	end

	if not VRBlur then
		if not VRScreen then
			VRScreen = Instance.new("SurfaceGui") or Instance.new("ScreenGui")
		end

		VRScreen.Name = "VRBlurScreen"
		VRScreen.Parent = player.PlayerGui

		VRScreen.Adornee = blurPart

		VRBlur = Instance.new("ImageLabel")
		VRBlur.Name = "VRBlur"
		VRBlur.Parent = VRScreen

		VRBlur.Image = "rbxasset://textures/ui/VR/edgeBlur.png"
		VRBlur.AnchorPoint = Vector2.new(0.5, 0.5)
		VRBlur.Position = UDim2.new(0.5, 0, 0.5, 0)

		-- this computes the ratio between the GUI 3D panel and the VR viewport
		-- adding 15% overshoot for edges on 2 screen headsets
		local ratioX = (workspace.CurrentCamera :: Camera).ViewportSize.X * 2.3 / VR_PANEL_SIZE
		local ratioY = (workspace.CurrentCamera :: Camera).ViewportSize.Y * 2.3 / VR_PANEL_SIZE

		VRBlur.Size = UDim2.fromScale(ratioX, ratioY)
		VRBlur.BackgroundTransparency = 1
		VRBlur.Active = true
		VRBlur.ScaleType = Enum.ScaleType.Stretch
	end

	VRBlur.Visible = true
	VRBlur.ImageTransparency = 0
	self.VREdgeBlurTimer = VR_SCREEN_EGDE_BLEND_TIME
end

function VRBaseCamera:UpdateEdgeBlur(player, timeDelta)
	local VRScreen = player.PlayerGui:FindFirstChild("VRBlurScreen")
	local VRBlur = nil
	if VRScreen then
		VRBlur = VRScreen:FindFirstChild("VRBlur")
	end

	if VRBlur then
		if self.VREdgeBlurTimer > 0 then
			self.VREdgeBlurTimer = self.VREdgeBlurTimer - timeDelta

			local VRScreen = player.PlayerGui:FindFirstChild("VRBlurScreen")
			if VRScreen then
				local VRBlur = VRScreen:FindFirstChild("VRBlur")
				if VRBlur then
					VRBlur.ImageTransparency = 1.0 - math.clamp(self.VREdgeBlurTimer, 0.01,
						VR_SCREEN_EGDE_BLEND_TIME) * (1/VR_SCREEN_EGDE_BLEND_TIME)
				end
			end
		else
			VRBlur.Visible = false
		end
	end
end

function VRBaseCamera:GetCameraHeight()
	if not self.inFirstPerson then
		return math.sin(VR_ANGLE) * self.currentSubjectDistance
	end
	return 0
end

function VRBaseCamera:GetSubjectCFrame(): CFrame
	local result = BaseCamera.GetSubjectCFrame(self)
	local camera = workspace.CurrentCamera
	local cameraSubject = camera and camera.CameraSubject

	if not cameraSubject then
		return result
	end

	-- new VR system overrides
	if cameraSubject:IsA("Humanoid") then
		local humanoid = cameraSubject
		local humanoidIsDead = humanoid:GetState() == Enum.HumanoidStateType.Dead

		if humanoidIsDead and humanoid == self.lastSubject then
			result = self.lastSubjectCFrame
		end
	end

	if result then
		self.lastSubjectCFrame = result
	end

	return result
end

function VRBaseCamera:GetSubjectPosition(): Vector3?
	local result = BaseCamera.GetSubjectPosition(self)

	-- new VR system overrides
	local camera = game.Workspace.CurrentCamera
	local cameraSubject = camera and camera.CameraSubject
	if cameraSubject then
		if cameraSubject:IsA("Humanoid") then
			local humanoid = cameraSubject
			local humanoidIsDead = humanoid:GetState() == Enum.HumanoidStateType.Dead

			if  humanoidIsDead and humanoid == self.lastSubject then
				result = self.lastSubjectPosition
			end
		elseif cameraSubject:IsA("VehicleSeat") then
			local offset = VR_SEAT_OFFSET
			result = cameraSubject.CFrame.p + cameraSubject.CFrame:vectorToWorldSpace(offset)
		end
	else
		return nil
	end

	self.lastSubjectPosition = result

	return result
end

-- gets the desired rotation accounting for smooth rotation. Manages fades and resets resulting 
-- from rotation
function VRBaseCamera:getRotation(dt)
	local rotateInput = CameraInput.getRotation(dt)
	local yawDelta = 0
	
	if UserGameSettings.VRSmoothRotationEnabled then
		if FFlagUserCameraInputDt then
			yawDelta = rotateInput.X
		else
			yawDelta = rotateInput.X * 40 * dt
		end
	else
		-- ignore the magnitude of the input, use just the direction and
		-- a timer to rotate 30 degrees each step
		if math.abs(rotateInput.X) > 0.03 then
			if self.stepRotateTimeout > 0 then
				self.stepRotateTimeout -= dt
			end
			
			if self.stepRotateTimeout <= 0 then
				yawDelta = 1
				if rotateInput.X < 0 then
					yawDelta = -1
				end
				
				yawDelta *= math.rad(30)
				self:StartFadeFromBlack()
				self.stepRotateTimeout = 0.25
			end
		elseif math.abs(rotateInput.X) < 0.02 then
			self.stepRotateTimeout = 0 -- allow fast rotation when spamming input
		end
	end
	
	return yawDelta

end

-----------------------------

return VRBaseCamera