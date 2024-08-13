--!nonstrict
--Panel3D: 3D GUI panels for VR
--written by 0xBAADF00D
--revised/refactored 5/11/16
--updated 2021/2022 by MetaVars for new VR system

local UserInputService = game:GetService("UserInputService")
local VRService = game:GetService("VRService")
local RunService = game:GetService("RunService")
local GuiService = game:GetService("GuiService")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local CoreGuiModules = RobloxGui:WaitForChild("Modules")
local Players = game:GetService("Players")
local Utility = require(RobloxGui.Modules.Settings.Utility)
local GamepadService = game:GetService("GamepadService")
local VRUtil = require(RobloxGui.Modules.VR.VRUtil)
local CorePackages = game:GetService("CorePackages")
local Create = require(CorePackages.Workspace.Packages.AppCommonLib).Create

local FFlagVRFreeUIPanel = game:DefineFastFlag("VRFreeUIPanel", false)
local FFlagVRHeadLockedFixUIPosition = game:DefineFastFlag("VRHeadLockedFixUIPosition", false)

--Panel3D State variables
local renderStepName = "Panel3DRenderStep-" .. game:GetService("HttpService"):GenerateGUID()
local defaultPixelsPerStud = 64
local pointUpCF = CFrame.Angles(math.rad(-90), math.rad(180), 0)
local zeroVector = Vector3.new(0, 0, 0)
local zeroVector2 = Vector2.new(0, 0)
local fullyOpaqueAtPixelsFromEdge = 10
local fullyTransparentAtPixelsFromEdge = 20
local partThickness = 0.2

--The default origin CFrame offset for new panels
local standardOriginCF = CFrame.new(0, -0.5, -5.5)
local newStandardOriginCF = CFrame.new(0, 0, -3)

--Compensates for the thickness of the panel part and rotates it so that
--the front face is pointing back at the camera
local panelAdjustCF = CFrame.new(0, 0, -0.5 * partThickness) * CFrame.Angles(0, math.pi, 0) 

local cursorHidden = false
local cursorHideTime = 2.5
local cursorSize = 3

local lerpSpeed = 4

local currentModal = nil
local lastModal = nil
local currentMaxDist = math.huge
local currentClosest = nil
local currentCursorParent = nil
local currentCursorPos = zeroVector2
local lastClosest = nil
local panels = {}
local floorRotation = CFrame.new()
local cursor = Create "ImageLabel" {
	Image = "rbxasset://textures/Cursors/Gamepad/Pointer.png",
	ImageColor3 = Color3.new(0, 1, 0),
	BackgroundTransparency = 1,
	ZIndex = 1e9
}
local partFolder = Create "Folder" {
	Name = "VRCorePanelParts",
	Archivable = false
}
local effectFolder = Create "Folder" {
	Name = "VRCoreEffectParts",
	Archivable = false
}
pcall(function()
	GuiService.CoreGuiFolder = partFolder
	GuiService.CoreEffectFolder = effectFolder
end)
--End of Panel3D State variables


--Panel3D Declaration and enumerations
local Panel3D = {}
Panel3D.Type = {
	None = 0,
	Standard = 1,
	Fixed = 2,
	HorizontalFollow = 3,
	FixedToHead = 4,
	NewStandard = 5,
	WristView = 6,
	PositionLocked = 7,
}

Panel3D.OnPanelClosed = Create 'BindableEvent' {
	Name = 'OnPanelClosed'
}

function Panel3D.GetHeadLookXZ(withTranslation)
	local userHeadCF = VRService:GetUserCFrame(Enum.UserCFrame.Head)
	local headLook = userHeadCF.lookVector
	local headYaw = math.atan2(-headLook.Z, headLook.X) - math.rad(90)
	local cf = CFrame.Angles(0, headYaw, 0)

	if withTranslation then
		cf = cf + userHeadCF.p
	end
	return cf
end

function Panel3D.FindContainerOf(element)
	for _, panel in pairs(panels) do
		if panel.gui and panel.gui:IsAncestorOf(element) then
			return panel
		end
		for _, subpanel in pairs(panel.subpanels) do
			if subpanel.gui and subpanel.gui:IsAncestorOf(element) then
				return panel
			end
		end
	end
	return nil
end

function Panel3D.SetModalPanel(panel)
	if currentModal == panel then
		return
	end
	if currentModal then
		currentModal:OnModalChanged(false)
	end
	if panel then
		panel:OnModalChanged(true)
	end
	lastModal = currentModal
	currentModal = panel
end

function Panel3D.RaycastOntoPanel(part, parentGui, gui, ray)
	local partSize = part.Size
	local partThickness = partSize.Z
	local partWidth = partSize.X
	local partHeight = partSize.Y

	local planeCF = part:GetRenderCFrame()
	local planeNormal = planeCF.lookVector
	local pointOnPlane = planeCF.p + (planeNormal * partThickness * 0.5)

	--Find where the view ray intersects with the plane in world space
	local worldIntersectPoint = Utility:RayPlaneIntersection(ray, planeNormal, pointOnPlane)
	if worldIntersectPoint then
		local parentGuiWidth, parentGuiHeight = parentGui.AbsoluteSize.X, parentGui.AbsoluteSize.Y
		--now figure out where that intersection point was in the panel's local space
		--and then flip the X axis because the plane is looking back at you (panel's local +X is to the left of the camera)
		--and then offset it by half of the panel's size in X and -Y to move 0,0 to the upper-left of the panel.
		local localIntersectPoint = planeCF:pointToObjectSpace(worldIntersectPoint) * Vector3.new(-1, 1, 1)
			+ Vector3.new(partWidth / 2, -partHeight / 2, 0)
		--now scale it into the gui space on the panel's surface
		local lookAtPixel = Vector2.new(
			(localIntersectPoint.X / partWidth) * parentGuiWidth,
			(localIntersectPoint.Y / partHeight) * -parentGuiHeight
		)

		--fire mouse enter/leave events if necessary
		local lookX, lookY = lookAtPixel.X, lookAtPixel.Y
		local guiX, guiY = gui.AbsolutePosition.X, gui.AbsolutePosition.Y
		local guiWidth, guiHeight = gui.AbsoluteSize.X, gui.AbsoluteSize.Y
		local isOnGui = false

		if parentGui.Enabled then
			if lookX >= guiX and lookX <= guiX + guiWidth and lookY >= guiY and lookY <= guiY + guiHeight then
				isOnGui = true
			end
		end

		return worldIntersectPoint, localIntersectPoint, lookAtPixel, isOnGui
	else
		return nil, nil, nil, false
	end
end

--End of Panel3D Declaration and enumerations

--Panel class implementation
local Panel = {}
Panel.__index = Panel
function Panel.new(name)
	local self = {}
	self.name = name

	self.part = false
	self.gui = false

	self.width = 1
	self.height = 1

	self.isVisible = false
	self.isEnabled = false
	self.panelType = Panel3D.Type.None
	self.pixelScale = 1
	self.showCursor = true
	self.canFade = true
	self.shouldFindLookAtGuiElement = false
	self.ignoreModal = false
	self.needsPositionUpdate = false
	self.alwaysUpdatePosition = false

	self.linkedTo = false
	self.subpanels = {}

	self.transparency = 0
	self.forceShowUntilLookedAt = false
	self.forceShowUntilTick = 0
	self.isLookedAt = false
	self.isWristHeldUp = false
	self.isOffscreen = true
	self.lookAtPixel = Vector2.new(-1, -1)
	self.cursorPos = Vector2.new(-1, -1)
	self.lookAtDistance = math.huge
	self.lookAtGuiElement = false
	self.isClosest = true

	self.localCF = CFrame.new()
	self.originCF = CFrame.new()
	self.angleFromHorizon = false
	self.angleFromForward = false
	self.distance = 0
	
	self.lerpTime = 0
	self.lerpInitialCF = nil
	self.lerpScaleSize = Vector2.new(0,0)
	self.lerpInitialSize = Vector2.new(0,0)
	
	self.FollowView = true
	self.LastFollowCF = nil
	-- remove LastCamerPos with FFlagVRFreeUIPanel
	self.LastCameraPos = Vector3.new(0,0,0)
	self.followYawView = CFrame.new()
	self.userHeadRecentered = false
	self.lastHeadYaw = 0
	
	--self.wristLockPosition = false
	self.wristTargetPosition = Vector3.new()

	if panels[name] then
		error("A panel by the name of " .. name .. " already exists.")
	end
	panels[name] = self

	return setmetatable(self, Panel)
end

--Panel accessor methods
function Panel:GetPart()
	if not self.part then
		self.part = Create("Part")({
			Name = self.name,
			Parent = partFolder,

			Transparency = 1,

			CanCollide = false,
			CanTouch = false,
			Anchored = true,

			Size = Vector3.new(1, 1, partThickness),
		})
	end
	return self.part
end

function Panel:GetGUI()
	if not self.gui then
		local part = self:GetPart()
		self.gui = Create("SurfaceGui")({
			Parent = CoreGui,
			Name = self.name,
			Archivable = false,
			Adornee = part,
			Active = true,
			ToolPunchThroughDistance = 1000,
			CanvasSize = self.CanvasSize or Vector2.new(1000, 1000),
			Enabled = self.isEnabled,
			AlwaysOnTop = true,
		})
	end
	return self.gui
end

function Panel:FindHoveredGuiElement(elements)
	local x, y = self.lookAtPixel.X, self.lookAtPixel.Y
	for i, v in pairs(elements) do
		local minPt = v.AbsolutePosition
		local maxPt = v.AbsolutePosition + v.AbsoluteSize
		if minPt.X <= x and maxPt.X >= x and minPt.Y <= y and maxPt.Y >= y then
			return v, i
		end
	end
end
--End of panel accessor methods

--Panel update methods
function Panel:SetPartCFrame(cframe)
	self:GetPart().CFrame = cframe * panelAdjustCF
end

function Panel:SetEnabled(enabled)
	if self.isEnabled == enabled then
		return
	end

	self.isEnabled = enabled
	if enabled then
		self:GetPart().Parent = partFolder
		self:GetGUI().Enabled = true
		for i, v in pairs(self.subpanels) do
			v:SetEnabled(v:GetEnabled())
		end
	else
		self:GetPart().Parent = nil
		self:GetGUI().Enabled = false
		for i, v in pairs(self.subpanels) do
			v:SetEnabled(v:GetEnabled())
		end
	end

	self:OnEnabled(enabled)
end

function Panel:StartLerp(scaleSize)
	-- this starts a linear interpolation of the position and size of the panel
	self.lerpInitialCF = self:GetPart().CFrame * CFrame.new(0, -1.5, 0)
	self.lerpTime = 1
	self.lerpInitialSize = Vector2.new(self.width, self.height)
	self.lerpScaleSize = scaleSize and scaleSize or Vector2.new(0,0)
end

function Panel:EvaluatePositioning(cameraCF, cameraRenderCF, userHeadCF, dt)
	if self.panelType == Panel3D.Type.Fixed then
		--Places the panel in the camera's local space, but doesn't follow the user's head.
		--Useful if you know what you're doing. localCF can be updated in PreUpdate for animation.
		local cf = self.localCF - self.localCF.p
		cf = cf + (self.localCF.p * (workspace.CurrentCamera :: Camera).HeadScale)
		self:SetPartCFrame(cameraCF * cf)
	elseif self.panelType == Panel3D.Type.HorizontalFollow then
		local headLook = userHeadCF.lookVector
		local headForwardCF = CFrame.new(userHeadCF.p, userHeadCF.p + (headLook * Vector3.new(1, 0, 1)))
		local localCF = (headForwardCF * self.angleFromForward) * --Rotate about Y (left-right)
						self.angleFromHorizon * --Rotate about X (up-down)
			CFrame.new(0, 0, (workspace.CurrentCamera :: Camera).HeadScale * -self.distance)
		self:SetPartCFrame(cameraCF * localCF)
	elseif self.panelType == Panel3D.Type.FixedToHead then
		--Places the panel in the user's head local space. localCF can be updated in PreUpdate for animation.
		local cf = self.localCF - self.localCF.p
		cf = cf + (self.localCF.p * (workspace.CurrentCamera :: Camera).HeadScale)
		self:SetPartCFrame(cameraRenderCF * cf)
	elseif self.panelType == Panel3D.Type.Standard then
		if self.needsPositionUpdate or self.alwaysUpdatePosition then
			self.needsPositionUpdate = false
			local headLookXZ = Panel3D.GetHeadLookXZ(true)
			local offset = standardOriginCF.Position * (workspace.CurrentCamera :: Camera).HeadScale
			self.originCF = headLookXZ * CFrame.new(offset)
		end

		self:SetPartCFrame(cameraCF * self.originCF * self.localCF)
	elseif self.panelType == Panel3D.Type.NewStandard then
		if self.needsPositionUpdate or self.alwaysUpdatePosition then
			self.needsPositionUpdate = false
			local userHeadCF = VRService:GetUserCFrame(Enum.UserCFrame.Head)
			local screenOffset = newStandardOriginCF.Position * (workspace.CurrentCamera :: Camera).HeadScale
			self.originCF = userHeadCF * CFrame.new(screenOffset)
		end
		
		self:SetPartCFrame(cameraCF * self.originCF * self.localCF)	
	elseif self.panelType == Panel3D.Type.WristView then
		if VRService:GetUserCFrameEnabled(Enum.UserCFrame.LeftHand) then
			if self.needsPositionUpdate or self.alwaysUpdatePosition then
				self.needsPositionUpdate = false
				local userLeftCF = VRService:GetUserCFrame(Enum.UserCFrame.LeftHand)
				local scaledPosition = userLeftCF.Position * (workspace.CurrentCamera :: Camera).HeadScale
				self.originCF = CFrame.new(scaledPosition)
			end

			local userHeadCF = VRService:GetUserCFrame(Enum.UserCFrame.Head)
			local userHeadCameraCF = cameraCF * userHeadCF

			-- make sure the panel sits at a good distance
			local wristCF = cameraCF * self.originCF
			local finalPosition = wristCF.Position
			if self.distance > 0 then
				-- hack : bring it up to head height when at a distance
				finalPosition = Vector3.new(finalPosition.x, userHeadCameraCF.Position.y - 0.33, finalPosition.z)

				local finalDistance = math.clamp((finalPosition - userHeadCameraCF.Position).Magnitude, self.distance - 0.5, self.distance + 0.5)
				local offsetPos = (finalPosition - userHeadCameraCF.Position).Unit * finalDistance
				finalPosition = userHeadCameraCF.Position + offsetPos
			end

			-- don't angle up/down
			local targetPosition = Vector3.new(userHeadCameraCF.Position.x, finalPosition.y, userHeadCameraCF.Position.z)

			-- face the VR camera from the wrist
			local facingCF = CFrame.new(finalPosition, targetPosition)

			self:GetPart().CFrame = facingCF
		else
			local cf = self.localCF - self.localCF.p
			cf = cf + (self.localCF.p * (workspace.CurrentCamera :: Camera).HeadScale)
			self:SetPartCFrame(cameraCF * cf)
		end
	elseif self.panelType == Panel3D.Type.PositionLocked then
		local userHeadCameraCF = VRUtil.GetUserCFrameWorldSpace(Enum.UserCFrame.Head)

		if FFlagVRFreeUIPanel then
			local cameraOrientation
			if FFlagVRHeadLockedFixUIPosition and not (workspace.CurrentCamera :: Camera).HeadLocked then
				local userHeadCF = VRService:GetUserCFrame(Enum.UserCFrame.Head)
				cameraOrientation = cameraCF * userHeadCF:Inverse()
				cameraOrientation = cameraOrientation - cameraOrientation.p
			else
				cameraOrientation = cameraCF - cameraCF.p
			end

			local headInCameraSpace = userHeadCameraCF * cameraOrientation:Inverse()
			local _, headYaw, _ = headInCameraSpace:ToEulerAnglesYXZ()
			local headYawCFrameInCameraSpace = CFrame.fromEulerAnglesYXZ(0,headYaw,0)

			if self.userHeadRecentered then
				local recenterYawChange = headYaw - self.lastHeadYaw
				local _, followYawViewYaw, _ = self.followYawView:ToEulerAnglesYXZ()
				followYawViewYaw = followYawViewYaw + recenterYawChange
				self.followYawView = CFrame.fromEulerAnglesYXZ(0,followYawViewYaw,0)
				self.userHeadRecentered = false
			end
			
			if self.followYawView.LookVector:Dot(headYawCFrameInCameraSpace.LookVector) < 0.85 then
				self.FollowView = true
			elseif self.followYawView.LookVector:Dot(headYawCFrameInCameraSpace.LookVector) > 0.99 then
				self.FollowView = false
			end
			
			if self.FollowView then
				self.followYawView = self.followYawView:Lerp(headYawCFrameInCameraSpace, dt * 3)
			end
			
			local finalOrientation = cameraOrientation * self.followYawView
			
			local finalPosition = userHeadCameraCF.Position +
				finalOrientation.LookVector * (self.distance * (workspace.CurrentCamera :: Camera).HeadScale) -
				finalOrientation.UpVector * (0.5 * (workspace.CurrentCamera :: Camera).HeadScale)
			local finalCFrame = finalOrientation + finalPosition
			self:SetPartCFrame(finalCFrame)
			
			self.LastFollowCF = finalCFrame
			self.lastHeadYaw = headYaw
		else

			if not self.LastFollowCF then
				self.LastFollowCF = userHeadCameraCF
			end
		
			-- is camera moving ?
			if (self.LastCameraPos - cameraCF.Position).Magnitude > 0.1 then
				self.LastFollowCF = userHeadCameraCF
			end
			self.LastCameraPos = cameraCF.Position

			if self.LastFollowCF.LookVector:Dot(userHeadCameraCF.LookVector) < 0.85 then
				self.FollowView = true
			else
				if self.LastFollowCF.LookVector:Dot(userHeadCameraCF.LookVector) > 0.99 then
					self.FollowView = false
				end
			end
		
			if self.FollowView then
				self.LastFollowCF = self.LastFollowCF:Lerp(userHeadCameraCF, 0.1)
			end

			local finalPosition = userHeadCameraCF.Position + self.LastFollowCF.LookVector * (self.distance * (workspace.CurrentCamera :: Camera).HeadScale + partThickness * 0.5)
			finalPosition = Vector3.new(finalPosition.X, userHeadCameraCF.Position.Y - 0.5 * (workspace.CurrentCamera :: Camera).HeadScale, finalPosition.Z)

			-- don't angle up/down
			local targetPosition = Vector3.new(userHeadCameraCF.Position.x, finalPosition.y, userHeadCameraCF.Position.z)

			-- face the VR camera from the wrist
			local facingCF = CFrame.new(finalPosition, targetPosition)

			self:GetPart().CFrame = facingCF
		end

	end
	
	-- optional lerp
	if self.lerpInitialCF and self.lerpTime > 0 then
		local targetCF = self:GetPart().CFrame
		local targetLook = targetCF.Position + targetCF.LookVector
		self.lerpTime -= dt * lerpSpeed
		local lerpAmount = math.clamp(1 - self.lerpTime, 0, 1)
		targetCF = self.lerpInitialCF:Lerp(targetCF, lerpAmount)
		
		self:GetPart().CFrame = targetCF --CFrame.new(targetCF.Position, targetLook)
		
		if(self.lerpScaleSize.x > 0 or self.lerpScaleSize.y > 0) then
			local newSize = self.lerpInitialSize:Lerp(self.lerpScaleSize, lerpAmount)
			self:ResizeStuds(newSize.x, newSize.y, self.pixelsPerStud)
		end
	end
end

function Panel:OnRecentered()
	self.userHeadRecentered = true
end

function Panel:SetLookedAt(lookedAt)
	if not self.isLookedAt and lookedAt then
		self.isLookedAt = true
		self:OnMouseEnter(self.lookAtPixel.X, self.lookAtPixel.Y)
		if self.forceShowUntilLookedAt then
			self.forceShowUntilLookedAt = false
		end
	elseif self.isLookedAt and not lookedAt then
		self.isLookedAt = false
		self:OnMouseLeave(self.lookAtPixel.X, self.lookAtPixel.Y)
	end
end

function Panel:EvaluateGaze(cameraCF, cameraRenderCF, userHeadCF, lookRay, pointerRay)
	--reset distance data
	self.isClosest = false
	self.lookAtPixel = zeroVector2
	self.lookAtDistance = math.huge

	--check all subpanels first, they're usually in front of the panel.
	local highestSubpanel = nil
	local highestSubpanelDepth = 0
	for guiElement, subpanel in pairs(self.subpanels) do
		if subpanel.part and subpanel.guiElement then
			--note that we're passing subpanel.guiElement and not subpanel.gui
			--this is on purpose so we can fall through to the panels underneath since subpanels will rarely take up the whole
			--panel size.
			local worldIntersectPoint, localIntersectPoint, guiPixelHit, isOnGui = Panel3D.RaycastOntoPanel(
				subpanel.part,
				subpanel.gui,
				subpanel.guiElement,
				pointerRay
			)
			if worldIntersectPoint then
				subpanel.lookAtPixel = guiPixelHit
				subpanel.cursorPos = guiPixelHit

				if isOnGui and subpanel.depthOffset > highestSubpanelDepth then
					highestSubpanel = subpanel
					highestSubpanelDepth = subpanel.depthOffset
				end
			end
		end
	end

	if highestSubpanel and highestSubpanel.depthOffset > 0 then
		currentCursorParent = highestSubpanel.gui
		currentCursorPos = highestSubpanel.cursorPos
		currentClosest = highestSubpanel

		for _, subpanel in pairs(self.subpanels) do
			if subpanel ~= highestSubpanel then
				subpanel:SetLookedAt(false)
			end
		end
		highestSubpanel:SetLookedAt(true)
	end
	
	if self.panelType == Panel3D.Type.WristView then
		self.isWristHeldUp = false
		local userLeftCF = VRService:GetUserCFrame(Enum.UserCFrame.LeftHand)
		local scaledPosition = userLeftCF.Position * (workspace.CurrentCamera :: Camera).HeadScale
		local wristCF = cameraCF * CFrame.new(scaledPosition)

		if self.distance == 0 then
			-- conversely is the wrist where the panel would be ?
			local userHeadCF = VRService:GetUserCFrame(Enum.UserCFrame.Head)
			local userHeadCameraCF = cameraCF * userHeadCF
			local finalPosition = wristCF.Position
			finalPosition = Vector3.new(finalPosition.x, userHeadCameraCF.Position.y - 0.33, finalPosition.z)

			local finalDistance = math.clamp((finalPosition - userHeadCameraCF.Position).Magnitude, 0.5, 1.0)
			local offsetPos = (finalPosition - userHeadCameraCF.Position).Unit * finalDistance
			finalPosition = userHeadCameraCF.Position + offsetPos
			
			local delta = (finalPosition - wristCF.Position).Magnitude
			self.isWristHeldUp = delta < 0.25
		else
			-- keep holding it up while you are aiming at the wrist / bottom bar
			local userRightCF = VRService:GetUserCFrame(Enum.UserCFrame.RightHand)
			local dirRightToLeft = userLeftCF.Position - userRightCF.Position
			local dotDir = userRightCF.LookVector:Dot(dirRightToLeft)
			local projectedPosition = userRightCF.Position + userRightCF.LookVector * dotDir
			local projectedDistance = (userLeftCF.Position - projectedPosition).Magnitude
			if(projectedDistance < 0.5) then -- projected distance from the aim dir
				self.isWristHeldUp = true
			end
		end
	end

	local gui = self:GetGUI()
	local worldIntersectPoint, localIntersectPoint, guiPixelHit, isOnGui = Panel3D.RaycastOntoPanel(
		self:GetPart(),
		gui,
		gui,
		pointerRay
	)
	
	if worldIntersectPoint then
		self.isOffscreen = false

		--transform worldIntersectPoint to gui space
		self.lookAtPixel = guiPixelHit
		self.cursorPos = guiPixelHit

		--fire mouse enter/leave events if necessary
		self:SetLookedAt(isOnGui)

		--evaluate distance
		self.lookAtDistance = (worldIntersectPoint - cameraRenderCF.p).magnitude
		if self.isLookedAt and self.lookAtDistance < currentMaxDist and self.showCursor then
			currentMaxDist = self.lookAtDistance
			currentClosest = self
			if not highestSubpanel then
				currentCursorParent = self.gui
				currentCursorPos = self.cursorPos
			end
		end
	else
		self.isOffscreen = true

		--Not looking at the plane at all, so fire off mouseleave if necessary.
		if self.lookedAt then
			self.lookedAt = false
			self:OnMouseLeave(self.lookAtPixel.X, self.lookAtPixel.Y)
		end
	end
end

function Panel:EvaluateTransparency()
	--Early exit if force shown
	if self.forceShowUntilLookedAt or not self.canFade or self.forceShowUntilTick > tick() then
		self.transparency = 0
		return
	end
	
	--Early exit if we're looking at the panel (no transparency!)
	if self.isLookedAt then
		self.transparency = 0
		return
	end
	--Similarly, exit if we can't possibly see the panel.
	if self.isOffscreen then
		self.transparency = 1
		return
	end
	--Otherwise, we'll want to calculate the transparency.
	self.transparency = self:CalculateTransparency()
end

function Panel:Update(cameraCF, cameraRenderCF, userHeadCF, lookRay, pointerRay, dt)
	if (self.forceShowUntilLookedAt or self.forceShowUntilTick > tick()) and not self.part then
		self:GetPart()
		self:GetGUI()
	end
	if not self.part then
		return
	end

	local isModal = (currentModal == self)
	if not isModal and self.linkedTo and self.linkedTo == currentModal then
		isModal = true
	end
	if currentModal and not isModal then
		self:SetEnabled(false)
		return
	end

	self:PreUpdate(cameraCF, cameraRenderCF, userHeadCF, lookRay, dt)
	if self.isVisible then
		self:EvaluatePositioning(cameraCF, cameraRenderCF, userHeadCF, dt)
		for i, v in pairs(self.subpanels) do
			v:Update()
		end
		
		self:EvaluateGaze(cameraCF, cameraRenderCF, userHeadCF, lookRay, pointerRay)

		self:EvaluateTransparency(cameraCF, cameraRenderCF)
	else
		if self.alwaysUpdatePosition then
			self:EvaluatePositioning(cameraCF, cameraRenderCF, userHeadCF, dt)
		end
	end
end
--End of Panel update methods

--Panel virtual methods
function Panel:PreUpdate(cameraCF, cameraRenderCF, userHeadCF, lookRay, dt) --virtual: handle positioning here
end

function Panel:OnUpdate(dt) --virtual: handle transparency here
end

function Panel:OnMouseEnter(x, y) --virtual
end

function Panel:OnMouseLeave(x, y) --virtual
end

function Panel:OnEnabled(enabled) --virtual
end

function Panel:OnModalChanged(isModal) --virtual
end

function Panel:OnVisibilityChanged(visible) --virtual
end

function Panel:CalculateTransparency() --virtual
	if not self.canFade then
		return 0
	end

	local guiWidth, guiHeight = self.gui.AbsoluteSize.X, self.gui.AbsoluteSize.Y
	local lookX, lookY = self.lookAtPixel.X, self.lookAtPixel.Y

	--Determine the distance from the edge;
	--if x is negative it's on the left side, meaning the distance is just absolute value
	--if x is positive it's on the right side, meaning the distance is x minus the width
	local xEdgeDist = lookX < 0 and -lookX or (lookX - guiWidth)
	local yEdgeDist = lookY < 0 and -lookY or (lookY - guiHeight)
	if lookX > 0 and lookX < guiWidth then
		xEdgeDist = 0
	end
	if lookY > 0 and lookY < guiHeight then
		yEdgeDist = 0
	end
	local edgeDist = math.sqrt(xEdgeDist ^ 2 + yEdgeDist ^ 2)

	--since transparency is 0-1, we know how many pixels will give us 0 and how many will give us 1.
	local offset = fullyOpaqueAtPixelsFromEdge
	local interval = fullyTransparentAtPixelsFromEdge
	--then we just clamp between 0 and 1.
	return math.max(0, math.min(1, (edgeDist - offset) / interval))
end
--End of Panel virtual methods

--Panel configuration methods
function Panel:ResizeStuds(width, height, pixelsPerStud)
	pixelsPerStud = pixelsPerStud or defaultPixelsPerStud

	self.width = width
	self.height = height

	self.pixelScale = pixelsPerStud / defaultPixelsPerStud

	local part = self:GetPart()
	part.Size = Vector3.new(self.width * (workspace.CurrentCamera :: Camera).HeadScale, self.height * (workspace.CurrentCamera :: Camera).HeadScale, partThickness)
	local gui = self:GetGUI()
	gui.CanvasSize = Vector2.new(pixelsPerStud * self.width, pixelsPerStud * self.height)

	for i, v in pairs(self.subpanels) do
		if v.part then
			v.part.Size = part.Size
		end
		if v.gui then
			v.gui.CanvasSize = gui.CanvasSize
		end
	end
end

function Panel:ResizePixels(width, height, pixelsPerStud)
	pixelsPerStud = pixelsPerStud or defaultPixelsPerStud

	local widthInStuds = width / pixelsPerStud
	local heightInStuds = height / pixelsPerStud
	self:ResizeStuds(widthInStuds, heightInStuds, pixelsPerStud)
end

function Panel:OnHeadScaleChanged()
	local pixelsPerStud = self.pixelScale * defaultPixelsPerStud
	self:ResizeStuds(self.width, self.height, pixelsPerStud)
end

function Panel:SetType(panelType, config)
	self.panelType = panelType

	--clear out old type-specific members

	self.localCF = CFrame.new()

	self.angleFromHorizon = false
	self.angleFromForward = false
	self.distance = 0

	if not config then
		config = {}
	end

	if panelType == Panel3D.Type.None then
		--nothing to do
		return
	elseif panelType == Panel3D.Type.Standard then
		self.localCF = config.CFrame or CFrame.new()
	elseif panelType == Panel3D.Type.Fixed then
		self.localCF = config.CFrame or CFrame.new()
	elseif panelType == Panel3D.Type.HorizontalFollow then
		self.angleFromHorizon = CFrame.Angles(config.angleFromHorizon or 0, 0, 0)
		self.angleFromForward = CFrame.Angles(0, config.angleFromForward or 0, 0)
		self.distance = config.distance or 5
	elseif panelType == Panel3D.Type.FixedToHead then
		self.localCF = config.CFrame or CFrame.new()
	elseif panelType == Panel3D.Type.NewStandard then
		self.localCF = config.CFrame or CFrame.new()
	elseif panelType == Panel3D.Type.WristView then
		self.localCF = config.CFrame or CFrame.new()
		self.distance = 0
	elseif panelType == Panel3D.Type.PositionLocked then
		self.localCF = config.CFrame or CFrame.new()	
	else
		error("Invalid Panel type")
	end
end

function Panel:IsPositionLockedType()
	return self.panelType == Panel3D.Type.PositionLocked
end

function Panel:SetVisible(visible, modal)
	if visible ~= self.isVisible then
		self:OnVisibilityChanged(visible)
		if not visible then
			Panel3D.OnPanelClosed:Fire(self.name)
		else
			self.needsPositionUpdate = true
			if self.panelType == Panel3D.Type.WristView then
				local userHeadCF = VRService:GetUserCFrame(Enum.UserCFrame.Head)
				self.originCF = userHeadCF * newStandardOriginCF
			end
		end
	end

	self.isVisible = visible
	self:SetEnabled(visible)
	if visible and modal then
		Panel3D.SetModalPanel(self)
	end
	if not visible and currentModal == self then
		if modal then
			--restore last modal panel
			Panel3D.SetModalPanel(lastModal)
		else
			Panel3D.SetModalPanel(nil)

			--if the coder explicitly wanted to hide this modal panel,
			--it follows that they don't want it to be restored when the next
			--modal panel is hidden.
			if lastModal == self then
				lastModal = nil
			end
		end
	end

	if not visible and self.forceShowUntilLookedAt then
		self.forceShowUntilLookedAt = false
	end
end

function Panel:IsVisible()
	return self.isVisible
end

function Panel:LinkTo(panelName)
	if type(panelName) == "string" then
		self.linkedTo = Panel3D.Get(panelName)
	else
		self.linkedTo = panelName
	end
end

function Panel:ForceShowUntilLookedAt(makeModal)
	--ensure the part exists
	self:GetPart()
	self:GetGUI()

	self:SetVisible(true, makeModal)
	self:RequestPositionUpdate()
	self.forceShowUntilLookedAt = true
end

function Panel:ForceShowForSeconds(seconds)
	self:GetPart()
	self:GetGUI()

	self:SetVisible(true)
	if self.forceShowUntilTick < tick() then
		self:RequestPositionUpdate()
	end
	self.forceShowUntilTick = tick() + seconds
end

function Panel:SetCanFade(canFade)
	self.canFade = canFade
end

function Panel:RequestPositionUpdate()
	self.needsPositionUpdate = true
end

function Panel:ForcePositionUpdate(forceUpdate)
	self.alwaysUpdatePosition = forceUpdate
end

function Panel:GetGuiPositionInPanelSpace(guiPosition)
	local partSize = Vector2.new(self.part.Size.X, self.part.Size.Y)
	local guiSize = self.gui.AbsoluteSize
	local guiCenter = guiSize / 2

	local guiPositionFraction = (guiPosition - guiCenter) / guiSize
	local positionInPartFace = guiPositionFraction * partSize

	return Vector3.new(positionInPartFace.X, positionInPartFace.Y, partThickness * 0.5)
end

function Panel:GetCFrameInCameraSpace()
	if self.panelType == Panel3D.Type.Standard or self.panelType == Panel3D.Type.NewStandard then
		return self.originCF * self.localCF
	else
		return self.localCF or CFrame.new()
	end
end

--Child class, Subpanel
local Subpanel = {}
Subpanel.__index = Subpanel
function Subpanel.new(parentPanel, guiElement)
	local self = {}
	self.parentPanel = parentPanel
	self.guiElement = guiElement
	self.lastParent = guiElement.Parent
	self.ancestryConn = nil
	self.changedConn = nil

	self.lookAtPixel = Vector2.new(-1, -1)
	self.cursorPos = Vector2.new(-1, -1)
	self.lookedAt = false

	self.isEnabled = true

	self.part = nil
	self.gui = nil
	self.guiSurrogate = nil

	self.depthOffset = 0

	setmetatable(self, Subpanel)

	self:GetGUI()
	self:UpdateSurrogate()
	self:WatchParent(self.lastParent)

	guiElement.Parent = self.guiSurrogate

	local function ancestryCallback(parent, child)
		self:GetGUI().Enabled = self.parentPanel:GetGUI():IsAncestorOf(self.lastParent)
		if not self:GetGUI().Enabled then
			self:GetPart().Parent = nil
		else
			self:GetPart().Parent = workspace.CurrentCamera
		end
		if child == guiElement then
			--disconnect the event because we're going to move this element
			self.ancestryConn:disconnect()

			self.lastParent = guiElement.Parent
			guiElement.Parent = self.guiSurrogate
			self:WatchParent(self.lastParent)

			--reconnect it
			self.ancestryConn = guiElement.AncestryChanged:connect(ancestryCallback)
		end
	end
	self.ancestryConn = guiElement.AncestryChanged:connect(ancestryCallback)

	return self
end

function Subpanel:Cleanup()
	self.guiElement.Parent = self.lastParent
	if self.part then
		self.part:Destroy()
		self.part = nil
	end
	spawn(function()
		wait() --wait so anything that's in the gui that doesn't want to be has time to get out (panel cursor for example)
		if self.gui then
			self.gui:Destroy()
			self.gui = nil
		end
	end)
	if self.ancestryConn then
		self.ancestryConn:disconnect()
		self.ancestryConn = nil
	end
	if self.changedConn then
		self.changedConn:disconnect()
		self.changedConn = nil
	end
	self.lastParent = nil
	self.parentPanel = nil
	self.guiElement = nil
	self.guiSurrogate = nil
end

function Subpanel:OnMouseEnter(x, y) end
function Subpanel:OnMouseLeave(x, y) end

function Subpanel:SetLookedAt(lookedAt)
	if lookedAt and not self.lookedAt then
		self:OnMouseEnter(self.lookAtPixel.X, self.lookAtPixel.Y)
	elseif not lookedAt and self.lookedAt then
		self:OnMouseLeave(self.lookAtPixel.X, self.lookAtPixel.Y)
	end
	self.lookedAt = lookedAt
end

function Subpanel:WatchParent(parent)
	if self.changedConn then
		self.changedConn:disconnect()
	end
	self.changedConn = parent.Changed:connect(function(prop)
		if prop == "AbsolutePosition" or prop == "AbsoluteSize" or prop == "Parent" then
			self:UpdateSurrogate()
		end
	end)
end

function Subpanel:UpdateSurrogate()
	local lastParent = self.lastParent
	self.guiSurrogate.Position = UDim2.new(0, lastParent.AbsolutePosition.X, 0, lastParent.AbsolutePosition.Y)
	self.guiSurrogate.Size = UDim2.new(0, lastParent.AbsoluteSize.X, 0, lastParent.AbsoluteSize.Y)
end

function Subpanel:GetPart()
	if self.part then
		return self.part
	end

	self.part = self.parentPanel:GetPart():Clone()
	self.part.Parent = partFolder
	return self.part
end

function Subpanel:GetGUI()
	if self.gui then
		return self.gui
	end

	self.gui = Create("SurfaceGui")({
		Parent = CoreGui,
		Adornee = self:GetPart(),
		Active = true,
		ToolPunchThroughDistance = 1000,
		CanvasSize = self.parentPanel:GetGUI().CanvasSize,
		Enabled = self.parentPanel.isEnabled,
		AlwaysOnTop = true,
	})
	self.guiSurrogate = Create("Frame")({
		Parent = self.gui,

		Active = false,

		Position = UDim2.new(0, 0, 0, 0),
		Size = UDim2.new(1, 0, 1, 0),

		BackgroundTransparency = 1,
	})
	return self.gui
end

function Subpanel:SetDepthOffset(offset)
	self.depthOffset = offset
end

function Subpanel:Update()
	local part = self:GetPart()
	local parentPart = self.parentPanel:GetPart()

	if part and parentPart then
		part.CFrame = parentPart.CFrame * CFrame.new(0, 0, -self.depthOffset)
	end
end

function Subpanel:SetEnabled(enabled)
	-- Don't change check here, parentPanel may try to refresh our enabled state
	-- alternatively we could listen to an enabled changed event on our parent panel
	self.isEnabled = enabled
	if enabled and self.parentPanel.isEnabled then
		self:GetPart().Parent = partFolder
		self:GetGUI().Enabled = true
	else
		self:GetPart().Parent = nil
		self:GetGUI().Enabled = false
	end
end

function Subpanel:GetEnabled()
	return self.isEnabled
end

function Subpanel:GetPixelScale()
	return self.parentPanel:GetPixelScale()
end
function Panel:GetPixelScale()
	return self.pixelScale
end

function Panel:AddSubpanel(guiElement)
	local subpanel = Subpanel.new(self, guiElement)
	self.subpanels[guiElement] = subpanel
	return subpanel
end

function Panel:RemoveSubpanel(guiElement)
	local subpanel = self.subpanels[guiElement]
	if subpanel then
		subpanel:Cleanup()
	end
	self.subpanels[guiElement] = nil
end

function Panel:SetSubpanelDepth(guiElement, depth)
	local subpanel = self.subpanels[guiElement]

	if depth == 0 then
		if subpanel then
			self:RemoveSubpanel(guiElement)
		end
		return nil
	end

	if not subpanel then
		subpanel = self:AddSubpanel(guiElement)
	end
	subpanel:SetDepthOffset(depth)

	return subpanel
end

--End of Panel configuration methods
--End of Panel class implementation

--Panel3D API
function Panel3D.Get(name)
	local panel = panels[name]
	if not panels[name] then
		panels[name] = Panel.new(name)
		panel = panels[name]
	end
	return panel
end
--End of Panel3D API

--Panel3D Setup
local frameStart = tick()
local function onRenderStep()
	if not VRService.VREnabled then
		return
	end

	local now = tick()
	local dt = now - frameStart
	frameStart = now

	--reset distance info
	currentClosest = nil
	currentMaxDist = math.huge

	--figure out some useful stuff
	local camera = workspace.CurrentCamera :: Camera
	local cameraCF = camera.CFrame
	local cameraRenderCF = camera:GetRenderCFrame()
	local userHeadCF = VRService:GetUserCFrame(Enum.UserCFrame.Head)
	local lookRay = Ray.new(cameraRenderCF.p, cameraRenderCF.lookVector)

	local inputUserCFrame = VRService.GuiInputUserCFrame
	local inputCF = cameraCF * VRService:GetUserCFrame(inputUserCFrame)
	local pointerRay = Ray.new(inputCF.p, inputCF.lookVector)

	--allow all panels to run their own update code
	for i, v in pairs(panels) do
		v:Update(cameraCF, cameraRenderCF, userHeadCF, lookRay, pointerRay, dt)
	end

	--evaluate linked panels
	local processed = {}
	for i, v in pairs(panels) do
		if not processed[v] and v.linkedTo and v.isVisible and v.linkedTo.isVisible then
			processed[v] = true
			processed[v.linkedTo] = true

			local minTransparency = math.min(v.transparency, v.linkedTo.transparency)
			v.transparency = minTransparency
			v.linkedTo.transparency = minTransparency
		end
	end

	--run post update because the distance information hasn't been
	--finalized until now.
	for i, v in pairs(panels) do
		--If the part is fully transparent, we don't want to keep it around in the workspace.
		if v.part and v.gui then
			--check if this panel is the current modal panel
			local isModal = (currentModal == v)
			--but also check if this panel is linked to the current modal panel
			if not isModal and v.linkedTo and v.linkedTo == currentModal then
				isModal = true
			end

			local show = v.isVisible
			if not isModal and currentModal then
				show = false
			end
			if v.transparency >= 1 then
				show = false
			end

			if v.forceShowUntilLookedAt then
				show = true
			end
			if not v.canFade and v.isVisible then
				show = true
			end

			v:SetEnabled(show)
		end

		v:OnUpdate(dt)
	end
	
	if currentClosest then
		local x, y = currentCursorPos.X, currentCursorPos.Y
		local pixelScale = currentClosest:GetPixelScale()
		cursor.Size = UDim2.new(0, cursorSize * pixelScale, 0, cursorSize * pixelScale)
		cursor.Position = UDim2.new(0, x - cursor.AbsoluteSize.x * 0.5, 0, y - cursor.AbsoluteSize.y * 0.5)
	else
		cursor.Parent = nil
	end

	lastClosest = currentClosest
end

local isCameraReady = true
local function putFoldersIn(parent)
	partFolder.Parent = parent
	effectFolder.Parent = parent
end

local headscaleChangedConn = nil
local function onHeadScaleChanged()
	for i, v in pairs(panels) do
		v:OnHeadScaleChanged()
	end
end

local cameraCFrameChangedConn = nil
local function onCameraCFrameChanged()
	local camera = workspace.CurrentCamera :: Camera
	local cameraCF = camera.CFrame
	local cameraRenderCF = camera:GetRenderCFrame()
	local userHeadCF = VRService:GetUserCFrame(Enum.UserCFrame.Head)
	local lookRay = Ray.new(cameraRenderCF.p, cameraRenderCF.lookVector)

	local inputUserCFrame = VRService.GuiInputUserCFrame
	local inputCF = cameraCF * VRService:GetUserCFrame(inputUserCFrame)
	local pointerRay = Ray.new(inputCF.p, inputCF.lookVector)

	for i, v in pairs(panels) do
		v:Update(cameraCF, cameraRenderCF, userHeadCF, lookRay, pointerRay, 0)
	end
end

local function onCurrentCameraChanged()
	onHeadScaleChanged()
	if headscaleChangedConn then
		headscaleChangedConn:disconnect()
	end
	headscaleChangedConn = (workspace.CurrentCamera :: Camera):GetPropertyChangedSignal("HeadScale"):Connect(onHeadScaleChanged)

	if cameraCFrameChangedConn then
		cameraCFrameChangedConn:disconnect()
	end
	cameraCFrameChangedConn = (workspace.CurrentCamera :: Camera):GetPropertyChangedSignal("CFrame"):Connect(onCameraCFrameChanged)

	if VRService.VREnabled and isCameraReady then
		putFoldersIn(workspace.CurrentCamera)
	end
end

local currentCameraChangedConn = nil
local renderStepFuncBound = false
local cframeChangedConnection = nil
local function onVREnabledChanged()
	if VRService.VREnabled then
		while not isCameraReady do
			wait()
		end

		if workspace.CurrentCamera then
			onCurrentCameraChanged()
		end
		currentCameraChangedConn = workspace:GetPropertyChangedSignal("CurrentCamera"):Connect(onCurrentCameraChanged)

		putFoldersIn(workspace.CurrentCamera)

		if not renderStepFuncBound then
			RunService:BindToRenderStep(renderStepName, Enum.RenderPriority.Last.Value, onRenderStep)
			renderStepFuncBound = true
		end

		if FFlagVRFreeUIPanel then
			-- When the floor position changes, we know a recenter occurred
			cframeChangedConnection = VRService.UserCFrameChanged:Connect(function(userCFrameType, _)
				if userCFrameType == Enum.UserCFrame.Floor then
					for i, v in pairs(panels) do
						v:OnRecentered()
					end
				end
			end)
		end

	else
		if currentCameraChangedConn then
			currentCameraChangedConn:disconnect()
			currentCameraChangedConn = nil
		end
		if FFlagVRFreeUIPanel and cframeChangedConnection then
			cframeChangedConnection:disconnect()
			cframeChangedConnection = nil
		end
		putFoldersIn(nil)

		if renderStepFuncBound then
			RunService:UnbindFromRenderStep(renderStepName)
			renderStepFuncBound = false
		end
	end
end
VRService:GetPropertyChangedSignal("VREnabled"):connect(onVREnabledChanged)
spawn(onVREnabledChanged)

coroutine.wrap(function()
	while true do
		if workspace.CurrentCamera then
			if (workspace.CurrentCamera :: Camera).CameraSubject ~= nil or (workspace.CurrentCamera :: Camera).CameraType == Enum.CameraType.Scriptable then
				break
			end
			(workspace.CurrentCamera :: Camera).Changed:Wait()
		else
			wait()
		end
	end

	isCameraReady = true
end)()

return Panel3D
