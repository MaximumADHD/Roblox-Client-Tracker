--!nonstrict
--[[
	Invisicam - Occlusion module that makes objects occluding character view semi-transparent
	2018 Camera Update - AllYourBlox
--]]

--[[ Top Level Roblox Services ]]--
local PlayersService = game:GetService("Players")

local CommonUtils = script.Parent.Parent:WaitForChild("CommonUtils")
local FlagUtil = require(CommonUtils:WaitForChild("FlagUtil"))

--[[ Flags ]]--
local FFlagUserRaycastPerformanceImprovements = FlagUtil.getUserFlag("UserRaycastPerformanceImprovements")

--[[ Constants ]]--
local ZERO_VECTOR3 = Vector3.new(0,0,0)
local USE_STACKING_TRANSPARENCY = true	-- Multiple items between the subject and camera get transparency values that add up to TARGET_TRANSPARENCY
local TARGET_TRANSPARENCY = 0.75 -- Classic Invisicam's Value, also used by new invisicam for parts hit by head and torso rays
local TARGET_TRANSPARENCY_PERIPHERAL = 0.5 -- Used by new SMART_CIRCLE mode for items not hit by head and torso rays

local MODE = {
	--CUSTOM = 1, 		-- Retired, unused
	LIMBS = 2, 			-- Track limbs
	MOVEMENT = 3, 		-- Track movement
	CORNERS = 4, 		-- Char model corners
	CIRCLE1 = 5, 		-- Circle of casts around character
	CIRCLE2 = 6, 		-- Circle of casts around character, camera relative
	LIMBMOVE = 7, 		-- LIMBS mode + MOVEMENT mode
	SMART_CIRCLE = 8, 	-- More sample points on and around character
	CHAR_OUTLINE = 9,	-- Dynamic outline around the character
}

local LIMB_TRACKING_SET = {
	-- Body parts common to R15 and R6
	['Head'] = true,

	-- Body parts unique to R6
	['Left Arm'] = true,
	['Right Arm'] = true,
	['Left Leg'] = true,
	['Right Leg'] = true,

	-- Body parts unique to R15
	['LeftLowerArm'] = true,
	['RightLowerArm'] = true,
	['LeftUpperLeg'] = true,
	['RightUpperLeg'] = true
}

local CORNER_FACTORS = {
	Vector3.new(1,1,-1),
	Vector3.new(1,-1,-1),
	Vector3.new(-1,-1,-1),
	Vector3.new(-1,1,-1)
}

local CIRCLE_CASTS = 10
local MOVE_CASTS = 3
local SMART_CIRCLE_CASTS = 24
local SMART_CIRCLE_INCREMENT = 2.0 * math.pi / SMART_CIRCLE_CASTS
local CHAR_OUTLINE_CASTS = 24

local excludeParams = RaycastParams.new()
excludeParams.FilterType = Enum.RaycastFilterType.Exclude

local includeParams = RaycastParams.new()
includeParams.FilterType = Enum.RaycastFilterType.Include

-- Used to sanitize user-supplied functions
local function AssertTypes(param, ...)
	local allowedTypes = {}
	local typeString = ''
	for _, typeName in pairs({...}) do
		allowedTypes[typeName] = true
		typeString = typeString .. (typeString == '' and '' or ' or ') .. typeName
	end
	local theType = type(param)
	assert(allowedTypes[theType], typeString .. " type expected, got: " .. theType)
end

-- Helper function for Determinant of 3x3, not in CameraUtils for performance reasons
local function Det3x3(a: number,b: number,c: number,d: number,e: number,f: number,g: number,h: number,i: number): number
	return (a*(e*i-f*h)-b*(d*i-f*g)+c*(d*h-e*g))
end

-- Smart Circle mode needs the intersection of 2 rays that are known to be in the same plane
-- because they are generated from cross products with a common vector. This function is computing
-- that intersection, but it's actually the general solution for the point halfway between where
-- two skew lines come nearest to each other, which is more forgiving.
local function RayIntersection(p0: Vector3, v0: Vector3, p1: Vector3, v1: Vector3): Vector3
	local v2 = v0:Cross(v1)
	local d1 = p1.X - p0.X
	local d2 = p1.Y - p0.Y
	local d3 = p1.Z - p0.Z
	local denom = Det3x3(v0.X,-v1.X,v2.X,v0.Y,-v1.Y,v2.Y,v0.Z,-v1.Z,v2.Z)

	if (denom == 0) then
		return ZERO_VECTOR3 -- No solution (rays are parallel)
	end

	local t0 = Det3x3(d1,-v1.X,v2.X,d2,-v1.Y,v2.Y,d3,-v1.Z,v2.Z) / denom
	local t1 = Det3x3(v0.X,d1,v2.X,v0.Y,d2,v2.Y,v0.Z,d3,v2.Z) / denom
	local s0 = p0 + t0 * v0
	local s1 = p1 + t1 * v1
	local s = s0 + 0.5 * ( s1 - s0 )

	-- 0.25 studs is a threshold for deciding if the rays are
	-- close enough to be considered intersecting, found through testing
	if (s1-s0).Magnitude < 0.25 then
		return s
	else
		return ZERO_VECTOR3
	end
end



--[[ The Module ]]--
local BaseOcclusion = require(script.Parent:WaitForChild("BaseOcclusion"))
local Invisicam = setmetatable({}, BaseOcclusion)
Invisicam.__index = Invisicam

function Invisicam.new()
	local self = setmetatable(BaseOcclusion.new(), Invisicam)

	self.char = nil
	self.humanoidRootPart = nil
	self.torsoPart = nil
	self.headPart = nil

	self.childAddedConn = nil
	self.childRemovedConn = nil

	self.behaviors = {} 	-- Map of modes to behavior fns
	self.behaviors[MODE.LIMBS] = self.LimbBehavior
	self.behaviors[MODE.MOVEMENT] = self.MoveBehavior
	self.behaviors[MODE.CORNERS] = self.CornerBehavior
	self.behaviors[MODE.CIRCLE1] = self.CircleBehavior
	self.behaviors[MODE.CIRCLE2] = self.CircleBehavior
	self.behaviors[MODE.LIMBMOVE] = self.LimbMoveBehavior
	self.behaviors[MODE.SMART_CIRCLE] = self.SmartCircleBehavior
	self.behaviors[MODE.CHAR_OUTLINE] = self.CharacterOutlineBehavior

	self.mode = MODE.SMART_CIRCLE
	self.behaviorFunction = self.SmartCircleBehavior

	self.savedHits = {} 	-- Objects currently being faded in/out
	self.trackedLimbs = {}	-- Used in limb-tracking casting modes

	self.camera = game.Workspace.CurrentCamera

	self.enabled = false
	return self
end

function Invisicam:Enable(enable)
	self.enabled = enable

	if not enable then
		self:Cleanup()
	end
end

function Invisicam:GetOcclusionMode()
	return Enum.DevCameraOcclusionMode.Invisicam
end

--[[ Module functions ]]--
function Invisicam:LimbBehavior(castPoints)
	for limb, _ in pairs(self.trackedLimbs) do
		castPoints[#castPoints + 1] = limb.Position
	end
end

function Invisicam:MoveBehavior(castPoints)
	for i = 1, MOVE_CASTS do
		local position: Vector3, velocity: Vector3 = self.humanoidRootPart.Position, self.humanoidRootPart.Velocity
		local horizontalSpeed: number = Vector3.new(velocity.X, 0, velocity.Z).Magnitude / 2
		local offsetVector: Vector3 = (i - 1) * self.humanoidRootPart.CFrame.lookVector :: Vector3 * horizontalSpeed
		castPoints[#castPoints + 1] = position + offsetVector
	end
end

function Invisicam:CornerBehavior(castPoints)
	local cframe: CFrame = self.humanoidRootPart.CFrame
	local centerPoint: Vector3 = cframe.Position
	local rotation = cframe - centerPoint
	local halfSize = self.char:GetExtentsSize() / 2 --NOTE: Doesn't update w/ limb animations
	castPoints[#castPoints + 1] = centerPoint
	for i = 1, #CORNER_FACTORS do
		castPoints[#castPoints + 1] = centerPoint + (rotation * (halfSize * CORNER_FACTORS[i]))
	end
end

function Invisicam:CircleBehavior(castPoints)
	local cframe: CFrame
	if self.mode == MODE.CIRCLE1 then
		cframe = self.humanoidRootPart.CFrame
	else
		local camCFrame: CFrame = self.camera.CoordinateFrame
		cframe = camCFrame - camCFrame.Position + self.humanoidRootPart.Position
	end
	castPoints[#castPoints + 1] = cframe.Position
	for i = 0, CIRCLE_CASTS - 1 do
		local angle = (2 * math.pi / CIRCLE_CASTS) * i
		local offset = 3 * Vector3.new(math.cos(angle), math.sin(angle), 0)
		castPoints[#castPoints + 1] = cframe * offset
	end
end

function Invisicam:LimbMoveBehavior(castPoints)
	self:LimbBehavior(castPoints)
	self:MoveBehavior(castPoints)
end

function Invisicam:CharacterOutlineBehavior(castPoints)
	local torsoUp = self.torsoPart.CFrame.upVector.unit
	local torsoRight = self.torsoPart.CFrame.rightVector.unit

	-- Torso cross of points for interior coverage
	castPoints[#castPoints + 1] = self.torsoPart.CFrame.p
	castPoints[#castPoints + 1] = self.torsoPart.CFrame.p + torsoUp
	castPoints[#castPoints + 1] = self.torsoPart.CFrame.p - torsoUp
	castPoints[#castPoints + 1] = self.torsoPart.CFrame.p + torsoRight
	castPoints[#castPoints + 1] = self.torsoPart.CFrame.p - torsoRight
	if self.headPart then
		castPoints[#castPoints + 1] = self.headPart.CFrame.p
	end

	local cframe = CFrame.new(ZERO_VECTOR3,Vector3.new(self.camera.CoordinateFrame.lookVector.X,0,self.camera.CoordinateFrame.lookVector.Z))
	local centerPoint = (self.torsoPart and self.torsoPart.Position or self.humanoidRootPart.Position)

	local partsWhitelist = {self.torsoPart}
	if self.headPart then
		partsWhitelist[#partsWhitelist + 1] = self.headPart
	end

	for i = 1, CHAR_OUTLINE_CASTS do
		local angle = (2 * math.pi * i / CHAR_OUTLINE_CASTS)
		local offset = cframe * (3 * Vector3.new(math.cos(angle), math.sin(angle), 0))

		offset = Vector3.new(offset.X, math.max(offset.Y, -2.25), offset.Z)

		if FFlagUserRaycastPerformanceImprovements then
			includeParams.FilterDescendantsInstances = partsWhitelist
			local raycastResult = game.Workspace:Raycast(centerPoint + offset, -3 * offset, includeParams)

			if raycastResult then
				-- Use hit point as the cast point, but nudge it slightly inside the character so that bumping up against
				-- walls is less likely to cause a transparency glitch
				local position = raycastResult.Position
				castPoints[#castPoints + 1] = position + 0.2 * (centerPoint - position).unit
			end
		else
			local ray = Ray.new(centerPoint + offset, -3 * offset)
			local hit, hitPoint = game.Workspace:FindPartOnRayWithWhitelist(ray, partsWhitelist, false)

			if hit then
				-- Use hit point as the cast point, but nudge it slightly inside the character so that bumping up against
				-- walls is less likely to cause a transparency glitch
				castPoints[#castPoints + 1] = hitPoint + 0.2 * (centerPoint - hitPoint).unit
			end
		end
	end
end

function Invisicam:SmartCircleBehavior(castPoints)
	local torsoUp = self.torsoPart.CFrame.upVector.unit
	local torsoRight = self.torsoPart.CFrame.rightVector.unit

	-- SMART_CIRCLE mode includes rays to head and 5 to the torso.
	-- Hands, arms, legs and feet are not included since they
	-- are not canCollide and can therefore go inside of parts
	castPoints[#castPoints + 1] = self.torsoPart.CFrame.p
	castPoints[#castPoints + 1] = self.torsoPart.CFrame.p + torsoUp
	castPoints[#castPoints + 1] = self.torsoPart.CFrame.p - torsoUp
	castPoints[#castPoints + 1] = self.torsoPart.CFrame.p + torsoRight
	castPoints[#castPoints + 1] = self.torsoPart.CFrame.p - torsoRight
	if self.headPart then
		castPoints[#castPoints + 1] = self.headPart.CFrame.p
	end

	local cameraOrientation = self.camera.CFrame - self.camera.CFrame.p
	local torsoPoint = Vector3.new(0,0.5,0) + (self.torsoPart and self.torsoPart.Position or self.humanoidRootPart.Position)
	local radius = 2.5

	-- This loop first calculates points in a circle of radius 2.5 around the torso of the character, in the
	-- plane orthogonal to the camera's lookVector. Each point is then raycast to, to determine if it is within
	-- the free space surrounding the player (not inside anything). Two iterations are done to adjust points that
	-- are inside parts, to try to move them to valid locations that are still on their camera ray, so that the
	-- circle remains circular from the camera's perspective, but does not cast rays into walls or parts that are
	-- behind, below or beside the character and not really obstructing view of the character. This minimizes
	-- the undesirable situation where the character walks up to an exterior wall and it is made invisible even
	-- though it is behind the character.
	for i = 1, SMART_CIRCLE_CASTS do
		local angle = SMART_CIRCLE_INCREMENT * i - 0.5 * math.pi
		local offset = radius * Vector3.new(math.cos(angle), math.sin(angle), 0)
		local circlePoint = torsoPoint + cameraOrientation * offset

		-- Vector from camera to point on the circle being tested
		local vp = circlePoint - self.camera.CFrame.p

		
		if FFlagUserRaycastPerformanceImprovements then
			excludeParams.FilterDescendantsInstances = { self.char }
			local raycastResult = game.Workspace:Raycast(torsoPoint, circlePoint - torsoPoint, excludeParams)

			local castPoint = circlePoint
			if raycastResult then
				local position = raycastResult.Position
				local normal = raycastResult.Normal
				local hprime = position + 0.1 * normal.unit -- Slightly offset hit point from the hit surface
				local v0 = hprime - torsoPoint -- Vector from torso to offset hit point

				local perp = (v0:Cross(vp)).unit

				-- Vector from the offset hit point, along the hit surface
				local v1 = (perp:Cross(normal)).unit

				-- Vector from camera to offset hit
				local vprime = (hprime - self.camera.CFrame.p).unit

				-- This dot product checks to see if the vector along the hit surface would hit the correct
				-- side of the invisicam cone, or if it would cross the camera look vector and hit the wrong side
				if ( v0.unit:Dot(-v1) < v0.unit:Dot(vprime)) then
					castPoint = RayIntersection(hprime, v1, circlePoint, vp)

					if castPoint.Magnitude > 0 then
						raycastResult = game.Workspace:Raycast(hprime, castPoint - hprime, excludeParams)

						if raycastResult then
							local hprime2 = raycastResult.Position + 0.1 * raycastResult.Normal.Unit
							castPoint = hprime2
						end
					else
						castPoint = hprime
					end
				else
					castPoint = hprime
				end

				raycastResult = game.Workspace:Raycast(torsoPoint, castPoint - torsoPoint, excludeParams)

				if raycastResult then
					local castPoint2 = raycastResult.Position - 0.1 * (castPoint - torsoPoint).unit
					castPoint = castPoint2
				end
			end

			castPoints[#castPoints + 1] = castPoint
		else
			local ray = Ray.new(torsoPoint, circlePoint - torsoPoint)
			local hit, hp, hitNormal = game.Workspace:FindPartOnRayWithIgnoreList(ray, {self.char}, false, false )
			local castPoint = circlePoint

			if hit then
				local hprime = hp + 0.1 * hitNormal.unit -- Slightly offset hit point from the hit surface
				local v0 = hprime - torsoPoint -- Vector from torso to offset hit point

				local perp = (v0:Cross(vp)).unit

				-- Vector from the offset hit point, along the hit surface
				local v1 = (perp:Cross(hitNormal)).unit

				-- Vector from camera to offset hit
				local vprime = (hprime - self.camera.CFrame.p).unit

				-- This dot product checks to see if the vector along the hit surface would hit the correct
				-- side of the invisicam cone, or if it would cross the camera look vector and hit the wrong side
				if ( v0.unit:Dot(-v1) < v0.unit:Dot(vprime)) then
					castPoint = RayIntersection(hprime, v1, circlePoint, vp)

					if castPoint.Magnitude > 0 then
						local ray = Ray.new(hprime, castPoint - hprime)
						local hit, hitPoint, hitNormal = game.Workspace:FindPartOnRayWithIgnoreList(ray, {self.char}, false, false )

						if hit then
							local hprime2 = hitPoint + 0.1 * hitNormal.unit
							castPoint = hprime2
						end
					else
						castPoint = hprime
					end
				else
					castPoint = hprime
				end

				local ray = Ray.new(torsoPoint, (castPoint - torsoPoint))
				local hit, hitPoint, hitNormal = game.Workspace:FindPartOnRayWithIgnoreList(ray, {self.char}, false, false )

				if hit then
					local castPoint2 = hitPoint - 0.1 * (castPoint - torsoPoint).unit
					castPoint = castPoint2
				end
			end

			castPoints[#castPoints + 1] = castPoint
		end
	end
end

function Invisicam:CheckTorsoReference()
	if self.char then
		self.torsoPart = self.char:FindFirstChild("Torso")
		if not self.torsoPart then
			self.torsoPart = self.char:FindFirstChild("UpperTorso")
			if not self.torsoPart then
				self.torsoPart = self.char:FindFirstChild("HumanoidRootPart")
			end
		end

		self.headPart = self.char:FindFirstChild("Head")
	end
end

function Invisicam:CharacterAdded(char: Model, player: Player)
	-- We only want the LocalPlayer's character
	if player~=PlayersService.LocalPlayer then return end

	if self.childAddedConn then
		self.childAddedConn:Disconnect()
		self.childAddedConn = nil
	end
	if self.childRemovedConn then
		self.childRemovedConn:Disconnect()
		self.childRemovedConn = nil
	end

	self.char = char

	self.trackedLimbs = {}
	local function childAdded(child)
		if child:IsA("BasePart") then
			if LIMB_TRACKING_SET[child.Name] then
				self.trackedLimbs[child] = true
			end

			if child.Name == "Torso" or child.Name == "UpperTorso" then
				self.torsoPart = child
			end

			if child.Name == "Head" then
				self.headPart = child
			end
		end
	end

	local function childRemoved(child)
		self.trackedLimbs[child] = nil

		-- If removed/replaced part is 'Torso' or 'UpperTorso' double check that we still have a TorsoPart to use
		self:CheckTorsoReference()
	end

	self.childAddedConn = char.ChildAdded:Connect(childAdded)
	self.childRemovedConn = char.ChildRemoved:Connect(childRemoved)
	for _, child in pairs(self.char:GetChildren()) do
		childAdded(child)
	end
end

function Invisicam:SetMode(newMode: number)
	AssertTypes(newMode, 'number')
	for _, modeNum in pairs(MODE) do
		if modeNum == newMode then
			self.mode = newMode
			self.behaviorFunction = self.behaviors[self.mode]
			return
		end
	end
	error("Invalid mode number")
end

function Invisicam:GetObscuredParts()
	return self.savedHits
end

-- Want to turn off Invisicam? Be sure to call this after.
function Invisicam:Cleanup()
	for hit, originalFade in pairs(self.savedHits) do
		hit.LocalTransparencyModifier = originalFade
	end
end

function Invisicam:Update(dt: number, desiredCameraCFrame: CFrame, desiredCameraFocus: CFrame): (CFrame, CFrame)
	-- Bail if there is no Character
	if not self.enabled or not self.char then
		return desiredCameraCFrame, desiredCameraFocus
	end

	self.camera = game.Workspace.CurrentCamera

	-- TODO: Move this to a GetHumanoidRootPart helper, probably combine with CheckTorsoReference
	-- Make sure we still have a HumanoidRootPart
	if not self.humanoidRootPart then
		local humanoid = self.char:FindFirstChildOfClass("Humanoid")
		if humanoid and humanoid.RootPart then
			self.humanoidRootPart = humanoid.RootPart
		else
			-- Not set up with Humanoid? Try and see if there's one in the Character at all:
			self.humanoidRootPart = self.char:FindFirstChild("HumanoidRootPart")
			if not self.humanoidRootPart then
				-- Bail out, since we're relying on HumanoidRootPart existing
				return desiredCameraCFrame, desiredCameraFocus
			end
		end

		-- TODO: Replace this with something more sensible
		local ancestryChangedConn
		ancestryChangedConn = self.humanoidRootPart.AncestryChanged:Connect(function(child, parent)
			if child == self.humanoidRootPart and not parent then
				self.humanoidRootPart = nil
				if ancestryChangedConn and ancestryChangedConn.Connected then
					ancestryChangedConn:Disconnect()
					ancestryChangedConn = nil
				end
			end
		end)
	end

	if not self.torsoPart then
		self:CheckTorsoReference()
		if not self.torsoPart then
			-- Bail out, since we're relying on Torso existing, should never happen since we fall back to using HumanoidRootPart as torso
			return desiredCameraCFrame, desiredCameraFocus
		end
	end

	-- Make a list of world points to raycast to
	local castPoints = {}
	self.behaviorFunction(self, castPoints)

	-- Cast to get a list of objects between the camera and the cast points
	local currentHits = {}
	local ignoreList = {self.char}
	local function add(hit)
		currentHits[hit] = true
		if not self.savedHits[hit] then
			self.savedHits[hit] = hit.LocalTransparencyModifier
		end
	end

	local hitParts
	local hitPartCount = 0

	-- Hash table to treat head-ray-hit parts differently than the rest of the hit parts hit by other rays
	-- head/torso ray hit parts will be more transparent than peripheral parts when USE_STACKING_TRANSPARENCY is enabled
	local headTorsoRayHitParts = {}

	local perPartTransparencyHeadTorsoHits = TARGET_TRANSPARENCY
	local perPartTransparencyOtherHits = TARGET_TRANSPARENCY

	if USE_STACKING_TRANSPARENCY then

		-- This first call uses head and torso rays to find out how many parts are stacked up
		-- for the purpose of calculating required per-part transparency
		local headPoint = self.headPart and self.headPart.CFrame.p or castPoints[1]
		local torsoPoint = self.torsoPart and self.torsoPart.CFrame.p or castPoints[2]
		hitParts = self.camera:GetPartsObscuringTarget({headPoint, torsoPoint}, ignoreList)

		-- Count how many things the sample rays passed through, including decals. This should only
		-- count decals facing the camera, but GetPartsObscuringTarget does not return surface normals,
		-- so my compromise for now is to just let any decal increase the part count by 1. Only one
		-- decal per part will be considered.
		for i = 1, #hitParts do
			local hitPart = hitParts[i]
			hitPartCount = hitPartCount + 1 -- count the part itself
			headTorsoRayHitParts[hitPart] = true
			for _, child in pairs(hitPart:GetChildren()) do
				if child:IsA('Decal') or child:IsA('Texture') then
					hitPartCount = hitPartCount + 1 -- count first decal hit, then break
					break
				end
			end
		end

		if (hitPartCount > 0) then
			perPartTransparencyHeadTorsoHits = math.pow( ((0.5 * TARGET_TRANSPARENCY) + (0.5 * TARGET_TRANSPARENCY / hitPartCount)), 1 / hitPartCount )
			perPartTransparencyOtherHits = math.pow( ((0.5 * TARGET_TRANSPARENCY_PERIPHERAL) + (0.5 * TARGET_TRANSPARENCY_PERIPHERAL / hitPartCount)), 1 / hitPartCount )
		end
	end

	-- Now get all the parts hit by all the rays
	hitParts = self.camera:GetPartsObscuringTarget(castPoints, ignoreList)

	local partTargetTransparency = {}

	-- Include decals and textures
	for i = 1, #hitParts do
		local hitPart = hitParts[i]

		partTargetTransparency[hitPart] =headTorsoRayHitParts[hitPart] and perPartTransparencyHeadTorsoHits or perPartTransparencyOtherHits

		-- If the part is not already as transparent or more transparent than what invisicam requires, add it to the list of
		-- parts to be modified by invisicam
		if hitPart.Transparency < partTargetTransparency[hitPart] then
			add(hitPart)
		end

		-- Check all decals and textures on the part
		for _, child in pairs(hitPart:GetChildren()) do
			if child:IsA('Decal') or child:IsA('Texture') then
				if (child.Transparency < partTargetTransparency[hitPart]) then
					partTargetTransparency[child] = partTargetTransparency[hitPart]
					add(child)
				end
			end
		end
	end

	-- Invisibilize objects that are in the way, restore those that aren't anymore
	for hitPart, originalLTM in pairs(self.savedHits) do
		if currentHits[hitPart] then
			-- LocalTransparencyModifier gets whatever value is required to print the part's total transparency to equal perPartTransparency
			hitPart.LocalTransparencyModifier = (hitPart.Transparency < 1) and ((partTargetTransparency[hitPart] - hitPart.Transparency) / (1.0 - hitPart.Transparency)) or 0
		else -- Restore original pre-invisicam value of LTM
			hitPart.LocalTransparencyModifier = originalLTM
			self.savedHits[hitPart] = nil
		end
	end

	-- Invisicam does not change the camera values
	return desiredCameraCFrame, desiredCameraFocus
end

return Invisicam
