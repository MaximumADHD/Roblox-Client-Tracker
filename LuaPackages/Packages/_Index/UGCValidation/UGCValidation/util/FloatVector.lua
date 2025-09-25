--[[
    A general purpose n-dimensional vector library. mul and div support either scalar multiplication or componentwise with another vector
]]

local FloatVector = {}

type FloatVectorMembers = { data: { number } }

export type FloatVector = typeof(setmetatable({} :: FloatVectorMembers, FloatVector))

-- input: Another FloatVector or tuple of number values
function FloatVector.new(...): FloatVector
	local new = setmetatable({} :: FloatVectorMembers, FloatVector)
	new.data = {}

	local inputTable = { ... } :: any
	if #inputTable == 1 then
		if typeof(inputTable[1]) == "table" then
			if getmetatable(inputTable[1]) :: any == FloatVector then
				inputTable = (inputTable[1] :: FloatVector).data
			else
				inputTable = inputTable[1] :: { number }
			end
		end
	end

	for _, component in inputTable do
		if typeof(component) ~= "number" then
			error("arg to FloatVector.new() not a number")
		else
			table.insert(new.data, component :: number)
		end
	end
	return new
end

function FloatVector:getSize(): number
	return #self.data
end

function FloatVector.checkCompatible(lhs: FloatVector, rhs: FloatVector): boolean
	if typeof(lhs) ~= typeof(FloatVector) or typeof(rhs) ~= typeof(FloatVector) then
		error("vector operation on non-vector type")
		return false
	end

	if #lhs.data ~= #rhs.data then
		error("operating on vectors of different dimension")
		return false
	end
	return true
end

function FloatVector.__index(table, key: any)
	if typeof(key) == "number" then
		return table.data[key :: number]
	end

	return FloatVector[key]
end

function FloatVector.__newindex(table, key, value)
	if typeof(key) == "number" then
		table.data[key :: number] = value :: number
		return
	end

	rawset(table, key, value)
end

function FloatVector.__add(lhs: FloatVector, rhs: FloatVector): FloatVector
	FloatVector.checkCompatible(lhs, rhs)
	local result = {}
	for i = 1, #lhs.data, 1 do
		table.insert(result, lhs.data[i] + rhs.data[i])
	end
	return FloatVector.new(result)
end

function FloatVector.__sub(lhs: FloatVector, rhs: FloatVector): FloatVector
	FloatVector.checkCompatible(lhs, rhs)
	local result = {}
	for i = 1, #lhs.data, 1 do
		table.insert(result, lhs.data[i] - rhs.data[i])
	end
	return FloatVector.new(result)
end

function FloatVector.__mul(lhs: FloatVector, rhs: FloatVector | number): FloatVector
	if typeof(lhs) == typeof(FloatVector) and typeof(rhs) == "number" then
		local result = {}
		for _, component in lhs.data do
			table.insert(result, component * rhs :: number)
		end
		return FloatVector.new(result)
	else
		FloatVector.checkCompatible(lhs, rhs)
		local result = {}
		for i = 1, #lhs.data, 1 do
			table.insert(result, lhs.data[i] * rhs.data[i])
		end
		return FloatVector.new(result)
	end
end

function FloatVector.__div(lhs: FloatVector, rhs: FloatVector | number): FloatVector
	if typeof(lhs) == typeof(FloatVector) and typeof(rhs) == "number" then
		local result = {}
		for _, component in lhs.data do
			table.insert(result, component / rhs :: number)
		end
		return FloatVector.new(result)
	else
		FloatVector.checkCompatible(lhs, rhs)
		local result = {}
		for i = 1, #lhs.data, 1 do
			table.insert(result, lhs.data[i] / rhs.data[i])
		end
		return FloatVector.new(result)
	end
end

function FloatVector:dot(rhs): number
	FloatVector.checkCompatible(self, rhs)
	local result = 0
	for i = 1, #self.data, 1 do
		result += self.data[i] * rhs.data[i]
	end
	return result
end

-- must be a 3 dimensional vector
function FloatVector:cross(rhs): FloatVector?
	FloatVector.checkCompatible(self, rhs)
	if #self.data ~= 3 or #rhs.data ~= 3 then
		error("cross product is only defined for two 3 dimensional vectors")
		return nil
	end
	return FloatVector.new(
		self.data[2] * rhs.data[3] - self.data[3] * rhs.data[2],
		self.data[3] * rhs.data[1] - self.data[1] * rhs.data[3],
		self.data[1] * rhs.data[2] - self.data[2] * rhs.data[1]
	)
end

function FloatVector:magnitude(): number
	local sqSum = 0
	for _, component in self.data do
		sqSum += component ^ 2
	end
	return math.sqrt(sqSum)
end

function FloatVector:fuzzyEq(rhs: FloatVector, eps: number): boolean
	if not FloatVector.checkCompatible(self, rhs) then
		return false
	end
	eps = if eps then eps else 0.00001
	for i = 1, #self.data, 1 do
		if math.abs(self.data[i] - rhs.data[i]) > eps then
			return false
		end
	end
	return true
end

return FloatVector
