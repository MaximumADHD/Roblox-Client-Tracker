--[[
	Place a camera so subjects fit a portrait hole. Camera sits on +Z looking
	at the box center; characters should face +Z.

	Both fits seed from HRP + HipHeight + the solved Head. There is deliberately
	no GetBoundingBox path: bounds sweep in hair, hats and held tools, so a tall
	accessory would shrink the subject to keep itself in frame.

	"Head top" here means the top surface of the `Head` part, and nothing above
	it. That is the character's standing height for framing purposes: a top hat
	or a tall hairstyle sticks out of the shot on purpose, because the
	alternative is that wearing one silently pushes the whole body smaller.
]]

local avatarFloorPosition = require(script.Parent.avatarFloorPosition)

local MomentScenes = script:FindFirstAncestor("MomentScenes")
local Packages = MomentScenes.Parent
local SafeFlags = require(Packages.SafeFlags)

-- SafeFlags, because DefineFastString throws outside a RobloxScript, and the
-- Studio preview is a LocalScript. There this reads as "2".
local getCameraPadding = SafeFlags.createGetFString("MomentScenesFrameCameraPadding", "2")
local DEFAULT_PADDING = 2

-- A non-positive override puts the camera on the subject or past it.
local function cameraPadding(): number
	local parsed = tonumber(getCameraPadding())
	if parsed == nil or parsed <= 0 then
		return DEFAULT_PADDING
	end
	return parsed
end

-- Narrowest viewport the framing is expected to survive, not a measurement of
-- any particular host. Fitting for the narrowest case is the conservative
-- choice: a wider viewport simply shows more margin, it never crops.
local DEFAULT_ASPECT = 9 / 16
-- Half the horizontal extent to keep in frame, as a fraction of the subject's
-- standing height. Composition knob, not a measurement: at 0.24 a default R15
-- rig keeps ~1.25 studs either side of its centre line, cropping arms that
-- reach 2.0 for a tighter portrait.
--
-- A ratio rather than a stud count so the framing is scale-invariant. The
-- height side of the box is measured off the rig, so an absolute width would
-- make the binding axis depend on how tall the subject is: at 1.25 studs, width
-- bound the fit for anything under ~4.44 studs of head height, which is every
-- rig below roughly HeightScale 0.82, and their distance stopped responding to
-- their size at all. Keep this under DEFAULT_ASPECT / 2 (0.281) and height
-- always binds for a single subject. Groups still bind on width, correctly,
-- because their X extent grows with the spread.
local HALF_WIDTH_RATIO = 0.24
local HALF_DEPTH = 0.75
local FACE_HEIGHT = 2
local FACE_HALF_WIDTH = 0.7
local FACE_HALF_DEPTH = 0.5

--[[
	Studs from the HumanoidRootPart's centre up to the top of the Head part,
	measured off the solved rig. A relative offset, not a height above the floor
	— `fitStandingCharacters` adds the root's own floor height to get that.

	`avatarRig.createAvatar` settles the joints before any recipe sees the model,
	so `Head.Position` is real here rather than bind pose. This replaced a
	derivation from part Sizes (`0.5 * hrp.Size.Y + head.Size.Y`) that held to
	~0.03 studs across HeightScale and HeadScale but under-read by ~0.8 studs
	when BodyTypeScale lengthens the torso without growing the HumanoidRootPart,
	cropping the shot. Both terms are relative, so this is independent of where
	the rig has been placed.
]]
local function headTopAboveRoot(hrp: BasePart, head: BasePart): number
	return (head.Position.Y - hrp.Position.Y) + 0.5 * head.Size.Y
end

local function emptyFit(): (CFrame, Vector3, number)
	local lookAt = Vector3.new(0, 2, 0)
	local distance = 8
	return CFrame.lookAt(lookAt + Vector3.new(0, 0.5, distance), lookAt), lookAt, distance
end

local function distanceToFit(size: Vector3, fovDegrees: number): number
	local halfFovV = math.rad(fovDegrees) / 2
	local halfFovH = math.atan(math.tan(halfFovV) * DEFAULT_ASPECT)
	local distV = if math.tan(halfFovV) > 0 then (size.Y / 2) / math.tan(halfFovV) else 8
	local distH = if math.tan(halfFovH) > 0 then (size.X / 2) / math.tan(halfFovH) else 8
	return math.max(distV, distH, 1) * cameraPadding()
end

local function fitBox(minBound: Vector3, maxBound: Vector3, fovDegrees: number): (CFrame, Vector3, number)
	local size = maxBound - minBound
	local center = (minBound + maxBound) / 2
	local distance = distanceToFit(size, fovDegrees)
	return CFrame.lookAt(center + Vector3.new(0, 0, distance), center), center, distance
end

local function fitStandingCharacters(avatars: { Model }, fovDegrees: number): (CFrame, Vector3, number)
	local minBound = Vector3.new(math.huge, math.huge, math.huge)
	local maxBound = Vector3.new(-math.huge, -math.huge, -math.huge)
	local any = false
	for _, avatar in avatars do
		local hrp = avatar:FindFirstChild("HumanoidRootPart")
		local head = avatar:FindFirstChild("Head")
		local height = avatarFloorPosition.heightForCharacter(avatar)
		if hrp ~= nil and hrp:IsA("BasePart") and head ~= nil and head:IsA("BasePart") and height ~= nil then
			any = true
			-- Absolute, unlike the offset it is built from: the rig stands with
			-- its feet on y = 0, so adding the root's own floor height gives the
			-- world Y of the top of its head. The framed box runs 0 to here.
			local headTopY = height + headTopAboveRoot(hrp, head)
			local halfWidth = headTopY * HALF_WIDTH_RATIO
			local p = hrp.Position
			minBound = Vector3.new(
				math.min(minBound.X, p.X - halfWidth),
				math.min(minBound.Y, 0),
				math.min(minBound.Z, p.Z - HALF_DEPTH)
			)
			maxBound = Vector3.new(
				math.max(maxBound.X, p.X + halfWidth),
				math.max(maxBound.Y, headTopY),
				math.max(maxBound.Z, p.Z + HALF_DEPTH)
			)
		end
	end
	if not any then
		return emptyFit()
	end
	return fitBox(minBound, maxBound, fovDegrees)
end

-- Same inputs as fitStandingCharacters. Frames a fixed face-sized box hanging
-- below the top of the head rather than fitting the Head part itself, so hair
-- and hats do not drag the framing around.
local function fitStandingFace(avatars: { Model }, fovDegrees: number): (CFrame, Vector3, number)
	local minBound = Vector3.new(math.huge, math.huge, math.huge)
	local maxBound = Vector3.new(-math.huge, -math.huge, -math.huge)
	local any = false
	for _, avatar in avatars do
		local hrp = avatar:FindFirstChild("HumanoidRootPart")
		local head = avatar:FindFirstChild("Head")
		local height = avatarFloorPosition.heightForCharacter(avatar)
		if hrp ~= nil and hrp:IsA("BasePart") and head ~= nil and head:IsA("BasePart") and height ~= nil then
			any = true
			local headTopY = height + headTopAboveRoot(hrp, head)
			local p = hrp.Position
			minBound = Vector3.new(
				math.min(minBound.X, p.X - FACE_HALF_WIDTH),
				math.min(minBound.Y, headTopY - FACE_HEIGHT),
				math.min(minBound.Z, p.Z - FACE_HALF_DEPTH)
			)
			maxBound = Vector3.new(
				math.max(maxBound.X, p.X + FACE_HALF_WIDTH),
				math.max(maxBound.Y, headTopY),
				math.max(maxBound.Z, p.Z + FACE_HALF_DEPTH)
			)
		end
	end
	if not any then
		return emptyFit()
	end
	return fitBox(minBound, maxBound, fovDegrees)
end

return {
	fitStandingCharacters = fitStandingCharacters,
	fitStandingFace = fitStandingFace,
}
