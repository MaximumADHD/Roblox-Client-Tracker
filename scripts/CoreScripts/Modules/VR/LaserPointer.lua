--!nonstrict
--!nolint DeprecatedApi

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
local CorePackages = game:GetService("CorePackages")
local Create = require(CorePackages.Workspace.Packages.AppCommonLib).Create
local VRUtil = require(RobloxGui.Modules.VR.VRUtil)
require(RobloxGui.Modules.VR.Panel3D)

local FFlagVRFixCursorJitterLua = game:DefineFastFlag("VRFixCursorJitterLua", false)
local FFlagVRLaserPointerOptimization = game:DefineFastFlag("VRLaserPointerOptimization", false)
local FFlagEnableUserInputCFrameLogging = game:DefineFastFlag("EnableUserInputCFrameLogging", false)
local FFlagEnableUpdateduserInputCFrameUpdate = game:DefineFastFlag("EnableUpdateduserInputCFrameUpdate", false)
local ContextActionService = game:GetService("ContextActionService")

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
				part.CanTouch = false
				part.CanCollide = false
				part.CanQuery = false
			end
		end)()
	else
		--The container is ready, no waiting necessary.
		for _, part in pairs(parts) do
			part.Parent = container
			part.CanTouch = false
			part.CanCollide = false
			part.CanQuery = false
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
local OFFHAND_LASER_LENGTH = 3

local BUTTON_LONG_PRESS_TIME = 0.75

local LaserPointerMode = {
	Disabled = 0,
	Pointer = 1,
	Navigation = 2,
	Hidden = 3,
	DualPointer = 4
}

-- The origination hand of the laser
local LaserHand = {
	Right = 0,
	Left = 1,
}

--Teleport visual configuration
local TELEPORT = {
	MODE_ENABLED = true,

	ARC_COLOR_GOOD = fromLinearRGB(Color3.fromRGB(0, 162, 255)),
	ARC_COLOR_BAD = fromLinearRGB(Color3.fromRGB(253, 68, 72)),
	ARC_THICKNESS = 0.0125,

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
	ARC_COLOR_HIT = fromLinearRGB(Color3.fromRGB(0, 255, 162)),
	ARC_THICKNESS = 0.01,

	MAX_DISTANCE = 50,

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
	[Enum.HumanoidStateType.None] = true,
}

local LaserPointer = {}
LaserPointer.__index = LaserPointer
LaserPointer.Mode = LaserPointerMode

function LaserPointer.new(laserDistance)
	local self = setmetatable({}, LaserPointer)

	self.laserMaxDistance = VRService.LaserDistance

	self.mode = LaserPointerMode.Disabled
	self.lastMode = self.mode

	self.laserHand = LaserHand.Right

	self.inputUserCFrame = Enum.UserCFrame.RightHand
	self.equippedTool = false

	self.lastLaserModeHit = tick()

	self.guiMenuIsOpen = false
	self.externalForcePointer = false
	self.forceDotActive = true

	self.navHitPoint = zeroVector3
	self.navHitNormal = Vector3.new(0, 1, 0)
	self.navHitPart = nil

	self.navigationIsValid = false
	self.lastNavigationValidityChangeTime = tick()
	self.plopBallBounceStart = tick()

	self.buttonPressStart = 0
	self.showPlopBallOnPointer = false

	do --Create the instances that make up the Laser Pointer
		self.parabola = Create("ParabolaAdornment")({
			Name = "LaserPointerParabola",
			Parent = CoreGui,
			A = -1,
			B = 2,
			C = 0,
			Color3 = nil,
			Thickness = TELEPORT.ARC_THICKNESS,
			Visible = false,
		})

		self.originPart = Create("Part")({
			Name = "LaserPointerOrigin",
			Anchored = true,
			CanCollide = false,
			TopSurface = Enum.SurfaceType.SmoothNoOutlines,
			BottomSurface = Enum.SurfaceType.SmoothNoOutlines,
			Material = Enum.Material.SmoothPlastic,
			Size = minimumPartSize,
			Transparency = 1,
		})
		self.parabola.Adornee = self.originPart

		self.parabolaOffhand = Create("ParabolaAdornment")({
			Name = "LaserPointerparabolaOffhand",
			Parent = CoreGui,
			A = 0,
			B = 1e-6,
			C = 0,
			Color3 = Color3.new(1, 1, 1),
			Transparency = 0.5,
			Thickness = TELEPORT.ARC_THICKNESS,
			Visible = false,
		})

		self.originPartOffhand = Create("Part")({
			Name = "LaserPointerOriginOffhand",
			Anchored = true,
			CanCollide = false,
			TopSurface = Enum.SurfaceType.SmoothNoOutlines,
			BottomSurface = Enum.SurfaceType.SmoothNoOutlines,
			Material = Enum.Material.SmoothPlastic,
			Size = minimumPartSize,
			Transparency = 1,
		})
		self.parabolaOffhand.Adornee = self.originPartOffhand

		self.plopPart = Create("Part")({
			Name = "LaserPointerTeleportPlop",
			Anchored = true,
			CanCollide = false,
			Size = minimumPartSize,
			Transparency = 1,
		})
		self.plopBall = Create("Part")({
			Name = "LaserPointerTeleportPlopBall",
			Anchored = true,
			CanCollide = false,
			TopSurface = Enum.SurfaceType.SmoothNoOutlines,
			BottomSurface = Enum.SurfaceType.SmoothNoOutlines,
			Material = Enum.Material.Neon,
			BrickColor = TELEPORT.PLOP_BALL_COLOR_GOOD,
			Shape = Enum.PartType.Ball,
			Size = identityVector3 * TELEPORT.PLOP_BALL_SIZE,
		})
		self.plopAdorn = Create("ImageHandleAdornment")({
			Name = "LaserPointerTeleportPlopAdorn",
			Parent = self.plopPart,
			Adornee = self.plopPart,
			Size = identityVector2 * TELEPORT.PLOP_SIZE,
			Image = TELEPORT.PLOP_GOOD,
		})
		self.plopAdornPulse = Create("ImageHandleAdornment")({
			Name = "LaserPointerTeleportPlopAdornPulse",
			Parent = self.plopPart,
			Adornee = self.plopPart,
			Size = zeroVector2,
			Image = TELEPORT.PLOP_GOOD,
			Transparency = 0.5,
		})

		self.cursorPart = Create("Part")({
			Name = "Cursor",
			CanCollide = false,
			CanQuery = false,
			CanTouch = false,
			Anchored = true,
			Transparency = 1,
		})
		self.cursorSurfaceGui = Create("SurfaceGui")({
			Name = "CursorSurfaceGui",
			Active = false,
			AlwaysOnTop = true,
			Enabled = false,
			ZOffset = 10,
			Parent = self.cursorPart,
		})
		self.cursorImage = Create("ImageLabel")({
			Image = "rbxasset://textures/Cursors/Gamepad/Pointer.png",
			ImageColor3 = Color3.new(0, 1, 0),
			BackgroundTransparency = 1,
			Parent = self.cursorSurfaceGui,
			AnchorPoint = Vector2.new(0.5, 0.5),
			Position = UDim2.new(0.5, 0, 0.5, 0),
			Size = UDim2.new(1, 0, 1, 0),
		})
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
			elseif FFlagVRFixCursorJitterLua and
				(prop == "PointerHitCFrame" or prop == "DidPointerHit") then
				self:cursorInputsChanged()
			elseif FFlagEnableUpdateduserInputCFrameUpdate
				and prop == "VRSessionState"
				and VRService.VRSessionState == Enum.VRSessionState.Focused then
				self:updateInputUserCFrame()
			end
		end)

		VRService.LaserPointerTriggered:connect(function(input)
			if (input.KeyCode == Enum.KeyCode.ButtonR1 or
				input.KeyCode == Enum.KeyCode.ButtonR2 or
				input.KeyCode == Enum.KeyCode.ButtonR3 or
				input.KeyCode == Enum.KeyCode.ButtonA or
				input.KeyCode == Enum.KeyCode.ButtonB) and
				self.laserHand ~= LaserHand.Right then
					self.laserHand = LaserHand.Right
					self:updateInputUserCFrame()
			elseif (input.KeyCode == Enum.KeyCode.ButtonL1 or
				input.KeyCode == Enum.KeyCode.ButtonL2 or
				input.KeyCode == Enum.KeyCode.ButtonL3 or
				input.KeyCode == Enum.KeyCode.ButtonX or
				input.KeyCode == Enum.KeyCode.ButtonY) and
				self.laserHand ~= LaserHand.Left then
					self.laserHand = LaserHand.Left
					self:updateInputUserCFrame()
			end
		end)

		if FFlagEnableUpdateduserInputCFrameUpdate then
			VRService.UserCFrameEnabled:Connect(function(type, enabled)
				self:updateInputUserCFrame()
			end)
		end
	end

	self:onModeChanged(self.mode)

	self:updateInputUserCFrame()

	return self
end

function LaserPointer.hasAnyHandController()
	return VRService:GetUserCFrameEnabled(Enum.UserCFrame.RightHand)
		or VRService:GetUserCFrameEnabled(Enum.UserCFrame.LeftHand)
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
	local prevInputUserCFrame
	if FFlagEnableUserInputCFrameLogging then
		prevInputUserCFrame = VRService.GuiInputUserCFrame
	end
	if VRService:GetUserCFrameEnabled(Enum.UserCFrame.RightHand)
		and self.laserHand == LaserHand.Right then
		VRService.GuiInputUserCFrame = Enum.UserCFrame.RightHand
	elseif VRService:GetUserCFrameEnabled(Enum.UserCFrame.LeftHand)
		and self.laserHand == LaserHand.Left then
		VRService.GuiInputUserCFrame = Enum.UserCFrame.LeftHand
	elseif VRService:GetUserCFrameEnabled(Enum.UserCFrame.RightHand) then
		VRService.GuiInputUserCFrame = Enum.UserCFrame.RightHand
	elseif VRService:GetUserCFrameEnabled(Enum.UserCFrame.LeftHand) then
		VRService.GuiInputUserCFrame = Enum.UserCFrame.LeftHand
	else
		VRService.GuiInputUserCFrame = Enum.UserCFrame.Head
	end
	if FFlagEnableUserInputCFrameLogging and prevInputUserCFrame ~= VRService.GuiInputUserCFrame then
		print("Updated GuiInputUserCFrame is: " .. tostring(VRService.GuiInputUserCFrame))
	end
end

function LaserPointer:onModeChanged(newMode)
	self:updateInputUserCFrame()

	--Disabled mode
	if newMode == LaserPointerMode.Disabled or newMode == LaserPointerMode.Hidden then
		-- this enabled the target dot only
		addPartsToGame(self.originPart, self.cursorPart)
		removePartsFromGame(self.plopPart, self.plopBall, self.originPartOffhand)
		self.forceDotActive = true
		self.parabola.Visible = false
		self.parabolaOffhand.Visible = false
		self:setNavigationActionEnabled(false)
	--Pointer mode
	elseif newMode == LaserPointerMode.Pointer then
		addPartsToGame(self.originPart, self.cursorPart)
		removePartsFromGame(self.plopPart, self.plopBall, self.originPartOffhand)
		self.parabola.Visible = true
		self.parabolaOffhand.Visible = false
		self:setNavigationActionEnabled(false)
		self.forceDotActive = false
	--Pointer mode
	elseif newMode == LaserPointerMode.DualPointer then
		addPartsToGame(self.originPart, self.originPartOffhand, self.cursorPart)
		removePartsFromGame(self.plopPart, self.plopBall)
		self.parabola.Visible = true
		self.parabolaOffhand.Visible = true
		self:setNavigationActionEnabled(false)
		self.forceDotActive = false
	--Navigation mode
	elseif newMode == LaserPointerMode.Navigation then
		addPartsToGame(self.originPart, self.plopPart, self.plopBall, self.cursorPart)
		self.parabola.Visible = true
		self:setNavigationActionEnabled(true)
		self.forceDotActive = false
	end
end

function LaserPointer:setMode(mode)
	if FFlagVRLaserPointerOptimization then
		-- We no longer support navigation mode
		if mode == LaserPointerMode.Navigation then
			mode = LaserPointerMode.Pointer
		end
	end
	
	if mode == self.mode then
		return
	end

	local oldMode = self.mode
	self.mode = mode
	self.lastMode = oldMode
	self:onModeChanged(mode)
end

function LaserPointer:setEnableAmbidexterousPointer(enabled)
end

function LaserPointer:getMode()
	return self.mode
end

local cosMax = math.cos(math.pi / 4)
local sinMax = math.sin(math.pi / 4)
function LaserPointer:calculateLaunchVelocity(gravity, desiredRange, height)
	--return math.sqrt(desiredRange * gravity) / math.sqrt(math.sin(2*math.pi/4))
	--This calculates a launch velocity for an imaginary projectile that will start at y=height, travel desiredRange
	--in the x direction until it hits y=0. This is only reached when the projectile is launched at the optimal
	--launch angle, 45 degrees elevation. Anything above or below that will fall short, which is desired.
	--See https://en.wikipedia.org/wiki/Range_of_a_projectile for a breakdown of this function.
	return -(math.sqrt(gravity / cosMax) * desiredRange) / (math.sqrt(2 * height * cosMax + 2 * desiredRange * sinMax))
end

function LaserPointer:isHeadMounted()
	return VRService.GuiInputUserCFrame == Enum.UserCFrame.Head
end

function LaserPointer:shouldForcePointer()
	return self.externalForcePointer or self.guiMenuIsOpen
end

function LaserPointer:setForcePointer(force)
	self.externalForcePointer = force
end

function LaserPointer:getNavigationOrigin()
	local humanoid = getLocalHumanoid()
	if not humanoid then
		return
	end

	local rootPart = humanoid.Torso
	if not rootPart then
		return
	end

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
		VRService:RequestNavigation(
			CFrame.new(self.navHitPoint, self.navHitPoint + self.navHitNormal) * CFrame.Angles(math.pi / 2, 0, 0),
			self.inputUserCFrame
		)
	end
end

function LaserPointer:setNavigationActionEnabled(enabled)
	if enabled then
		ContextActionService:BindCoreAction("LaserPointerNavigate", function(...)
			self:onNavigateAction(...)
		end, false, Enum.KeyCode.ButtonA)
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

function LaserPointer:renderOffhandLaser(laserOriginPos, laserEndpoint)
	self.originPartOffhand.CFrame = CFrame.new(laserOriginPos, laserEndpoint) * CFrame.Angles(0, math.pi / 2, 0)
	self.parabolaOffhand.Range = (laserEndpoint - laserOriginPos).magnitude
end

function LaserPointer:getLaserHit(pos, look, ignore)
	local ray = Ray.new(pos, (look * self.laserMaxDistance))
	local laserHitPart, laserHitPoint, laserHitNormal, laserHitMaterial = workspace:FindPartOnRayWithIgnoreList(
		ray,
		ignore
	)
	local t = (laserHitPoint - pos).magnitude / math.max(self.laserMaxDistance, 0.1)
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

function LaserPointer:setNavigationValidState(valid)
	if valid == self.navigationIsValid then
		return
	end
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
		local ballWave = applyExpCurve(
			math.sin((now * 2 * math.pi) / TELEPORT.BALL_WAVE_PERIOD),
			TELEPORT.BALL_WAVE_EXP
		)
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
			self.plopAdornPulse.Size = identityVector2
				* (
					TELEPORT.PULSE_SIZE_0
					+ applyExpCurve(pulseSize, TELEPORT.PULSE_EXP) * (TELEPORT.PULSE_SIZE_1 - TELEPORT.PULSE_SIZE_0)
				)
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

function LaserPointer:showHitBallOnLaserPointer(enable)
	if enable then
		if not self.showPlopBallOnPointer then
			self.showPlopBallOnPointer = true
			addPartsToGame(self.plopBall)
		end
	else
		if self.showPlopBallOnPointer then
			removePartsFromGame(self.plopBall)
			self.showPlopBallOnPointer = false
		end
	end
end

function LaserPointer:cursorInputsChanged()
	local didPointerHit = VRService.DidPointerHit
	self.cursorSurfaceGui.Enabled = didPointerHit
	if didPointerHit then
		local hitCFrame = VRService.PointerHitCFrame

		local cursorDistanceToCamera = (VRUtil.GetUserCFrameWorldSpace(Enum.UserCFrame.Head).Position - hitCFrame.Position).magnitude

		local imageSize = 1
		local cursorSize = cursorDistanceToCamera * 0.01
		if cursorSize < 0.05 then
			-- Roblox has a minimum part size of 0.05
			-- When we need it smaller, keep the part at 0.05 and make cursorImage smaller
			imageSize = cursorSize / 0.05
			cursorSize = 0.05
		end
		self.cursorPart.Size = Vector3.new(cursorSize, cursorSize, cursorSize)
		local offset = CFrame.new(0, 0, cursorSize * 0.5)
		self.cursorPart.CFrame = hitCFrame * offset
		self.cursorImage.Size = UDim2.new(imageSize, 0, imageSize, 0)
	end
end

function LaserPointer:updateCursor_DEPRECATED()
	if VRService.DidPointerHit then
		local hitCFrame = VRService.PointerHitCFrame
		local originCFrame = VRUtil.GetUserCFrameWorldSpace(self.inputUserCFrame)

		if self:isHeadMounted() then
			originCFrame = VRUtil.GetUserCFrameWorldSpace(Enum.UserCFrame.Head)
		end

		-- VRService.PointerHitCFrame is a frame behind.  To make the cursor appear at the most updated location,
		-- See where the current pointer's ray hits the plane defined by VRService.PointerHitCFrame

		local originPos, originLook = originCFrame.p, originCFrame.lookVector

		local hitPosition = hitCFrame.Position
		local hitNormal = hitCFrame.lookVector
		local dot = hitNormal:Dot(originLook)
		if math.abs(dot) > 0.001 then
			local t = (hitPosition - originPos):Dot(hitNormal) / dot
			hitPosition = originPos + t * originLook
			hitCFrame = hitCFrame.Rotation + hitPosition
		end

		local cursorDistanceToCamera = ((workspace.CurrentCamera :: Camera).CFrame.Position - hitCFrame.Position).magnitude

		local imageSize = 1
		local cursorSize = cursorDistanceToCamera * 0.01
		if cursorSize < 0.05 then
			-- Roblox has a minimum part size of 0.05
			-- When we need it smaller, keep the part at 0.05 and make cursorImage smaller
			imageSize = cursorSize / 0.05
			cursorSize = 0.05
		end
		self.cursorPart.Size = Vector3.new(cursorSize, cursorSize, cursorSize)
		local offset = CFrame.new(0, 0, cursorSize * 0.5)
		self.cursorPart.CFrame = hitCFrame * offset
		self.cursorImage.Size = UDim2.new(imageSize, 0, imageSize, 0)
	end
	self.cursorSurfaceGui.Enabled = VRService.DidPointerHit
end

function LaserPointer:update_DEPRECATED(dt)
	if self.mode == LaserPointerMode.Disabled and not self.forceDotActive then
		return
	end

	local humanoid = getLocalHumanoid()

	local ignore = {
		LocalPlayer.Character or LocalPlayer,
		self.originPart,
		self.plopPart,
		self.plopBall,
		GuiService.CoreEffectFolder,
	}
	local thickness0, thickness1 = LASER.ARC_THICKNESS, TELEPORT.ARC_THICKNESS
	local gravity0, gravity1 = LASER.G, TELEPORT.G

	if not FFlagVRFixCursorJitterLua then
		self:updateCursor_DEPRECATED()
	end

	if self:isHeadMounted() then
		self.parabola.Thickness = LASER.ARC_THICKNESS * HEAD_MOUNT_THICKNESS_MULTIPLIER

		--cast ray from center of camera, then render laser going from offset point to hit point
		local originCFrame = VRUtil.GetUserCFrameWorldSpace(Enum.UserCFrame.Head)
		local originPos, originLook = originCFrame.p, originCFrame.lookVector

		local laserHitPart, laserHitPoint, laserHitNormal, laserHitT = self:getLaserHit(originPos, originLook, ignore)
		self:checkHeadMountedMode(laserHitPart)

		--we actually want to render the laser from an offset from the head though

		if not self.forceDotActive then -- this only renders the target dot
			local offsetPosition = originCFrame:pointToWorldSpace(HEAD_MOUNT_OFFSET * (workspace.CurrentCamera :: Camera).HeadScale)
			self:renderAsLaser(offsetPosition, laserHitPoint)

			if self.showPlopBallOnPointer then
				self:updateNavPlop(laserHitPoint, laserHitNormal)
			end

			if self.mode == LaserPointerMode.Navigation then
				self:updateNavigationMode(laserHitPoint, laserHitNormal, laserHitPart, laserHitPoint)
			else
				self.parabola.Color3 = VRService.DidPointerHit and LASER.ARC_COLOR_HIT or LASER.ARC_COLOR_GOOD
			end
		end
	else
		local originCFrame = VRUtil.GetUserCFrameWorldSpace(self.inputUserCFrame)
		local originPos, originLook = originCFrame.p, originCFrame.lookVector

		local gravity = TELEPORT.G

		local launchAngle = math.asin(originLook.Y)
		local offsetHeight = humanoid and originPos.Y - self:getNavigationOrigin().Y or 0

		local desiredRange = TELEPORT.MAX_VALID_DISTANCE
		local launchVelocity = self:calculateLaunchVelocity(gravity, desiredRange, offsetHeight)

		self:setArcLaunchParams(launchAngle, launchVelocity, gravity, desiredRange)

		-- TODO: remove navigation mode and clean these up.
		-- These values were received from a parabola arc cast.  We no longer support navigation mode so these won't be used.
		local parabHitPart = nil
		local parabHitPoint = nil
		local parabHitNormal = nil
		local parabHitT = nil

		--Clear the gui folder out of our ignore table and cast so we might hit SurfaceGuis with the laser
		ignore[6] = nil
		local laserHitPart, laserHitPoint, laserHitNormal, laserHitT = self:getLaserHit(originPos, originLook, ignore)

		if not self.forceDotActive then
			self:setMode(LaserPointerMode.Pointer)
		end

		if self.mode == LaserPointerMode.Navigation then
			self.parabola.Range = self.parabola.Range * parabHitT
			self.parabola.Thickness = TELEPORT.ARC_THICKNESS
			self:updateNavigationMode(parabHitPoint, parabHitNormal, parabHitPart)
		else
			self.parabola.Thickness = LASER.ARC_THICKNESS
			self.parabola.Color3 = VRService.DidPointerHit and LASER.ARC_COLOR_HIT or LASER.ARC_COLOR_GOOD

			if LocalPlayer and LocalPlayer.Character and LocalPlayer.Character:FindFirstChildOfClass("Tool") then
				self.parabola.Color3 = LASER.ARC_COLOR_BAD -- item equipped means RT action bound
			end

			if VRService.DidPointerHit then
				if FFlagVRFixCursorJitterLua then
					local laserLength = (VRService.PointerHitCFrame.Position - originPos).magnitude
					laserHitPoint = originPos + originLook * laserLength
				else
					laserHitPoint = VRService.PointerHitCFrame.Position
				end
			else
				laserHitPoint = originPos + originLook * self.laserMaxDistance
			end

			self.parabola.Thickness = LASER.ARC_THICKNESS * (workspace.CurrentCamera :: Camera).HeadScale
			
			if not self.forceDotActive then -- this only renders the target dot
				self:renderAsLaser(originPos, laserHitPoint)

				if self.showPlopBallOnPointer then
					self:updateNavPlop(laserHitPoint, laserHitNormal)
				end
			end
		end
	end
end

function LaserPointer:update(dt)
	if not FFlagVRLaserPointerOptimization then
		self:update_DEPRECATED(dt)
		return
	end

	if self.mode ~= LaserPointerMode.Pointer and self.mode ~= LaserPointerMode.DualPointer then
		return
	end

	self.parabola.Thickness = LASER.ARC_THICKNESS * (workspace.CurrentCamera :: Camera).HeadScale
	self.parabolaOffhand.Thickness = LASER.ARC_THICKNESS * (workspace.CurrentCamera :: Camera).HeadScale

	if LocalPlayer and LocalPlayer.Character and LocalPlayer.Character:FindFirstChildOfClass("Tool") then
		self.parabola.Color3 = LASER.ARC_COLOR_BAD -- item equipped means RT action bound
	else
		self.parabola.Color3 = VRService.DidPointerHit and LASER.ARC_COLOR_HIT or LASER.ARC_COLOR_GOOD
	end

	local originCFrame = VRUtil.GetUserCFrameWorldSpace(self.inputUserCFrame)
	local originPos, originLook = originCFrame.p, originCFrame.lookVector

	local laserHitPoint

	if VRService.DidPointerHit then
		local laserLength = (VRService.PointerHitCFrame.Position - originPos).magnitude
		laserHitPoint = originPos + originLook * laserLength
	else
		laserHitPoint = originPos + originLook * self.laserMaxDistance
	end

	if self:isHeadMounted() then
		self.parabola.Visible = false
	else
		self.parabola.Visible = true
		self:renderAsLaser(originPos, laserHitPoint)
	end

	if self.mode == LaserPointerMode.DualPointer then
		if self:isHeadMounted() then
			self.parabolaOffhand.Visible = false
		else
			self.parabolaOffhand.Visible = true
			local offHand = if self.inputUserCFrame == Enum.UserCFrame.RightHand then Enum.UserCFrame.LeftHand else Enum.UserCFrame.RightHand
			local originCFrameOffhand = VRUtil.GetUserCFrameWorldSpace(offHand)
			local originPosOffhand, originLookOffhand = originCFrameOffhand.p, originCFrameOffhand.lookVector
			local laserHitPointOffhand = originPosOffhand + originLookOffhand * OFFHAND_LASER_LENGTH
			self:renderOffhandLaser(originPosOffhand, laserHitPointOffhand)
		end
	end
end

return LaserPointer
