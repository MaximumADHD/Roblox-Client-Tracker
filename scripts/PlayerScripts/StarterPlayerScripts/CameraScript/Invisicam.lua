--[[
	Invisicam
	
	Modified 5.16.2017 by AllYourBlox to consider combined transparency when looking through multiple parts, and to add
	a mode that takes advantage of the reduced cost of ray casts from re-implementing GetPartsObscuringTarget
	on the C++ side to be O(N) for N parts hit, rather than O(N^2), and to have optimizations specifically
	improving performance of closely bundled rays. Fading is also removed, since it is a frame rate killer with high-poly models,
	and on mobile.
	
	Based on Invisicam Version 2.5 by OnlyTwentyCharacters
--]]

local Invisicam = {}
---------------
-- Constants --
---------------
local USE_STACKING_TRANSPARENCY = true	-- Multiple items between the subject and camera get transparency values that add up to TARGET_TRANSPARENCY
local TARGET_TRANSPARENCY = 0.75 -- Classic Invisicam's Value, also used by new invisicam for parts hit by head and torso rays
local TARGET_TRANSPARENCY_PERIPHERAL = 0.5 -- Used by new SMART_CIRCLE mode for items not hit by head and torso rays

local MODE = {
	CUSTOM = 1, -- Whatever you want!
	LIMBS = 2, -- Track limbs
	MOVEMENT = 3, -- Track movement
	CORNERS = 4, -- Char model corners
	CIRCLE1 = 5, -- Circle of casts around character
	CIRCLE2 = 6, -- Circle of casts around character, camera relative
	LIMBMOVE = 7, -- LIMBS mode + MOVEMENT mode
	SMART_CIRCLE = 8, -- More sample points on and around character
	CHAR_OUTLINE = 9,
}

Invisicam.MODE = MODE
local STARTING_MODE = MODE.SMART_CIRCLE

local LIMB_TRACKING_SET = {
	-- Common to R6, R15
	['Head'] = true,
	
	-- R6 Only
	['Left Arm'] = true,
	['Right Arm'] = true,
	['Left Leg'] = true,
	['Right Leg'] = true,
	
	-- R15 Only
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

---------------
-- Variables --
---------------

local RunService = game:GetService('RunService')
local PlayersService = game:GetService('Players')
local Player = PlayersService.LocalPlayer

local Camera = nil
local Character = nil
local HumanoidRootPart = nil
local TorsoPart = nil
local HeadPart = nil

local Mode = nil
local BehaviorFunction = nil

local childAddedConn = nil
local childRemovedConn = nil

local Behaviors = {} -- Map of modes to behavior fns
local SavedHits = {} -- Objects currently being faded in/out
local TrackedLimbs = {} -- Used in limb-tracking casting modes

---------------
--| Utility |--
---------------

local math_min = math.min
local math_max = math.max
local math_cos = math.cos
local math_sin = math.sin
local math_pi = math.pi

local Vector3_new = Vector3.new
local ZERO_VECTOR3 = Vector3_new(0,0,0)

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

-----------------------
--| Local Functions |--
-----------------------

local function LimbBehavior(castPoints)
	for limb, _ in pairs(TrackedLimbs) do
		castPoints[#castPoints + 1] = limb.Position
	end
end

local function MoveBehavior(castPoints)
	for i = 1, MOVE_CASTS do
		local position, velocity = HumanoidRootPart.Position, HumanoidRootPart.Velocity
		local horizontalSpeed = Vector3_new(velocity.X, 0, velocity.Z).Magnitude / 2
		local offsetVector = (i - 1) * HumanoidRootPart.CFrame.lookVector * horizontalSpeed
		castPoints[#castPoints + 1] = position + offsetVector
	end
end

local function CornerBehavior(castPoints)
	local cframe = HumanoidRootPart.CFrame
	local centerPoint = cframe.p
	local rotation = cframe - centerPoint
	local halfSize = Character:GetExtentsSize() / 2 --NOTE: Doesn't update w/ limb animations
	castPoints[#castPoints + 1] = centerPoint
	for i = 1, #CORNER_FACTORS do
		castPoints[#castPoints + 1] = centerPoint + (rotation * (halfSize * CORNER_FACTORS[i]))
	end
end

local function CircleBehavior(castPoints)
	local cframe = nil
	if Mode == MODE.CIRCLE1 then
		cframe = HumanoidRootPart.CFrame
	else
		local camCFrame = Camera.CoordinateFrame
		cframe = camCFrame - camCFrame.p + HumanoidRootPart.Position
	end
	castPoints[#castPoints + 1] = cframe.p
	for i = 0, CIRCLE_CASTS - 1 do
		local angle = (2 * math_pi / CIRCLE_CASTS) * i
		local offset = 3 * Vector3_new(math_cos(angle), math_sin(angle), 0)
		castPoints[#castPoints + 1] = cframe * offset
	end
end	

local function LimbMoveBehavior(castPoints)
	LimbBehavior(castPoints)
	MoveBehavior(castPoints)
end

local function CharacterOutlineBehavior(castPoints)
	local torsoUp = TorsoPart.CFrame.upVector.unit
	local torsoRight = TorsoPart.CFrame.rightVector.unit
	
	-- Torso cross of points for interior coverage
	castPoints[#castPoints + 1] = TorsoPart.CFrame.p
	castPoints[#castPoints + 1] = TorsoPart.CFrame.p + torsoUp
	castPoints[#castPoints + 1] = TorsoPart.CFrame.p - torsoUp
	castPoints[#castPoints + 1] = TorsoPart.CFrame.p + torsoRight
	castPoints[#castPoints + 1] = TorsoPart.CFrame.p - torsoRight
	if HeadPart then
		castPoints[#castPoints + 1] = HeadPart.CFrame.p
	end
	
	local cframe = CFrame.new(ZERO_VECTOR3,Vector3_new(Camera.CoordinateFrame.lookVector.X,0,Camera.CoordinateFrame.lookVector.Z))
	local centerPoint = (TorsoPart and TorsoPart.Position or HumanoidRootPart.Position)
	
	local partsWhitelist = {TorsoPart}
	if HeadPart then
		partsWhitelist[#partsWhitelist + 1] = HeadPart
	end
	
	for i = 1, CHAR_OUTLINE_CASTS do
		local angle = (2 * math_pi * i / CHAR_OUTLINE_CASTS)
		local offset = cframe * (3 * Vector3_new(math_cos(angle), math_sin(angle), 0))
		
		offset = Vector3_new(offset.X, math_max(offset.Y, -2.25), offset.Z)	
		
		local ray = Ray.new(centerPoint + offset, -3 * offset)
		local hit, hitPoint = game.Workspace:FindPartOnRayWithWhitelist(ray, partsWhitelist, false, false)
		
		if hit then
			-- Use hit point as the cast point, but nudge it slightly inside the character so that bumping up against
			-- walls is less likely to cause a transparency glitch
			castPoints[#castPoints + 1] = hitPoint + 0.2 * (centerPoint - hitPoint).unit
		end
	end
end

-- Helper function for Determinant of 3x3
local function Det3x3(a,b,c,d,e,f,g,h,i)
	return (a*(e*i-f*h)-b*(d*i-f*g)+c*(d*h-e*g))
end

-- Smart Circle mode needs the intersection of 2 rays that are known to be in the same plane
-- because they are generated from cross products with a common vector. This function is computing
-- that intersection, but it's actually the general solution for the point halfway between where
-- two skew lines come nearest to each other, which is more forgiving.
local function RayIntersection(p0, v0, p1, v1)
	local v2 = v0:Cross(v1)
	local d1 = p1.x - p0.x
	local d2 = p1.y - p0.y
	local d3 = p1.z - p0.z
	local denom = Det3x3(v0.x,-v1.x,v2.x,v0.y,-v1.y,v2.y,v0.z,-v1.z,v2.z)
	
	if (denom == 0) then
		return ZERO_VECTOR3 -- No solution (rays are parallel)
	end
	
	local t0 = Det3x3(d1,-v1.x,v2.x,d2,-v1.y,v2.y,d3,-v1.z,v2.z) / denom
	local t1 = Det3x3(v0.x,d1,v2.x,v0.y,d2,v2.y,v0.z,d3,v2.z) / denom
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

local function SmartCircleBehavior(castPoints)
	local torsoUp = TorsoPart.CFrame.upVector.unit
	local torsoRight = TorsoPart.CFrame.rightVector.unit
	
	-- SMART_CIRCLE mode includes rays to head and 5 to the torso.
	-- Hands, arms, legs and feet are not included since they
	-- are not canCollide and can therefore go inside of parts
	castPoints[#castPoints + 1] = TorsoPart.CFrame.p
	castPoints[#castPoints + 1] = TorsoPart.CFrame.p + torsoUp
	castPoints[#castPoints + 1] = TorsoPart.CFrame.p - torsoUp
	castPoints[#castPoints + 1] = TorsoPart.CFrame.p + torsoRight
	castPoints[#castPoints + 1] = TorsoPart.CFrame.p - torsoRight
	if HeadPart then
		castPoints[#castPoints + 1] = HeadPart.CFrame.p
	end
	
	local cameraOrientation = Camera.CFrame - Camera.CFrame.p
	local torsoPoint = Vector3_new(0,0.5,0) + (TorsoPart and TorsoPart.Position or HumanoidRootPart.Position)
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
		local offset = radius * Vector3_new(math_cos(angle), math_sin(angle), 0)
		local circlePoint = torsoPoint + cameraOrientation * offset		
		 
		-- Vector from camera to point on the circle being tested		
		local vp = circlePoint - Camera.CFrame.p
		
		local ray = Ray.new(torsoPoint, circlePoint - torsoPoint)
		local hit, hp, hitNormal = game.Workspace:FindPartOnRayWithIgnoreList(ray, {Character}, false, false )
		local castPoint = circlePoint
				
		if hit then
			local hprime = hp + 0.1 * hitNormal.unit -- Slightly offset hit point from the hit surface
			local v0 = hprime - torsoPoint -- Vector from torso to offset hit point
			local d0 = v0.magnitude
			
			local perp = (v0:Cross(vp)).unit

			-- Vector from the offset hit point, along the hit surface
			local v1 = (perp:Cross(hitNormal)).unit
			
			-- Vector from camera to offset hit
			local vprime = (hprime - Camera.CFrame.p).unit
			
			-- This dot product checks to see if the vector along the hit surface would hit the correct
			-- side of the invisicam cone, or if it would cross the camera look vector and hit the wrong side
			if ( v0.unit:Dot(-v1) < v0.unit:Dot(vprime)) then
				castPoint = RayIntersection(hprime, v1, circlePoint, vp)
				
				if castPoint.Magnitude > 0 then
					local ray = Ray.new(hprime, castPoint - hprime)
					local hit, hitPoint, hitNormal = game.Workspace:FindPartOnRayWithIgnoreList(ray, {Character}, false, false )
					
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
			local hit, hitPoint, hitNormal = game.Workspace:FindPartOnRayWithIgnoreList(ray, {Character}, false, false )
	
			if hit then
				local castPoint2 = hitPoint - 0.1 * (castPoint - torsoPoint).unit
				castPoint = castPoint2	
			end
		end
		
		castPoints[#castPoints + 1] = castPoint
	end
end

local function CheckTorsoReference()
	if Character then
		TorsoPart = Character:FindFirstChild("Torso")
		if not TorsoPart then
			TorsoPart = Character:FindFirstChild("UpperTorso")
			if not TorsoPart then
				TorsoPart = Character:FindFirstChild("HumanoidRootPart")
			end
		end
		
		HeadPart = Character:FindFirstChild("Head")
	end
end

local function OnCharacterAdded(character)
	if childAddedConn then
		childAddedConn:disconnect()
		childAddedConn = nil
	end
	if childRemovedConn then
		childRemovedConn:disconnect()
		childRemovedConn = nil
	end

	Character = character
	
	TrackedLimbs = {}
	local function childAdded(child)
		if child:IsA('BasePart') then
			if LIMB_TRACKING_SET[child.Name] then
				TrackedLimbs[child] = true
			end

			if (child.Name == 'Torso' or child.Name == 'UpperTorso') then
				TorsoPart = child
			end

			if (child.Name == 'Head') then
				HeadPart = child
			end			
		end
	end
	
	local function childRemoved(child)
		TrackedLimbs[child] = nil
		
		-- If removed/replaced part is 'Torso' or 'UpperTorso' double check that we still have a TorsoPart to use
		CheckTorsoReference()
	end	
	
	childAddedConn = character.ChildAdded:connect(childAdded)
	childRemovedConn = character.ChildRemoved:connect(childRemoved)
	
	for _, child in pairs(Character:GetChildren()) do
		childAdded(child)
	end
end

local function OnCurrentCameraChanged()
	local newCamera = workspace.CurrentCamera
	if newCamera then
		Camera = newCamera
	end
end

-----------------------
-- Exposed Functions --
-----------------------

-- Update. Called every frame after the camera movement step
function Invisicam:Update()

	-- Bail if there is no Character
	if not Character then return end
	
	-- Make sure we still have a HumanoidRootPart
	if not HumanoidRootPart then
		local humanoid = Character:FindFirstChildOfClass("Humanoid")
		if humanoid and humanoid.Torso then
			HumanoidRootPart = humanoid.Torso
		else
			-- Not set up with Humanoid? Try and see if there's one in the Character at all:
			HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")
			if not HumanoidRootPart then
				-- Bail out, since we're relying on HumanoidRootPart existing
				return
			end
		end
		local ancestryChangedConn;
		ancestryChangedConn = HumanoidRootPart.AncestryChanged:connect(function(child, parent)
			if child == HumanoidRootPart and not parent then 
				HumanoidRootPart = nil
				if ancestryChangedConn and ancestryChangedConn.Connected then
					ancestryChangedConn:Disconnect()
					ancestryChangedConn = nil
				end
			end
		end)
	end
	
	if not TorsoPart then
		CheckTorsoReference()
		if not TorsoPart then
			-- Bail out, since we're relying on Torso existing, should never happen since we fall back to using HumanoidRootPart as torso
			return
		end
	end

	-- Make a list of world points to raycast to
	local castPoints = {}
	BehaviorFunction(castPoints)
	
	-- Cast to get a list of objects between the camera and the cast points
	local currentHits = {}
	local ignoreList = {Character}
	local function add(hit)
		currentHits[hit] = true
		if not SavedHits[hit] then
			SavedHits[hit] = hit.LocalTransparencyModifier
		end
	end
	
	local hitParts
	local hitPartCount = 0
	
	-- Hash table to treat head-ray-hit parts differently than the rest of the hit parts hit by other rays
	-- head/torso ray hit parts will be more transparent than peripheral parts when USE_STACKING_TRANSPARENCY is enabled
	local headTorsoRayHitParts = {}	
	local partIsTouchingCamera = {}
	
	local perPartTransparencyHeadTorsoHits = TARGET_TRANSPARENCY
	local perPartTransparencyOtherHits = TARGET_TRANSPARENCY
	
	if USE_STACKING_TRANSPARENCY then
	
		-- This first call uses head and torso rays to find out how many parts are stacked up
		-- for the purpose of calculating required per-part transparency
		local headPoint = HeadPart and HeadPart.CFrame.p or castPoints[1]
		local torsoPoint = TorsoPart and TorsoPart.CFrame.p or castPoints[2]
		hitParts = Camera:GetPartsObscuringTarget({headPoint, torsoPoint}, ignoreList)
		
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
	hitParts = Camera:GetPartsObscuringTarget(castPoints, ignoreList)
	
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
	for hitPart, originalLTM in pairs(SavedHits) do
		if currentHits[hitPart] then
			-- LocalTransparencyModifier gets whatever value is required to print the part's total transparency to equal perPartTransparency			
			hitPart.LocalTransparencyModifier = (hitPart.Transparency < 1) and ((partTargetTransparency[hitPart] - hitPart.Transparency) / (1.0 - hitPart.Transparency)) or 0
		else -- Restore original pre-invisicam value of LTM
			hitPart.LocalTransparencyModifier = originalLTM
			SavedHits[hitPart] = nil
		end
	end
end

function Invisicam:SetMode(newMode)
	AssertTypes(newMode, 'number')
	for modeName, modeNum in pairs(MODE) do
		if modeNum == newMode then
			Mode = newMode
			BehaviorFunction = Behaviors[Mode]
			return
		end
	end
	error("Invalid mode number")
end

function Invisicam:SetCustomBehavior(func)
	AssertTypes(func, 'function')
	Behaviors[MODE.CUSTOM] = func
	if Mode == MODE.CUSTOM then
		BehaviorFunction = func
	end
end

function Invisicam:GetObscuredParts()
	return SavedHits
end

-- Want to turn off Invisicam? Be sure to call this after.
function Invisicam:Cleanup()
	for hit, originalFade in pairs(SavedHits) do
		hit.LocalTransparencyModifier = originalFade
	end
end

---------------------
--| Running Logic |--
---------------------

-- Connect to the current and all future cameras
workspace:GetPropertyChangedSignal("CurrentCamera"):connect(OnCurrentCameraChanged)
OnCurrentCameraChanged()

Player.CharacterAdded:connect(OnCharacterAdded)
if Player.Character then
	OnCharacterAdded(Player.Character)
end

Behaviors[MODE.CUSTOM] = function() end -- (Does nothing until SetCustomBehavior)
Behaviors[MODE.LIMBS] = LimbBehavior
Behaviors[MODE.MOVEMENT] = MoveBehavior
Behaviors[MODE.CORNERS] = CornerBehavior
Behaviors[MODE.CIRCLE1] = CircleBehavior
Behaviors[MODE.CIRCLE2] = CircleBehavior
Behaviors[MODE.LIMBMOVE] = LimbMoveBehavior
Behaviors[MODE.SMART_CIRCLE] = SmartCircleBehavior
Behaviors[MODE.CHAR_OUTLINE] = CharacterOutlineBehavior

Invisicam:SetMode(STARTING_MODE)

return Invisicam
