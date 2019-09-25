function min(...)
	local arg = {...}
	local currentMin = nil
	
	for i, v in ipairs(arg) do
	
		if not currentMin then
			currentMin = v
		elseif v then
			currentMin = v < currentMin and v or currentMin
		end
	end
	return currentMin
end

function max(...)
	local arg = {...}
	local currentMax = nil
	
	for i,v in ipairs(arg) do
		if not currentMax then
			currentMax = v
		elseif v then
			currentMax = v > currentMax and v or currentMax
		end
	end
	return currentMax
end

function minVector3(...)
	local arg = {...}
	local currentMin = nil
	
	for i, v in ipairs(arg) do
		if not currentMin then
			currentMin = v
		elseif v then
			currentMin = Vector3.new(min(currentMin.x, v.x), min(currentMin.y, v.y), min(currentMin.z, v.z))
		end
	end	
	return currentMin
end

function maxVector3(...)
	local arg = {...}
	local currentMax = nil
	
	for i, v in ipairs(arg) do
		if not currentMax then
			currentMax = v
		elseif v then
			currentMax = Vector3.new (max(currentMax.x, v.x), max(currentMax.y, v.y), max(currentMax.z, v.z))
		end
	end
	return currentMax
end

function absVector3(value)
	return Vector3.new(math.abs(value.x), math.abs(value.y), math.abs(value.z))
end

function distanceVector3(v0, v1)
	return math.sqrt(math.pow(v1.x - v0.x, 2) + math.pow(v1.y - v0.y, 2) + math.pow(v1.z - v0.z, 2))
end

function cleanVector3(value, replacement)
	if not replacement then replacement = 0 end
	return Vector3.new(value.X == value.X and value.X or replacement,
						value.Y == value.Y and value.Y or replacement,
						value.Z == value.Z and value.Z or replacement)
end

local function clamp(value, minimum, maximum)
	return math.max(math.min(value, maximum), minimum)
end

local function smoothstep(edge0, edge1, x)
	x = clamp((x - edge0) / (edge1 - edge0), 0.0, 1.0)
	return x*x*(3 - 2*x)
	--return x*x*x*(x*(x*6 - 15) + 10)
end

local function colorMultiply(color, multiplier)
	return Color3.new(color.r * multiplier, color.g * multiplier, color.b * multiplier)
end

local function colorAdd(color1, color2)
	return Color3.new(color1.r + color2.r, color1.g + color2.g, color1.b + color2.b)
end

local function customToSymmetric(value)
	local v = value.X ~= 0 and value.X or (value.Y ~= 0 and value.Y or (value.Z ~= 0 and value.Z or 0))
	return Vector3.new(v,v,v)
end

local function getVector3Sign(value)
	return Vector3.new(value.X / math.abs(value.X == 0 and 1 or value.X),
		value.Y / math.abs(value.Y == 0 and 1 or value.Y),
		value.Z / math.abs(value.Z == 0 and 1 or value.Z))
end

--------------------------------------------------------------
--------------------------------------------------------------
--------------------------------------------------------------

local module = {}

module.min = min
module.max = max
module.minVector3 = minVector3
module.maxVector3 = maxVector3
module.absVector3 = absVector3
module.distanceVector3 = distanceVector3
module.cleanVector3 = cleanVector3
module.getVector3Sign = getVector3Sign

module.customToSymmetric = customToSymmetric

module.smoothstep = smoothstep
module.colorMultiply = colorMultiply
module.colorAdd = colorAdd

return module
