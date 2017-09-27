--LaserPointer.lua
--Implements the visual part of the VR laser pointer
--Written by Kyle, September 2016
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local ContextActionService = game:GetService("ContextActionService")
local UserInputService = game:GetService("UserInputService")
local Players = game:GetService("Players")
local SoundService = game:GetService("SoundService")
local PathfindingService = game:GetService("PathfindingService")
local GuiService = game:GetService("GuiService")
local VRServiceExists, VRService = pcall(function() return game:GetService("VRService") end)
local Utility = require(RobloxGui.Modules.Settings.Utility) --todo: use common utility module when it's done

local getTestControlSchemesSuccess, getTestControlSchemesEnabled = pcall(function() return settings():GetFFlag("VRTestControlSchemes") end)
local areTestControlSchemesEnabled = getTestControlSchemesSuccess and getTestControlSchemesEnabled

local LocalPlayer = Players.LocalPlayer

--Pathfinding sort of works, but it's very slow and does not handle slopes very well.
--Use at your own risk.
local usePathfinding = false

local gamma, invGamma = 2.2, 1/2.2
local function fromLinearRGB(color)
	return Color3.new(color.r ^ gamma, color.g ^ gamma, color.b ^ gamma)
end
local function toLinearRGB(color)
	return Color3.new(color.r ^ invGamma, color.g ^ invGamma, color.b ^ invGamma)
end

local function setPartInGame(part, inGame)
	if not part then
		return
	end
	if inGame and not part:IsDescendantOf(game) then
		local container = GuiService.CoreEffectFolder
		if not container then
			coroutine.wrap(function()
				while GuiService.Changed:wait() ~= "CoreEffectFolder" and GuiService.CoreEffectFolder == nil do
				end
				part.Parent = GuiService.CoreEffectFolder
			end)()
		else
			part.Parent = container
		end
	else
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

--Teleport visual configuration
local TELEPORT = {
	MODE_ENABLED = true,

	ARC_COLOR_GOOD = fromLinearRGB(Color3.fromRGB(0, 162, 255)),
	ARC_COLOR_BAD = fromLinearRGB(Color3.fromRGB(253, 68, 72)),
	ARC_THICKNESS = 0.05,

	PLOP_GOOD = "rbxasset://textures/ui/VR/VRPointerDiscBlue.png",
	PLOP_BAD = "rbxasset://textures/ui/VR/VRPointerDiscRed.png",
	PLOP_BALL_COLOR_GOOD = BrickColor.new("Bright green"),
	PLOP_BALL_COLOR_BAD = BrickColor.new("Bright red"),
	PLOP_BALL_SIZE = 0.5,
	PLOP_SIZE = 2,
	PLOP_PULSE_MIN_SIZE = 0,
	PLOP_PULSE_MAX_SIZE = 2,

	MAX_VALID_DISTANCE = 48,

	BUTTON_DOWN_THRESHOLD = 0.95,
	BUTTON_UP_THRESHOLD = 0.5,

	MIN_VELOCITY = 10,
	RANGE_T_EXP = 2,
	G = 50, -- Gravity constant for parabola

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

	CLEAR_AABB_SIZE = Vector3.new(2.5, 4, 2.5),
	CLEAR_TEST_ENABLED = false,

	SUCCESS_SOUND = "", --Unused for now
	FAIL_SOUND = "", --Unused for now
	SOUNDS_ENABLED = false,

	PATH_RECOMPUTE_DIST_THRESHOLD = 4,

	TRANSITION_DURATION = 0.25,
	TRANSITION_FUNC = Utility:GetEaseInOutQuad()
}

local LASER = {
	MODE_ENABLED = true,

	ARC_COLOR_GOOD = TELEPORT.ARC_COLOR_GOOD,
	ARC_COLOR_BAD = TELEPORT.ARC_COLOR_BAD,
	ARC_THICKNESS = 0.025,

	MAX_DISTANCE = 100,

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

function LaserPointer.new()
	local self = setmetatable({}, LaserPointer)

	self.enabled = false

	self.inputUserCFrame = Enum.UserCFrame.Head
	self.equippedTool = false

	self.tweener = false
	self.transitionAlpha = 0
	self.lengthAlpha = 1
	self.lastLaserModeHit = tick()

	self.forceLaserMode = false
	self.teleportMode = true
	self.teleportRangeT = 0
	self.teleportPoint = zeroVector3
	self.teleportNormal = Vector3.new(0, 1, 0)
	self.teleportPart = nil
	self.teleportValid = false
	self.lastTeleportValidityChange = tick()
	self.teleportButtonDown = false
	self.teleporting = false
	self.teleportBounceStart = tick()

	self.pathValid = false
	self.computingPath = false
	self.pathStart = zeroVector3
	self.pathEnd = zeroVector3

	self.testWalkToMode = false

	do --Create the instances that make up the Laser Pointer
		--Create the ParabolaAdornment first; if the class doesn't exist, we'll exit early.
		if not pcall(function()
			self.parabola = Utility:Create("ParabolaAdornment") {
				Name = "LaserPointerParabola",
				Parent = CoreGui,
				A = -1,
				B = 2,
				C = 0,
				Color3 = TELEPORT.COLOR_GOOD,
				Thickness = TELEPORT.ARC_THICKNESS
			}
			end) then
			return nil
		end

		self.originPart = Utility:Create("Part") {
			Name = "LaserPointerOrigin",
			Anchored = true,
			CanCollide = false,
			TopSurface = Enum.SurfaceType.SmoothNoOutlines,
			BottomSurface = Enum.SurfaceType.SmoothNoOutlines,
			Material = Enum.Material.SmoothPlastic,
			Size = minimumPartSize,
			Transparency = 1 --smallest size possible
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

		if TELEPORT.CLEAR_TEST_ENABLED then
			--TODO: Before re-enabling CLEAR_TEST_ENABLED, find a better solution
			self.collisionTestPart = Utility:Create("Part") {
				Name = "LaserPointerTeleportCollisionTester",
				Size = TELEPORT.CLEAR_AABB_SIZE,
				Transparency = 1,
				Anchored = true,
				CanCollide = true,
				Parent = workspace.CurrentCamera,
				CFrame = CFrame.new(1e10, 1e10, 1e10)
			}
		end

		if TELEPORT.SOUNDS_ENABLED then
			self.teleportSuccessSound = Utility:Create("Sound") {
				Name = "TeleportSuccessSound",
				SoundId = TELEPORT.SUCCESS_SOUND,
				Parent = self.originPart
			}
			self.teleportFailSound = Utility:Create("Sound") {
				Name = "TeleportFailSound",
				SoundId = TELEPORT.FAIL_SOUND,
				Parent = self.originPart
			}
		end
	end

	do --Event connections and final setup
		if LocalPlayer.Character then
			self:onCharacterAdded(LocalPlayer.Character)
		end
		LocalPlayer.CharacterAdded:connect(function(character)
			self:onCharacterAdded(character)
		end)

		GuiService.MenuOpened:connect(function()
			self.forceLaserMode = true
		end)
		GuiService.MenuClosed:connect(function()
			self.forceLaserMode = false
		end)

		if VRServiceExists then
			self.inputUserCFrame = VRService.GuiInputUserCFrame
			VRService.Changed:connect(function(prop)
				if prop == "GuiInputUserCFrame" and self.enabled then
					self:tweenLaserLength(0, 0.25)

					wait(0.25)

					self.inputUserCFrame = VRService.GuiInputUserCFrame
					self:setTriggerActionEnabled(self.inputUserCFrame ~= Enum.UserCFrame.Head)
					self:setButtonActionEnabled(self.inputUserCFrame == Enum.UserCFrame.Head)

					if self:shouldShowLaser() then
						self:tweenLaserLength(1)
					end
				end
			end)
		end

		if areTestControlSchemesEnabled then
			ContextActionService:BindCoreAction("Head Mounted", function(actionName, inputState, inputObj)
				if inputState ~= Enum.UserInputState.End then return end
				VRService.GuiInputUserCFrame = Enum.UserCFrame.Head
			end, false, Enum.KeyCode.KeypadOne)
			ContextActionService:BindCoreAction("Right Hand Mounted", function(actionName, inputState, inputObj)
				if inputState ~= Enum.UserInputState.End then return end
				VRService.GuiInputUserCFrame = Enum.UserCFrame.RightHand
				self.testWalkToMode = false
			end, false, Enum.KeyCode.KeypadTwo)
			ContextActionService:BindCoreAction("Parabola Walkto", function(actionName, inputState, inputObj)
				if inputState ~= Enum.UserInputState.End then return end
				VRService.GuiInputUserCFrame = Enum.UserCFrame.RightHand
				self.testWalkToMode = true
			end, false, Enum.KeyCode.KeypadThree)
		end

		self:setTeleportMode(false)
	end

	return self
end

do --Helper functions

	function LaserPointer:calculateLaunchVelocity(gravity, launchAngle)
		local maxVelocity = TELEPORT.MAX_VALID_DISTANCE
		if self.testWalkToMode then
			return maxVelocity
		end
		local minVelocity = TELEPORT.MIN_VELOCITY
		local velocityRange = math.max(0, maxVelocity - minVelocity)
		return ((self.teleportRangeT ^ TELEPORT.RANGE_T_EXP) * velocityRange) + minVelocity
	end

	function LaserPointer:isHeadMounted()
		return self.inputUserCFrame == Enum.UserCFrame.Head
	end

	function LaserPointer:shouldShowLaser()
		if not self.enabled then
			return false
		end
		if self:isHeadMounted() then
			return self.equippedTool == false
		end

		return true
	end

	function LaserPointer:shouldWalk()
		return self:isHeadMounted() or self.testWalkToMode
	end
end

do --Input handlers - can we eventually move this stuff to PlayerScripts? CoreScripts shouldn't need to handle input ideally...

	function LaserPointer:onTeleportTriggerAction(actionName, inputState, inputObj)
		if self.teleporting or not self.teleportMode then
			return
		end

		local state = inputObj.Position.Z
		if self.teleportButtonDown and state < TELEPORT.BUTTON_UP_THRESHOLD then
			self.teleportButtonDown = false
			coroutine.wrap(function()
				if self:shouldWalk() then
					self:doWalkTo(self.teleportPoint)
				else
					 self:doTeleport()
				end
			end)()
			return
		end

		if not self.teleportButtonDown and state > TELEPORT.BUTTON_DOWN_THRESHOLD then
			self.teleportButtonDown = true
		end
	end

	function LaserPointer:onTeleportButtonAction(actionName, inputState, inputObj)
		if inputState == Enum.UserInputState.Begin then
			if self.equippedTool and UserInputService.TouchEnabled then
				self.equippedTool:Activate()
			else
				if self.teleportMode then
					self:doWalkTo(self.teleportPoint)
				end
			end
		end
	end

	function LaserPointer:setTriggerActionEnabled(enabled)
		if enabled then
			ContextActionService:BindCoreAction("TeleportTriggerImpl", function(...) self:onTeleportTriggerAction(...) end, false, self.inputUserCFrame == Enum.UserCFrame.RightHand and Enum.KeyCode.ButtonA or Enum.KeyCode.ButtonX)
		else
			ContextActionService:UnbindCoreAction("TeleportTriggerImpl")
		end
	end

	function LaserPointer:setButtonActionEnabled(enabled)
		if enabled then
			ContextActionService:BindCoreAction("TeleportButtonImpl", function(...) self:onTeleportButtonAction(...) end, false, Enum.KeyCode.ButtonA)
		else
			ContextActionService:UnbindCoreAction("TeleportButtonImpl")
		end
	end
end

do --Configuration functions

	function LaserPointer:setEnabled(enabled)
		if enabled == self.enabled then return end
		self.enabled = enabled
		if self.enabled then
			self:setTriggerActionEnabled(self.inputUserCFrame ~= Enum.UserCFrame.Head)
			self:setButtonActionEnabled(self.inputUserCFrame == Enum.UserCFrame.Head)

			setPartInGame(self.originPart, true)

			self:setTeleportMode(false)
			if self.clickToMoveModule then
				self.clickToMoveModule:Start(true)
			end
		else
			self:setTriggerActionEnabled(not self.inputUserCFrame ~= Enum.UserCFrame.Head)
			self:setButtonActionEnabled(not self.inputUserCFrame == Enum.UserCFrame.Head)

			setPartInGame(self.originPart, false)

			if self.clickToMoveModule then
				self.clickToMoveModule:Stop()
			end
		end
	end

	function LaserPointer:setTeleportMode(enabled)
		if enabled == self.teleportMode then return	end

		self.teleportMode = enabled

		local alpha0, alpha1, duration, easingFunc
		if self.teleportMode then
			setPartInGame(self.plopPart, true)
			setPartInGame(self.plopBall, true)

			self:tweenLaserLength(1)
		else
			setPartInGame(self.plopPart, false)
			setPartInGame(self.plopBall, false)
		end
	end

	function LaserPointer:setArcLaunchParams(launchAngle, launchVelocity, gravity)
		local velocityX = math.cos(launchAngle) * launchVelocity
		local velocityY = math.sin(launchAngle) * launchVelocity

		--don't let velocityX = 0 or we get a divide-by-zero and bad things happen
		if velocityX == 0 then
			velocityX = 1e-6
		end

		self.parabola.A = (-0.5 * gravity) / (velocityX ^ 2)
		self.parabola.B = velocityY / velocityX
		self.parabola.C = 0
		self.parabola.Range = velocityX
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
		self.parabola.Range = (laserEndpoint - laserOriginPos).magnitude * self.lengthAlpha
	end

end

do --Raycasting functions
	function LaserPointer:getArcHit(pos, look, ignore)
		if self.parabola.A == 0 then
			--Just skip the parabola since this is effectively a line without the x^2 term
			return self:getLaserHit(pos, look, ignore)
		end

		self:renderAsParabola(pos, look)

		local parabHitPart, parabHitPoint, parabHitNormal, parabHitMaterial, t = self.parabola:FindPartOnParabola(ignore)
		return parabHitPart, parabHitPoint, parabHitNormal, t
	end

	function LaserPointer:getLaserHit(pos, look, ignore)
		local ray = Ray.new(pos, look * LASER.MAX_DISTANCE)
		local laserHitPart, laserHitPoint, laserHitNormal, laserHitMaterial = workspace:FindPartOnRayWithIgnoreList(ray, ignore)
		local t = (laserHitPoint - pos).magnitude / LASER.MAX_DISTANCE
		return laserHitPart, laserHitPoint, laserHitNormal, t
	end
end

do --Pathfinding functions

	function LaserPointer:recomputePath(startPos, endPos)
		self.computingPath = true

		self.pathStart = startPos
		self.pathEnd = endPos
		coroutine.wrap(function()
			self.lastPath = PathfindingService:ComputeRawPathAsync(startPos, endPos, TELEPORT.MAX_VALID_DISTANCE)
			self.computingPath = false
		end)()
	end

	function LaserPointer:checkLastPath()
		if not self.lastPath then
			self.pathValid = true
			return
		end
		if self.lastPath.Status ~= Enum.PathStatus.Success then
			self.pathValid = false
			return
		end
		local occludedPoint = self.lastPath:CheckOcclusionAsync(0)
		if occludedPoint < 0 then
			self.pathValid = true
		end
	end
end

do --Action functions

	function LaserPointer:doTeleport()
		self.teleportRangeT = 0

		local teleportValid = self.teleportValid
		local teleportPoint = self.teleportPoint
		local teleportNormal = self.teleportNormal

		local character = LocalPlayer.Character
		if not character then
			return
		end

		if teleportValid then
			--play teleport success sound
			if TELEPORT.SOUNDS_ENABLED then
				self.teleportSuccessSound:Play()
			end
			self.teleporting = true

			wait(TELEPORT.FADE_OUT_DURATION)

			local camera = workspace.CurrentCamera
			local flatLookDir = camera.CFrame.lookVector * flattenMask
			local pos = teleportPoint + (teleportNormal * TELEPORT.FLOOR_OFFSET)
			character:SetPrimaryPartCFrame(CFrame.new(pos, pos + flatLookDir))

			wait(TELEPORT.FADE_IN_DURATION)
			self.teleporting = false
		else
			--play teleport failed sound
			if TELEPORT.SOUNDS_ENABLED then
				self.teleportFailSound:Play()
			end
		end
	end

	function LaserPointer:doToolAim(aimPoint)
		if not aimPoint then
			return
		end
		if self.equippedTool then
			local humanoid = getLocalHumanoid()
			if not humanoid then return end

			if not aimableStates[humanoid:GetState()] then return end

			local rootPart = humanoid.Torso
			if not rootPart then return end

			local rootPos = rootPart.CFrame.p
			local vecToAimPoint = ((aimPoint - rootPos) * flattenMask).unit
			local desiredRotation = CFrame.new(zeroVector3, vecToAimPoint)

			rootPart.CFrame = CFrame.new(rootPos) * desiredRotation
		end
	end

	function LaserPointer:doWalkTo(point)
		local humanoid = getLocalHumanoid()
		if not humanoid then return end

		if humanoid:GetState() == Enum.HumanoidStateType.Seated and self:isHeadMounted() then
			--No jump button on one-button VR, so just jump out of seats for now.
			humanoid.Jump = true
		end

		if self.clickToMoveModule then
			self.clickToMoveModule:ForceGoTo(point)
		else
			--fall back
			humanoid:MoveTo(point)
		end
	end
end

do --Laser/teleport functions
	function LaserPointer:canTeleportTo(cameraPos, part, point, normal)
		local character = LocalPlayer.Character
		if not character then
			return false
		end
		local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
		if not humanoidRootPart then
			return false
		end

		if self:isHeadMounted() then
			return true
		end

		if not part then
			return false
		end

		if normal.Y < 0 then
			return false
		end

		if self.inputUserCFrame == Enum.UserCFrame.Head then
			return true
		end

		local dist = (point - humanoidRootPart.Position).magnitude
		if dist > TELEPORT.MAX_VALID_DISTANCE and not self.testWalkToMode then
			return false
		end

		if TELEPORT.CLEAR_TEST_ENABLED then
			local bbPos = point
			local halfBbSize = TELEPORT.CLEAR_AABB_SIZE * 0.5
			local minBound = Vector3.new(bbPos.X - halfBbSize.X, bbPos.Y, bbPos.Z - halfBbSize.Z)
			local maxBound = minBound + TELEPORT.CLEAR_AABB_SIZE

			local theta = math.rad(90) - math.asin(normal.Y)
			local slopeOffset = math.sin(theta) * math.sqrt(halfBbSize.X^2 + halfBbSize.Z^2)
			self.collisionTestPart.CFrame = CFrame.new(bbPos + Vector3.new(0, (TELEPORT.CLEAR_AABB_SIZE.Y / 2) + slopeOffset + 0.1, 0))

			--workspace:FindPartsInRegion3 uses AABBs of parts, which means slopes make really big boxes. No good for checking occlusion.
			--Using an arbitary part here sounds nasty as an implementation detail, but the concept seems sound.
			--Getting the part out of the workspace entirely would be a good long-term solution.
			local foundParts = self.collisionTestPart:GetTouchingParts()
			--send it far away so it doesn't interfere with devs (I really hate doing this)
			self.collisionTestPart.CFrame = CFrame.new(1e10, 1e10, 1e10)

			for i, v in pairs(foundParts) do
				if v ~= self.plopPart and v ~= self.plopBall and not v:IsDescendantOf(LocalPlayer.Character) then
					return false
				end
			end
		end

		if usePathfinding then
			self:checkLastPath()
			if not self.computingPath then
				local startPos = humanoidRootPart.Position
				local endPos = point + Vector3.new(0, 4, 0)

				local startDist = (self.pathStart - startPos).magnitude
				local endDist = (self.pathEnd - endPos).magnitude
				if startDist > TELEPORT.PATH_RECOMPUTE_DIST_THRESHOLD or endDist > TELEPORT.PATH_RECOMPUTE_DIST_THRESHOLD or not self.pathValid then
					self:recomputePath(startPos, endPos)
				end
			end

			if not self.pathValid then
				return false
			end
		end

		return true
	end

	function LaserPointer:checkHeadMountedTeleportMode(originPos, originLook)
		local ray = Ray.new(originPos, originLook * 999)
		local hitPart = nil
        hitPart = workspace:FindPartOnRayWithWhitelist(ray, { GuiService.CoreGuiFolder })

		if hitPart and self:shouldShowLaser() then
			self:setTeleportMode(false)
			self:tweenLaserLength(1)
			return
		end
		if not self.equippedTool then
			self:setTeleportMode(true)
		end
	end

	function LaserPointer:checkTeleportMode(originPos, parabHitPart, parabHitPoint, laserHitPart, laserHitPoint)
		if self.forceLaserMode then
			if self.teleportMode then
				self:setTeleportMode(false)
			else
				return
			end
		end
		if self.teleportMode and not LASER.MODE_ENABLED then
			return
		end
		if not self.teleportMode and not TELEPORT.MODE_ENABLED then
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

		local newTeleportMode = self.teleportMode

		if laserHitGui then
			self.lastLaserModeHit = tick()
		end

		--If we are teleporting and the parabola hits a gui part, we switch to laser pointer if the laser pointer is close enough
		--If we are teleporting and the laser hits a gui part, we switch to laser pointer regardless of where the parabola is
		if self.teleportMode and laserHitGui then
			if self:isHeadMounted() or ((parabHitGui and angleBetween < LASER.SWITCH_AIM_THRESHOLD) or laserHitGui) then
				newTeleportMode = false
			end
		end

		--If we are in laser pointer mode but neither the parabola nor the laser hit any gui parts, we switch back to teleport mode.
		if not self.teleportMode and not laserHitGui and not parabHitGui and tick() - self.lastLaserModeHit > 0.2 then
			newTeleportMode = true
		end

		self:setTeleportMode(newTeleportMode)
	end


	function LaserPointer:tweenLaserLength(target, duration)
		duration = duration or 0.5
		if self.tweener then
			if self.tweener:GetFinal() == target then
				return
			end
			self.tweener:Cancel()
			self.tweener = false
		end
		if target ~= self.lengthAlpha then
			self.tweener = Utility:TweenProperty(self, "lengthAlpha", self.lengthAlpha, target, duration, Utility:GetEaseInOutQuad(), function()
				self.tweener = false
			end)
		end
	end

	function LaserPointer:setTeleportValidState(valid)
		if valid == self.teleportValid then return end
		self.teleportValid = valid
		self.lastTeleportValidityChange = tick()

		if not self.inputUserCFrame == Enum.UserCFrame.Head and self.tweener ~= false then
			valid = true
		end

		self:tweenLaserLength(1)

		if valid then
			self.teleportBounceStart = tick()
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

	function LaserPointer:updateTeleportPlop(parabHitPoint, parabHitNormal)
		local now = tick() - self.teleportBounceStart

		--Make a CFrame out of our hit point and normal; tangent doesn't matter because it's all circular!
		local plopCF = CFrame.new(parabHitPoint, parabHitPoint + parabHitNormal)

		local ballHeight = 0
		--Calculate the height of the ball from a sine wave raised to a configurable exponent
		if self.teleportValid then
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


	function LaserPointer:updateTeleportHoldState(dt)
		--Increase launch velocity if teleport button is held
		if self.teleportButtonDown and self.teleportMode then
			self.teleportRangeT = math.min(1, self.teleportRangeT + dt)
		else
			self.teleportRangeT = 0
		end
	end

	function LaserPointer:updateTeleportMode(hitPoint, hitNormal, hitPart)
		self.teleportPoint = hitPoint
		self.teleportNormal = hitNormal
		self.teleportPart = hitPart

		self:updateTeleportPlop(hitPoint, hitNormal)
		self:setTeleportValidState(self:canTeleportTo(workspace.CurrentCamera.CFrame.p, self.teleportPart, self.teleportPoint, self.teleportNormal))
	end
end

do --Event callbacks/update loop
	function LaserPointer:update(dt)
		if not self.enabled then
			return
		end
		local ignore = { Players.LocalPlayer.Character, self.originPart, self.plopPart, self.plopBall }
		local cameraSpace = workspace.CurrentCamera.CFrame
		local thickness0, thickness1 = LASER.ARC_THICKNESS, TELEPORT.ARC_THICKNESS
		local gravity0, gravity1 = LASER.G, TELEPORT.G

		if self:isHeadMounted() then
			self.parabola.Thickness = LASER.ARC_THICKNESS * HEAD_MOUNT_THICKNESS_MULTIPLIER

			--cast ray from center of camera, then render laser going from offset point to hit point
			local originCFrame = cameraSpace * UserInputService:GetUserCFrame(Enum.UserCFrame.Head)
			local originPos, originLook = originCFrame.p, originCFrame.lookVector

			local laserHitPart, laserHitPoint, laserHitNormal, laserHitT = self:getLaserHit(originPos, originLook, ignore)
			self:checkHeadMountedTeleportMode(originPos, originLook)

			--we actually want to render the laser from an offset from the head though
			local offsetPosition = originCFrame:pointToWorldSpace(HEAD_MOUNT_OFFSET * workspace.CurrentCamera.HeadScale)
			self:renderAsLaser(offsetPosition, laserHitPoint)

			if self.teleportMode then
				self:updateTeleportMode(laserHitPoint, laserHitNormal, laserHitPart)
			else
				self.parabola.Color3 = LASER.ARC_COLOR_GOOD
				self:doToolAim(laserHitPoint)
			end
		else
			self:updateTeleportHoldState(dt)

			local originCFrame = cameraSpace * UserInputService:GetUserCFrame(self.inputUserCFrame)
			local originPos, originLook = originCFrame.p, originCFrame.lookVector

			local gravity = TELEPORT.G

			local launchAngle = math.asin(originLook.Y)
			local launchVelocity = self:calculateLaunchVelocity(gravity, launchAngle)

			self:setArcLaunchParams(launchAngle, launchVelocity, gravity)

			--Always check for both parabola and laser hits so we can use it to judge when to transition
			ignore[5] = GuiService.CoreGuiFolder
			ignore[6] = GuiService.CoreEffectFolder
			local parabHitPart, parabHitPoint, parabHitNormal, parabHitT = self:getArcHit(originPos, originLook, ignore)

			--Clear the camera out of our ignore table and cast so we might hit SurfaceGuis
			ignore[5] = nil
			ignore[6] = nil
			local laserHitPart, laserHitPoint, laserHitNormal, laserHitT = self:getLaserHit(originPos, originLook, ignore)

			self:checkTeleportMode(originPos, parabHitPart, parabHitPoint, laserHitPart, laserHitPoint)

			if self.teleportMode then
				self.parabola.Range = parabHitT * math.cos(launchAngle) * launchVelocity * self.lengthAlpha
				self.parabola.Thickness = TELEPORT.ARC_THICKNESS
				self:updateTeleportMode(parabHitPoint, parabHitNormal, parabHitPart)

				local lookCFrame = workspace.CurrentCamera:GetRenderCFrame()
				local lookRay = Ray.new(lookCFrame.p, lookCFrame.lookVector * 999)
				local _, lookHitPoint = workspace:FindPartOnRayWithIgnoreList(lookRay, { workspace.CurrentCamera, LocalPlayer.Character })
				self:doToolAim(lookHitPoint)
			else
				self.parabola.Color3 = LASER.ARC_COLOR_GOOD
				self.parabola.Thickness = LASER.ARC_THICKNESS
				self:renderAsLaser(originPos, laserHitPoint)
			end
		end
	end

	function LaserPointer:onCharacterAdded(character)
		self.equippedTool = false

		character.ChildAdded:connect(function(child)
			if child:IsA("Tool") then
				self.equippedTool = child
				self:setTeleportMode(false)
				self:tweenLaserLength(0)
			end
		end)
		character.ChildRemoved:connect(function(child)
			if child == self.equippedTool then
				self.equippedTool = false
				self:setTeleportMode(false)
				self:tweenLaserLength(1)
			end
		end)
	end
end

return LaserPointer
