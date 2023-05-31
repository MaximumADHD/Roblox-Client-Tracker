--[[
	Utilities for navigating/understanding the character model for thumbnail generation.
]]
local module = {}

type AttachmentNameToBooleanMap = { [string]: boolean }

--[[
	A map of names of all Attachment children of character's head.
]]
local function getHeadAttachments(character: Model): AttachmentNameToBooleanMap
	local headAttachments = {} :: AttachmentNameToBooleanMap
	local head = character:FindFirstChild("Head")
	if head then
		for _, child in pairs(head:GetChildren()) do
			if child:IsA("Attachment") then
				headAttachments[child.Name] = true
			end
		end
	end
	return headAttachments
end

--[[
	Helper function for growExtentsToInclude.
	We have a part of size "size" with cframe "cFrame".
	x, y, and z are all 1 or -1, giving us one of the eight corners of
	the unrotated part.
	We want to figure out the untransformed corner, then apply cFrame
	to move into world space.
]]
local function makeRotatedCorner(x: number, y: number, z: number, halfSize: Vector3, cFrame: CFrame): Vector3
	local corner = Vector3.new(x * halfSize.X, y * halfSize.Y, z * halfSize.Z)
	return cFrame * corner
end

--[[
	Simple logic to grow the extents to fit the given point.
	Returns (possibly updated) extents.
]]
local function growExtentsToIncludePoint(minExtent: Vector3, maxExtent: Vector3, point: Vector3): (Vector3, Vector3)
	minExtent =
		Vector3.new(math.min(point.X, minExtent.X), math.min(point.Y, minExtent.Y), math.min(point.Z, minExtent.Z))
	maxExtent =
		Vector3.new(math.max(point.X, maxExtent.X), math.max(point.Y, maxExtent.Y), math.max(point.Z, maxExtent.Z))
	return minExtent, maxExtent
end

--[[
	Debug function to help test extent code.  Not used by default but
	useful to leave in the code for investigations as needed.
local function _printExtents(minExtent: Vector3, maxExtent: Vector3, indent: string)
	print(indent .. " minExtent = ", minExtent)
	print(indent .. " maxExtent = ", maxExtent)
end
]]

--[[
	Helper for functions below: given a part, grow min/max extent to
	account for the size of this thing.
	Apply the part's transform to each corner of bounding box of part.
	Apply given inverse so we wind up with extents relative to some coordinate frame.

	There's optional arguments to clamp y above a certain threshold.
	This is available for the case of Closeups with hats that go down below the chin:
	we don't want the center of the closeup to be dragged down to the belly.
]]
local function growExtentsToInclude(
	minExtent: Vector3,
	maxExtent: Vector3,
	part: BasePart,
	cInverse: CFrame,
	optYMinCFrame: CFrame?,
	optYMin: number?
): (Vector3, Vector3)
	local size = part.Size / 2
	local corner

	for x = -1, 1, 2 do
		for y = -1, 1, 2 do
			for z = -1, 1, 2 do
				corner = makeRotatedCorner(x, y, z, size, part.CFrame)

				if optYMinCFrame and optYMin then
					-- 'corner' is the position in space of this corner.
					-- transform it back into the 'yMin' cframe, clamp y to be no less than
					-- optYMin, and transform back.
					local transformedCorner = optYMinCFrame:Inverse() * corner
					local clampedTransformedCorner =
						Vector3.new(transformedCorner.X, math.max(optYMin, transformedCorner.Y), transformedCorner.Z)
					corner = optYMinCFrame * clampedTransformedCorner
				end

				corner = cInverse * corner
				minExtent, maxExtent = growExtentsToIncludePoint(minExtent, maxExtent, corner)
			end
		end
	end

	return minExtent, maxExtent
end

local function initExtents(): (Vector3, Vector3)
	local minExtent = Vector3.new(math.huge, math.huge, math.huge)
	local maxExtent = Vector3.new(-math.huge, -math.huge, -math.huge)
	return minExtent, maxExtent
end

--[[
	Helper function for CalculateModelExtents.
	We are walking the tree of parts/meshes under a model, growing extents to include
	everything we find.
	Apply given inverse so we wind up with extents relative to some coordinate frame.
	indent is not used in current code but if we want to add print statements to debug,
	particularly using _printExtents, it's useful to have because then the output indentation
	reflects the tree structure.
]]
local function recursiveCalculateExtents(
	minExtent: Vector3,
	maxExtent: Vector3,
	instance: Instance,
	cInverse: CFrame,
	indent: string?
): (Vector3, Vector3)
	if not indent then
		indent = ""
	end
	assert(indent, "indent is non-nil. Silence type checker.")
	indent = indent .. "  "
	for _, child in pairs(instance:GetChildren()) do
		if child:IsA("BasePart") then
			minExtent, maxExtent = growExtentsToInclude(minExtent, maxExtent, child :: BasePart, cInverse)
		end
		minExtent, maxExtent = recursiveCalculateExtents(minExtent, maxExtent, child, cInverse, indent)
	end
	return minExtent, maxExtent
end

--[[
	Imagine a box in target CFrame.
	This box should just graze the furthest extent of all the Parts
	in this model.
	Returns the min and max offsets of the box, expressed relative to targetCFrame.
]]
module.CalculateModelExtents = function(model: Model, targetCFrame: CFrame): (Vector3, Vector3)
	local minExtent, maxExtent = initExtents()
	local cInverse = targetCFrame:Inverse()
	minExtent, maxExtent = recursiveCalculateExtents(minExtent, maxExtent, model, cInverse, "  ")
	return minExtent, maxExtent
end

--[[
	Imagine a box in targetCFrame.
	This box should just graze the furthest extent of:
	 - head.
	 - hair.
	 - all hats.
	This returns the min and max offsets of this box, expressed relative to targetCFrame.
]]
module.CalculateHeadExtents = function(character: Model, targetCFrame: CFrame): (Vector3, Vector3)
	local minExtent, maxExtent = initExtents()

	local head = character:FindFirstChild("Head") :: BasePart
	if not head then
		return minExtent, maxExtent
	end

	local cInverse = targetCFrame:Inverse()

	-- We don't want our min y extent to consider anything below the avatar's chin.  Figure
	-- our where that is.
	local untransformedHeadYMin = -head.Size.Y / 2

	-- Get extent of head.
	minExtent, maxExtent = growExtentsToInclude(minExtent, maxExtent, head, cInverse)

	-- Account for hair and hats too.
	local headAttachments = getHeadAttachments(character)

	for _, child in pairs(character:GetChildren()) do
		if child:IsA("Accoutrement") then
			local handle = child:FindFirstChild("Handle") :: BasePart
			if handle then
				local attachment = handle:FindFirstChildWhichIsA("Attachment") :: Attachment
				-- Legacy hat does not have attachment in it and should be considered
				if not attachment or headAttachments[attachment.Name] then
					minExtent, maxExtent =
						growExtentsToInclude(minExtent, maxExtent, handle, cInverse, head.CFrame, untransformedHeadYMin)
				end
			end
		end
	end

	return minExtent, maxExtent
end

--[[
	For a bounding box of all parts, this box should just graze the furthest extent of all the given parts
	This returns the min and max offsets of this box, expressed relative to targetCFrame.
]]
module.CalculateBodyPartsExtents = function(targetCFrame: CFrame, bodyParts: { BasePart }): (Vector3, Vector3)
	local minExtent, maxExtent = initExtents()

	local cInverse = targetCFrame:Inverse()

	for _, part in pairs(bodyParts) do
		minExtent, maxExtent = growExtentsToInclude(minExtent, maxExtent, part, cInverse, targetCFrame)
	end

	return minExtent, maxExtent
end

--[[
	A function for debugging.  Allocate 8 little spheres we can position to
	show the corners of final calculated extents.
]]
module.AllocateDebugExtentParts = function(): { Part }
	local parts = {}
	for i = 1, 8 do
		local part = Instance.new("Part")
		part.Parent = workspace
		part.Name = "DebugExtentPart" .. tostring(i)
		part.Shape = Enum.PartType.Ball
		part.Size = Vector3.new(0.25, 0.25, 0.25)
		part.Anchored = true
		part.CanCollide = false
		parts[#parts + 1] = part
	end
	return parts
end

--[[
	A function for debugging.
	Position debug extent parts to 8 corners defined by min and max extents, with
	given cFrame applied (since min & max extents are relative to some cFrame)
]]
module.PositionDebugExtentParts = function(parts: { Part }, minExtent: Vector3, maxExtent: Vector3, cFrame: CFrame)
	for x = 0, 1, 1 do
		for y = 0, 1, 1 do
			for z = 0, 1, 1 do
				local index = x + y * 2 + z * 4 + 1
				local xVal = x == 0 and minExtent.X or maxExtent.X
				local yVal = y == 0 and minExtent.Y or maxExtent.Y
				local zVal = z == 0 and minExtent.Z or maxExtent.Z
				local p = Vector3.new(xVal, yVal, zVal)
				parts[index].Position = cFrame * p
			end
		end
	end
end

return module
