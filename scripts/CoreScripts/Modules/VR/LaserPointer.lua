--LaserPointer.lua
--Implements the visual part of the VR laser pointer
--Written by Kyle, September 2016
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local ContextActionService = game:GetService("ContextActionService")
local UserInputService = game:GetService("UserInputService")
local Players = game:GetService("Players")
local GuiService = game:GetService("GuiService")
local VRService = game:GetService("VRService")
local Utility = require(RobloxGui.Modules.Settings.Utility)

local LocalPlayer = Players.LocalPlayer
while not LocalPlayer do
	Players.Changed:wait()
	LocalPlayer = Players.LocalPlayer
end

local gamma, invGamma = 2.2, 1/2.2
local function fromLinearRGB(color)
	return Color3.new(color.r ^ gamma, color.g ^ gamma, color.b ^ gamma)
end
local function toLinearRGB(color)
	return Color3.new(color.r ^ invGamma, color.g ^ invGamma, color.b ^ invGamma)
end

local function addPartsToGame(...)
	local parts = {...}
	local container = GuiService.CoreEffectFolder

	--The container might not be ready yet.
	if not container then
		coroutine.wrap(function()
			--Wait until the container is ready, then add the parts to it.
			while GuiService.Changed:wait() ~= "CoreEffectFolder" and GuiService.CoreEffectFolder == nil do end
			for _, part in pairs(parts) do
				part.Parent = container
			end
		end)()
	else
		--The container is ready, no waiting necessary.
		for _, part in pairs(parts) do
			part.Parent = container
		end
	end
end
local function removePartsFromGame(...)
	local parts = {...}
	for _, part in pairs(parts) do
		part.Parent = nil
	end
end

local function getLocalHumanoid()
	local character = LocalPlayer.Character
	if not character then
		return
	end

	for _, child in pairs(character:GetChildren()) do
		if child:IsA("Humanoid") then
			return child
		end
	end
end	

local function applyExpCurve(x, exp)
	local y = x ^ exp
	if y ~= y then
		y = math.abs(x) ^ exp
	end
	return y
end

local HEAD_MOUNT_OFFSET = Vector3.new(0.5, 0.5, 0)
local HEAD_MOUNT_THICKNESS_MULTIPLIER = 0.25

local BUTTON_LONG_PRESS_TIME = 0.75

local LaserPointerMode = {
	Disabled = 0,
	Pointer = 1,
	Navigation = 2,
	Hidden = 3
}

--Teleport visual configuration
local TELEPORT = {
	MODE_ENABLED = true,

	ARC_COLOR_GOOD = fromLinearRGB(Color3.fromRGB(0, 162, 255)),
	ARC_COLOR_BAD = fromLinearRGB(Color3.fromRGB(253, 68, 72)),
	ARC_THICKNESS = 0.025,

	PLOP_GOOD = "rbxasset://textures/ui/VR/VRPointerDiscBlue.png",
	PLOP_BAD = "rbxasset://textures/ui/VR/VRPointerDiscRed.png",
	PLOP_BALL_COLOR_GOOD = BrickColor.new("Bright green"),
	PLOP_BALL_COLOR_BAD = BrickColor.new("Bright red"),
	PLOP_BALL_SIZE = 0.5,
	PLOP_SIZE = 2,
	PLOP_PULSE_MIN_SIZE = 0,
	PLOP_PULSE_MAX_SIZE = 2,

	MAX_VALID_DISTANCE = 100,

	BUTTON_DOWN_THRESHOLD = 0.95,
	BUTTON_UP_THRESHOLD = 0.5,

	MIN_VELOCITY = 10,
	RANGE_T_EXP = 2,
	G = 10, -- Gravity constant for parabola

	PULSE_DURATION = 0.8,
	PULSE_PERIOD = 1,
	PULSE_EXP = 2,
	PULSE_SIZE_0 = 0.25,
	PULSE_SIZE_1 = 2,

	BALL_WAVE_PERIOD = 2,
	BALL_WAVE_AMPLITUDE = 0.5,
	BALL_WAVE_START = 0.25,
	BALL_WAVE_EXP = 0.8,

	FLOOR_OFFSET = 4.5,

	FADE_OUT_DURATION = 0.125,
	FADE_IN_DURATION = 0.125,

	TRANSITION_DURATION = 0.25,
	TRANSITION_FUNC = Utility:GetEaseInOutQuad(),
}

local LASER = {
	MODE_ENABLED = true,

	ARC_COLOR_GOOD = TELEPORT.ARC_COLOR_GOOD,
	ARC_COLOR_BAD = TELEPORT.ARC_COLOR_BAD,
	ARC_THICKNESS = 0.02,

	MAX_DISTANCE = 500,

	G = 0, -- Gravity constant for parabola; in this case we want a laser/straight line

	--Couldn't figure out a good name for this. This is the maximum angle that the parabola's hit point
	--can be from the laser's hit point when switching to laser pointer mode solely from the parabola hitting
	--a gui part. 
	SWITCH_AIM_THRESHOLD = math.rad(15),

	TRANSITION_DURATION = 0.075,
	TRANSITION_FUNC = Utility:GetEaseInOutQuad()
}

local zeroVector2, identityVector2 = Vector2.new(0, 0), Vector2.new(1, 1)
local zeroVector3, identityVector3 = Vector3.new(0, 0, 0), Vector3.new(1, 1, 1)
local flattenMask = Vector3.new(1, 0, 1) --flattens a direction vector when multiplied by removing the vertical component
local minimumPartSize = Vector3.new(0.2, 0.2, 0.2)
local identity = CFrame.new()

local aimableStates = {
	[Enum.HumanoidStateType.Running] = true,
	[Enum.HumanoidStateType.RunningNoPhysics] = true,
	[Enum.HumanoidStateType.None] = true
}

local LaserPointer = {}
LaserPointer.__index = LaserPointer
LaserPointer.Mode = LaserPointerMode

function LaserPointer.new()
	local self = setmetatable({}, LaserPointer)

	self.mode = LaserPointerMode.Disabled
	self.lastMode = self.mode

	self.inputUserCFrame = Enum.UserCFrame.RightHand
	self.equippedTool = false

	self.lastLaserModeHit = tick()

	self.guiMenuIsOpen = false
	self.externalForcePointer = false

	self.navHitPoint = zeroVector3
	self.navHitNormal = Vector3.new(0, 1, 0)
	self.navHitPart = nil

	self.navigationIsValid = false
	self.lastNavigationValidityChangeTime = tick()
	self.plopBallBounceStart = tick()

	self.buttonPressStart = 0

	do --Create the instances that make up the Laser Pointer
		self.parabola = Utility:Create("ParabolaAdornment") {
			Name = "LaserPointerParabola",
			Parent = CoreGui,
			A = -1,
			B = 2,
			C = 0,
			Color3 = TELEPORT.COLOR_GOOD,
			Thickness = TELEPORT.ARC_THICKNESS,
			Visible = false
		}

		self.originPart = Utility:Create("Part") {
			Name = "LaserPointerOrigin",
			Anchored = true,
			CanCollide = false,
			TopSurface = Enum.SurfaceType.SmoothNoOutlines,
			BottomSurface = Enum.SurfaceType.SmoothNoOutlines,
			Material = Enum.Material.SmoothPlastic,
			Size = minimumPartSize,
			Transparency = 1
		}
		self.parabola.Adornee = self.originPart
		
		self.plopPart = Utility:Create("Part") {
			Name = "LaserPointerTeleportPlop",
			Anchored = true,
			CanCollide = false,
			Size = minimumPartSize,
			Transparency = 1
		}
		self.plopBall = Utility:Create("Part") {
			Name = "LaserPointerTeleportPlopBall",
			Anchored = true,
			CanCollide = false,
			TopSurface = Enum.SurfaceType.SmoothNoOutlines,
			BottomSurface = Enum.SurfaceType.SmoothNoOutlines,
			Material = Enum.Material.Neon,
			BrickColor = TELEPORT.PLOP_BALL_COLOR_GOOD,
			Shape = Enum.PartType.Ball,
			Size = identityVector3 * TELEPORT.PLOP_BALL_SIZE
		}
		self.plopAdorn = Utility:Create("ImageHandleAdornment") {
			Name = "LaserPointerTeleportPlopAdorn",
			Parent = self.plopPart,
			Adornee = self.plopPart,
			Size = identityVector2 * TELEPORT.PLOP_SIZE,
			Image = TELEPORT.PLOP_GOOD
		}
		self.plopAdornPulse = Utility:Create("ImageHandleAdornment") {
			Name = "LaserPointerTeleportPlopAdornPulse",
			Parent = self.plopPart,
			Adornee = self.plopPart,
			Size = zeroVector2,
			Image = TELEPORT.PLOP_GOOD,
			Transparency = 0.5
		}
	end

	do --Event connections and final setup
		GuiService.MenuOpened:connect(function()
			self.guiMenuIsOpen = true
		end)
		GuiService.MenuClosed:connect(function()
			self.guiMenuIsOpen = false
		end)

		self.inputUserCFrame = VRService.GuiInputUserCFrame
		VRService.Changed:connect(function(prop)
			if prop == "GuiInputUserCFrame" then
				self.inputUserCFrame = VRService.GuiInputUserCFrame
			end
		end)
	end

	self:onModeChanged(self.mode)

	self:updateInputUserCFrame()

	return self
end

function LaserPointer.hasAnyHandController()
	return VRService:GetUserCFrameEnabled(Enum.UserCFrame.RightHand) or
	       VRService:GetUserCFrameEnabled(Enum.UserCFrame.LeftHand)
end

function LaserPointer.getModeName(mode)
	for name, value in pairs(LaserPointerMode) do
		if mode == value then
			return name
		end
	end

	return "unknown"
end

function LaserPointer:updateInputUserCFrame()
	if VRService:GetUserCFrameEnabled(Enum.UserCFrame.RightHand) then
		VRService.GuiInputUserCFrame = Enum.UserCFrame.RightHand
	elseif VRService:GetUserCFrameEnabled(Enum.UserCFrame.LeftHand) then
		VRService.GuiInputUserCFrame = Enum.UserCFrame.LeftHand
	else
		VRService.GuiInputUserCFrame = Enum.UserCFrame.Head
	end
end

function LaserPointer:onModeChanged(newMode)
	self:updateInputUserCFrame()

	--Disabled mode
	if newMode == LaserPointerMode.Disabled or newMode == LaserPointerMode.Hidden then
		removePartsFromGame(self.originPart, self.plopPart, self.plopBall)
		self.parabola.Visible = false
		self:setNavigationActionEnabled(false)
	--Pointer mode
	elseif newMode == LaserPointerMode.Pointer then
		addPartsToGame(self.originPart)
		removePartsFromGame(self.plopPart, self.plopBall)
		self.parabola.Visible = true
		self:setNavigationActionEnabled(false)
	--Navigation mode
	elseif newMode == LaserPointerMode.Navigation then
		addPartsToGame(self.originPart, self.plopPart, self.plopBall)
		self.parabola.Visible = true
		self:setNavigationActionEnabled(true)
	end
end

function LaserPointer:setMode(mode)
	if mode == self.mode then
		return
	end

	local oldMode = self.mode
	self.mode = mode
	self.lastMode = oldMode
	self:onModeChanged(mode)
end

function LaserPointer:getMode()
	return self.mode
end

local cosMax = math.cos(math.pi/4)
local sinMax = math.sin(math.pi/4)
function LaserPointer:calculateLaunchVelocity(gravity, desiredRange, height)
	--return math.sqrt(desiredRange * gravity) / math.sqrt(math.sin(2*math.pi/4))
	--This calculates a launch velocity for an imaginary projectile that will start at y=height, travel desiredRange
	--in the x direction until it hits y=0. This is only reached when the projectile is launched at the optimal
	--launch angle, 45 degrees elevation. Anything above or below that will fall short, which is desired.
	--See https://en.wikipedia.org/wiki/Range_of_a_projectile for a breakdown of this function.
	return -(math.sqrt(gravity / cosMax)*desiredRange) / (math.sqrt(2*height*cosMax+2*desiredRange*sinMax))
end

function LaserPointer:isHeadMounted()
	return self.inputUserCFrame == Enum.UserCFrame.Head
end

function LaserPointer:shouldForcePointer()
	return self.externalForcePointer or self.guiMenuIsOpen
end

function LaserPointer:setForcePointer(force)
	self.externalForcePointer = force
end

function LaserPointer:getNavigationOrigin()
	local humanoid = getLocalHumanoid()
	if not humanoid then return end

	local rootPart = humanoid.Torso
	if not rootPart then return end

	local hipHeight = humanoid.HipHeight
	if humanoid.RigType == Enum.HumanoidRigType.R6 then
		hipHeight = 2
	end
	local rootPartOffset = rootPart.Size.Y / 2
	return rootPart.Position + Vector3.new(0, -rootPartOffset - hipHeight, 0)
end

function LaserPointer:horzDistanceFromCharacter(point)
	local character = LocalPlayer.Character
	if not character then
		return math.huge
	end
	local rootPart = character:FindFirstChild("HumanoidRootPart") 
	if not rootPart then
		return math.huge
	end

	return ((rootPart:GetRenderCFrame().p - point) * flattenMask).magnitude
end


function LaserPointer:onNavigateAction(actionName, inputState, inputObj)
	if inputState == Enum.UserInputState.Begin then
		VRService:RequestNavigation(CFrame.new(self.navHitPoint, self.navHitPoint + self.navHitNormal) * CFrame.Angles(math.pi/2, 0, 0), self.inputUserCFrame)
	end
end

function LaserPointer:setNavigationActionEnabled(enabled)
	if enabled then
		ContextActionService:BindCoreAction("LaserPointerNavigate", function(...) self:onNavigateAction(...) end, false, Enum.KeyCode.ButtonA)
	else
		ContextActionService:UnbindCoreAction("LaserPointerNavigate")
	end
end

function LaserPointer:setArcLaunchParams(launchAngle, launchVelocity, gravity, desiredRange)
	local velocityX = math.cos(launchAngle) * launchVelocity
	local velocityY = math.sin(launchAngle) * launchVelocity

	--don't let velocityX = 0 or we get a divide-by-zero and bad things happen
	if velocityX == 0 then
		velocityX = 1e-6
	end

	self.parabola.A = -(0.5 * gravity) * (1 / (velocityX ^ 2))
	self.parabola.B = velocityY / velocityX
	self.parabola.C = 0
	self.parabola.Range = desiredRange * 1.5
end

function LaserPointer:renderAsParabola(origin, lookDir)
	local lookFlat = lookDir * flattenMask
	self.originPart.CFrame = CFrame.new(origin, origin + lookFlat) * CFrame.Angles(0, math.pi / 2, 0)
end

function LaserPointer:renderAsLaser(laserOriginPos, laserEndpoint)
	self.originPart.CFrame = CFrame.new(laserOriginPos, laserEndpoint) * CFrame.Angles(0, math.pi / 2, 0)
	self.parabola.A = 0
	self.parabola.B = 1e-6
	self.parabola.C = 0
	self.parabola.Range = (laserEndpoint - laserOriginPos).magnitude
end

function LaserPointer:getArcHit(pos, look, ignore)
	if self.parabola.A == 0 then
		--Just skip the parabola since this is effectively a line without the x^2 term
		return self:getLaserHit(pos, look, ignore)
	end

	self:renderAsParabola(pos, look)

	local parabHitPart, parabHitPoint, parabHitNormal, _, t = self.parabola:FindPartOnParabola(ignore)
	return parabHitPart, parabHitPoint, parabHitNormal, t
end

function LaserPointer:getLaserHit(pos, look, ignore)
	local ray = Ray.new(pos, look * LASER.MAX_DISTANCE)
	local laserHitPart, laserHitPoint, laserHitNormal, laserHitMaterial = workspace:FindPartOnRayWithIgnoreList(ray, ignore)
	local t = (laserHitPoint - pos).magnitude / LASER.MAX_DISTANCE
	return laserHitPart, laserHitPoint, laserHitNormal, t
end

function LaserPointer:canNavigateTo(part, point, normal)
	local character = LocalPlayer.Character
	if not character then
		return false
	end
	local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
	if not humanoidRootPart then
		return false
	end

	--Check if a part was hit
	if not part then
		return false
	end

	--Check if the surface hit is upside down or not
	if normal.Y < -1e-6 then
		return false
	end

	return true
end

function LaserPointer:checkHeadMountedMode(laserHitPart)
	if self:shouldForcePointer() then
		self:setMode(LaserPointerMode.Pointer)
		return
	end

	local coreGuiPartContainer = GuiService.CoreGuiFolder
	if laserHitPart and laserHitPart:IsDescendantOf(coreGuiPartContainer) then
		self:setMode(LaserPointerMode.Pointer)
	else
		self:setMode(LaserPointerMode.Navigation)
	end
end

function LaserPointer:checkMode(originPos, parabHitPart, parabHitPoint, laserHitPart, laserHitPoint)
	if self:shouldForcePointer() then
		self:setMode(LaserPointerMode.Pointer)
		return
	end

	local angleBetween = 0

	--only check the angle between these two if the hit points aren't exactly equal
	if parabHitPoint ~= laserHitPoint then
		local toParabHit = (parabHitPoint - originPos).unit
		local toLaserHit = (laserHitPoint - originPos).unit
		angleBetween = math.acos(toParabHit:Dot(toLaserHit))
	end

	--todo: update this when we move the parts; also update it so that it can work with user surfaceguis
	--we may need to be more creative about that since we can't easily tell if a part has a surfacegui from Lua
	local coreGuiPartContainer = GuiService.CoreGuiFolder
	local laserHitGui = laserHitPart and laserHitPart:IsDescendantOf(coreGuiPartContainer)
	local parabHitGui = laserHitGui
	--only check parab hit part if it's not the same as the laser hit part
	if parabHitPart ~= laserHitPart then
		parabHitGui = parabHitPart and parabHitPart:IsDescendantOf(coreGuiPartContainer)
	end

	local newMode = self.mode

	if laserHitGui then
		self.lastLaserModeHit = tick()
	end

	--If we are navigating and the parabola hits a gui part, we switch to laser pointer if the laser pointer is close enough
	--If we are navigating and the laser hits a gui part, we switch to laser pointer regardless of where the parabola is
	if self.mode ~= LaserPointerMode.Pointer and laserHitGui then
		if self:isHeadMounted() or ((parabHitGui and angleBetween < LASER.SWITCH_AIM_THRESHOLD) or laserHitGui) then
			newMode = LaserPointerMode.Pointer
		end
	end

	--If we are in laser pointer mode but neither the parabola nor the laser hit any gui parts, we switch back to navigation or hidden mode.
	if self.mode == LaserPointerMode.Pointer and not laserHitGui and not parabHitGui and tick() - self.lastLaserModeHit > 0.2 then
		if self.lastMode == LaserPointerMode.Navigation or self.lastMode == LaserPointerMode.Hidden then
			newMode = self.lastMode
		end
	end

	self:setMode(newMode)
end

function LaserPointer:setNavigationValidState(valid)
	if valid == self.navigationIsValid then return end
	self.navigationIsValid = valid
	self.lastNavigationValidityChangeTime = tick()

	if valid then
		self.plopBallBounceStart = tick()
		self.parabola.Color3 = TELEPORT.ARC_COLOR_GOOD
		self.plopAdorn.Visible = true
		self.plopAdorn.Image = TELEPORT.PLOP_GOOD
		self.plopAdornPulse.Visible = true
		self.plopAdornPulse.Image = TELEPORT.PLOP_GOOD
		self.plopBall.BrickColor = TELEPORT.PLOP_BALL_COLOR_GOOD
	else
		self.parabola.Color3 = TELEPORT.ARC_COLOR_BAD
		self.plopAdorn.Visible = false
		self.plopAdorn.Image = TELEPORT.PLOP_BAD
		self.plopAdornPulse.Visible = false
		self.plopAdornPulse.Image = TELEPORT.PLOP_BAD
		self.plopBall.BrickColor = TELEPORT.PLOP_BALL_COLOR_BAD
	end
end

function LaserPointer:updateNavPlop(parabHitPoint, parabHitNormal)
	local now = tick() - self.plopBallBounceStart

	local plopCF = CFrame.new(parabHitPoint, parabHitPoint + parabHitNormal)

	local ballHeight = 0
	if self.navigationIsValid then
		local ballWave = applyExpCurve(math.sin((now * 2 * math.pi) / TELEPORT.BALL_WAVE_PERIOD), TELEPORT.BALL_WAVE_EXP)
		ballHeight = TELEPORT.BALL_WAVE_START + (ballWave * TELEPORT.BALL_WAVE_AMPLITUDE)
	end

	self.plopPart.CFrame = plopCF
	self.plopBall.CFrame = plopCF * CFrame.new(0, 0, -ballHeight)

	--Handle the pulse animation
	--We're scheduling it to begin every TELEPORT.PULSE_PERIOD seconds
	--and the animation runs for TELEPORT.PULSE_DURATION seconds. TELEPORT.PULSE_EXP
	--affects the growth rate of the pulse size; ^2 is a good look, starts slow and accelerates.
	local timeSincePulseStart = now % TELEPORT.PULSE_PERIOD
	if timeSincePulseStart > 0 then
		local pulseSize = timeSincePulseStart / TELEPORT.PULSE_DURATION
		if pulseSize < 1 then
			self.plopAdornPulse.Visible = true
			self.plopAdornPulse.Size = identityVector2 * (TELEPORT.PULSE_SIZE_0 + applyExpCurve(pulseSize, TELEPORT.PULSE_EXP) * (TELEPORT.PULSE_SIZE_1 - TELEPORT.PULSE_SIZE_0))
			self.plopAdornPulse.Transparency = 0.5 + (pulseSize * 0.5)
		else
			self.plopAdornPulse.Visible = false
			self.plopAdornPulse.Size = zeroVector2
			self.pulseStartTime = tick() + TELEPORT.PULSE_PERIOD
		end
	end
end

function LaserPointer:updateNavigationMode(hitPoint, hitNormal, hitPart)
	self.navHitPoint = hitPoint
	self.navHitNormal = hitNormal
	self.navHitPart = hitPart

	self:updateNavPlop(hitPoint, hitNormal)
	self:setNavigationValidState(self:canNavigateTo(self.navHitPart, self.navHitPoint, self.navHitNormal))
end

function LaserPointer:update(dt)
	if self.mode == LaserPointerMode.Disabled then
		return
	end

	local humanoid = getLocalHumanoid()

	local ignore = { LocalPlayer.Character or LocalPlayer, self.originPart, self.plopPart, self.plopBall, GuiService.CoreEffectFolder }
	local cameraSpace = workspace.CurrentCamera.CFrame
	local thickness0, thickness1 = LASER.ARC_THICKNESS, TELEPORT.ARC_THICKNESS
	local gravity0, gravity1 = LASER.G, TELEPORT.G

	if self:isHeadMounted() then
		self.parabola.Thickness = LASER.ARC_THICKNESS * HEAD_MOUNT_THICKNESS_MULTIPLIER

		--cast ray from center of camera, then render laser going from offset point to hit point
		local originCFrame = cameraSpace * VRService:GetUserCFrame(Enum.UserCFrame.Head)
		local originPos, originLook = originCFrame.p, originCFrame.lookVector

		local laserHitPart, laserHitPoint, laserHitNormal, laserHitT = self:getLaserHit(originPos, originLook, ignore)
		self:checkHeadMountedMode(laserHitPart)

		--we actually want to render the laser from an offset from the head though
		local offsetPosition = originCFrame:pointToWorldSpace(HEAD_MOUNT_OFFSET * workspace.CurrentCamera.HeadScale)
		self:renderAsLaser(offsetPosition, laserHitPoint)

		if self.mode == LaserPointerMode.Navigation then
			self:updateNavigationMode(laserHitPoint, laserHitNormal, laserHitPart, laserHitPoint)
		else
			self.parabola.Color3 = LASER.ARC_COLOR_GOOD
		end
	else
		local originCFrame = cameraSpace * VRService:GetUserCFrame(self.inputUserCFrame)
		local originPos, originLook = originCFrame.p, originCFrame.lookVector

		local gravity = TELEPORT.G

		local launchAngle = math.asin(originLook.Y)
		local offsetHeight = humanoid and originPos.Y - self:getNavigationOrigin().Y or 0

		local desiredRange = TELEPORT.MAX_VALID_DISTANCE
		local launchVelocity = self:calculateLaunchVelocity(gravity, desiredRange, offsetHeight)

		self:setArcLaunchParams(launchAngle, launchVelocity, gravity, desiredRange)

		--Always check for both parabola and laser hits so we can use it to judge when to transition
		ignore[6] = GuiService.CoreGuiFolder
		local parabHitPart, parabHitPoint, parabHitNormal, parabHitT = self:getArcHit(originPos, originLook, ignore)

		--Clear the gui folder out of our ignore table and cast so we might hit SurfaceGuis with the laser
		ignore[6] = nil
		local laserHitPart, laserHitPoint, laserHitNormal, laserHitT = self:getLaserHit(originPos, originLook, ignore)

		self:checkMode(originPos, parabHitPart, parabHitPoint, laserHitPart, laserHitPoint)

		if self.mode == LaserPointerMode.Navigation then
			self.parabola.Range = self.parabola.Range * parabHitT
			self.parabola.Thickness = TELEPORT.ARC_THICKNESS
			self:updateNavigationMode(parabHitPoint, parabHitNormal, parabHitPart)
		else
			self.parabola.Color3 = LASER.ARC_COLOR_GOOD
			self.parabola.Thickness = LASER.ARC_THICKNESS
			self:renderAsLaser(originPos, laserHitPoint)
		end
	end
end

return LaserPointer