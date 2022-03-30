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

local VRService = game:GetService("VRService")

local CameraInput = require(script.Parent:WaitForChild("CameraInput"))
local ZoomController = require(script.Parent:WaitForChild("ZoomController"))

local Players = game:GetService("Players")
local player = Players.LocalPlayer

local Lighting = game:GetService("Lighting")
local RunService = game:GetService("RunService")

local UserGameSettings = UserSettings():GetService("UserGameSettings")

--[[ The Module ]]--
local BaseCamera = require(script.Parent:WaitForChild("BaseCamera"))
local VRBaseCamera = setmetatable({}, BaseCamera)
VRBaseCamera.__index = VRBaseCamera

local FFlagUserVRVignetteToggle do
	local success, result = pcall(function()
		return UserSettings():IsUserFeatureEnabled("UserVRVignetteToggle")
	end)
	FFlagUserVRVignetteToggle = success and result
end

local FFlagUserFlagEnableVRUpdate2 do
	local success, result = pcall(function()
		return UserSettings():IsUserFeatureEnabled("UserFlagEnableVRUpdate2")
	end)
	FFlagUserFlagEnableVRUpdate2 = success and result
end

function VRBaseCamera.new()
	local self = setmetatable(BaseCamera.new(), VRBaseCamera)

	-- distance is different in VR
	self.defaultDistance = VR_ZOOM
	self.defaultSubjectDistance = math.clamp(self.defaultDistance, player.CameraMinZoomDistance, player.CameraMaxZoomDistance)
	self.currentSubjectDistance = math.clamp(self.defaultDistance, player.CameraMinZoomDistance, player.CameraMaxZoomDistance)

	-- VR screen effect
	self.VRFadeResetTimer = 0
	self.VREdgeBlurTimer = 0

	-- initialize vr specific variables
	self.gamepadResetConnection = nil
	self.needsReset = true

	return self
end

function VRBaseCamera:GetModuleName()
	return "VRBaseCamera"
end

function VRBaseCamera:GamepadZoomPress()
	local dist = self:GetCameraToSubjectDistance()

	if dist > VR_ZOOM / 2 then
		self:SetCameraToSubjectDistance(0)
		self.currentSubjectDistance = 0
	else
		self:SetCameraToSubjectDistance(VR_ZOOM)
		self.currentSubjectDistance = VR_ZOOM
	end

	self:GamepadReset()
	self:ResetZoom()
end

function VRBaseCamera:GamepadReset()
	self.needsReset = true
end

function VRBaseCamera:ResetZoom()
	ZoomController.SetZoomParameters(self.currentSubjectDistance, 0)
	ZoomController.ReleaseSpring()
end

function VRBaseCamera:OnEnable(enable: boolean)
	if enable then
		self.gamepadResetConnection = CameraInput.gamepadReset:Connect(function()
			self:GamepadReset()
		end)
	else
		-- make sure zoom is reset when switching to another camera
		if self.inFirstPerson then
			self:GamepadZoomPress()
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

function VRBaseCamera:UpdateDefaultSubjectDistance()
	self.defaultSubjectDistance = math.clamp(VR_ZOOM, player.CameraMinZoomDistance, player.CameraMaxZoomDistance)
end

-- Nominal distance, set by dollying in and out with the mouse wheel or equivalent, not measured distance
function VRBaseCamera:GetCameraToSubjectDistance(): number
	return self.currentSubjectDistance
end

-- VR only supports 1st person or 3rd person and no overrides
function VRBaseCamera:SetCameraToSubjectDistance(desiredSubjectDistance: number): number
	local lastSubjectDistance = self.currentSubjectDistance

	local newSubjectDistance = math.clamp(desiredSubjectDistance, 0, player.CameraMaxZoomDistance)
	if newSubjectDistance < 1.0 then
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

	-- Pass target distance and zoom direction to the zoom controller
	ZoomController.SetZoomParameters(self.currentSubjectDistance, math.sign(desiredSubjectDistance - lastSubjectDistance))

	-- Returned only for convenience to the caller to know the outcome
	return self.currentSubjectDistance
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
			lerp(subjectPosition + cameraHeightDelta, self.cameraTranslationConstraints.y))

	return newFocus
end

-- (VR) Screen effects --------------
function VRBaseCamera:StartFadeFromBlack()
	if FFlagUserVRVignetteToggle then
		if UserGameSettings.VignetteEnabled == false then
			return
		end
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
	if FFlagUserVRVignetteToggle then
		if UserGameSettings.VignetteEnabled == false then
			return
		end
	end
	
	local blurPart = nil
	if FFlagUserFlagEnableVRUpdate2 then
		blurPart = workspace.CurrentCamera:FindFirstChild("VRBlurPart")
		if not blurPart then
			blurPart = Instance.new("Part")
			blurPart.Name = "VRBlurPart"
			blurPart.Parent = workspace.CurrentCamera
			blurPart.CanTouch = false
			blurPart.CanCollide = false
			blurPart.CanQuery = false
			blurPart.Anchored = true
			blurPart.Size = Vector3.new(0.44,0.47,1)
			blurPart.Transparency = 1
			blurPart.CastShadow = false

			RunService.RenderStepped:Connect(function(step)
				local userHeadCF = VRService:GetUserCFrame(Enum.UserCFrame.Head)
				local vrCF = workspace.Camera.CFrame * userHeadCF
				blurPart.CFrame = (vrCF * CFrame.Angles(0, math.rad(180), 0)) + vrCF.LookVector * 1.05
			end)
		end
	end

	
	local VRScreen = player.PlayerGui:FindFirstChild("VRBlurScreen")
	local VRBlur = nil
	if VRScreen then
		VRBlur = VRScreen:FindFirstChild("VRBlur")
	end

	if not VRBlur then
		if not VRScreen then
			VRScreen = FFlagUserFlagEnableVRUpdate2 and Instance.new("SurfaceGui") or Instance.new("ScreenGui")
		end
		
		VRScreen.Name = "VRBlurScreen"
		VRScreen.Parent = player.PlayerGui
		
		if FFlagUserFlagEnableVRUpdate2 then
			VRScreen.Adornee = blurPart
		end

		VRBlur = Instance.new("ImageLabel")
		VRBlur.Name = "VRBlur"
		VRBlur.Parent = VRScreen

		VRBlur.Image = "rbxasset://textures/ui/VR/edgeBlur.png"
		VRBlur.AnchorPoint = Vector2.new(0.5, 0.5)
		VRBlur.Position = UDim2.new(0.5, 0, 0.5, 0)

		-- this computes the ratio between the GUI 3D panel and the VR viewport
		-- adding 15% overshoot for edges on 2 screen headsets
		local ratioX = workspace.CurrentCamera.ViewportSize.X * 2.3 / VR_PANEL_SIZE
		local ratioY = workspace.CurrentCamera.ViewportSize.Y * 2.3 / VR_PANEL_SIZE

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

function VRBaseCamera:GetSubjectPosition(): Vector3
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
		return
	end

	self.lastSubjectPosition = result

	return result
end

-----------------------------

return VRBaseCamera
