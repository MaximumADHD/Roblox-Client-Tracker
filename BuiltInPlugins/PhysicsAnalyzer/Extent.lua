------------------
--MODULE EXTENTS--
------------------

--[[
	This modulescript is used for calculating the extents of a group of parts
--]]

-------------
--FUNCTIONS--
-------------

local function createExtents()
	local extents = {}
	extents.mt = {}
	setmetatable(extents, extents.mt)
	
	extents.min = Vector3.new(1,1,1) * math.huge
	extents.max = Vector3.new(1,1,1) * -math.huge
	
	extents.mt.__index = function (t, k)
		
		if k == "center" then
			return (extents.min + extents.max) * 0.5
		end
				
		if k == "addPoint" then
			return function (point)
				if point.x < extents.min.x then extents.min = Vector3.new(point.x, extents.min.y, extents.min.z) end
				if point.y < extents.min.y then extents.min = Vector3.new(extents.min.x, point.y, extents.min.z) end
				if point.z < extents.min.z then extents.min = Vector3.new(extents.min.x, extents.min.y, point.z) end
				if point.x > extents.max.x then extents.max = Vector3.new(point.x, extents.max.y, extents.max.z) end
				if point.y > extents.max.y then extents.max = Vector3.new(extents.max.x, point.y, extents.max.z) end
				if point.z > extents.max.z then extents.max = Vector3.new(extents.max.x, extents.max.y, point.z) end
			end
		end
	end
		
	return extents
end

local function addToExtents(extents, part)
	for i = 0, 7 do
		local corner = (Vector3.new(math.floor(i / 4), math.floor(i / 2) % 2, i % 2) * 2) - Vector3.new(1, 1, 1)
		local worldPosition = part.CFrame:pointToWorldSpace(corner * part.Size)
		extents.addPoint(worldPosition)
	end
	return extents
end

local function getExtents(parts)
	
	local extents = createExtents()
	
	for i = 1, #parts do
		if parts[i]:IsA("BasePart") then
			extents = addToExtents(extents, parts[i])
		end
	end
	
	return extents
		
end

-----------------
--ENCAPSULATION--
-----------------

local module = {}
module.getExtents = getExtents
return module
