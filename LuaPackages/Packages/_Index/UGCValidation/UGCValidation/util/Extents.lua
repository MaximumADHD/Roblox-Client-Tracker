--[[
    An implementation of a min/max Extents library representing the minimum and maximum corners of an objects axis aligned bounding box
]]

local Extents = {}
Extents.__index = Extents
type ExtentsMembers = {
	min: Vector3,
	max: Vector3,
}

export type Extents = typeof(setmetatable({} :: ExtentsMembers, Extents))

function Extents.new(): Extents
	local new = setmetatable({} :: ExtentsMembers, Extents)
	new.min = Vector3.new(math.huge, math.huge, math.huge)
	new.max = Vector3.new(-math.huge, -math.huge, -math.huge)
	return new
end

-- will maintain invalid state from input vectors if any axis is the default
function Extents.fromMinMax(min: Vector3, max: Vector3): Extents
	local new = Extents.new()

	local minTable = { X = min.X, Y = min.Y, Z = min.Z }
	local maxTable = { X = max.X, Y = max.Y, Z = max.Z }

	for _, axis in { "X", "Y", "Z" } do
		if maxTable[axis] ~= -math.huge and minTable[axis] ~= math.huge then
			if minTable[axis] > maxTable[axis] then
				local swap = minTable[axis]
				minTable[axis] = maxTable[axis]
				maxTable[axis] = swap
			end
		end
	end
	new.min = Vector3.new(minTable.X, minTable.Y, minTable.Z)
	new.max = Vector3.new(maxTable.X, maxTable.Y, maxTable.Z)
	return new
end

function Extents:unionExtents(rhs: Extents): Extents
	local unionExtents = Extents.new()
	unionExtents.min = self.min:Min(rhs.min) :: Vector3
	unionExtents.max = self.max:Max(rhs.max) :: Vector3
	return unionExtents
end

function Extents:expandToInclude(point: Vector3): Extents
	local expanded = Extents.new()
	expanded.min = self.min:Min(point)
	expanded.max = self.max:Max(point)
	return expanded
end

function Extents:isValid(): boolean
	for _, dimension in { "X", "Y", "Z" } do
		if (self.max :: any)[dimension] < (self.min :: any)[dimension] then
			return false
		end
	end
	return true
end

function Extents:size(): Vector3?
	if self:isValid() then
		return self.max :: Vector3 - self.min :: Vector3
	end
	return nil
end

return Extents
