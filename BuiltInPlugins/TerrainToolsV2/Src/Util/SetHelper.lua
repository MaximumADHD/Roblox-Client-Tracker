--[[
	For set definition in Lua see https://www.lua.org/pil/11.5.html
]]

local isProtectedInstance = require(script.Parent.isProtectedInstance)

-- Turns {[number]: any} array into {[any]: true} set
local function arrayToSet(array)
	local set = {}
	for _, value in ipairs(array) do
		set[value] = true
	end
	return set
end

-- Returns a set of values in s0 but not in s1 using a shallow comparison
local function diff(s0, s1)
	local inS0NotS1 = {}

	for key in pairs(s0) do
		if not s1[key] then
			inS0NotS1[key] = true
		end
	end

	return inS0NotS1
end

--[[
Parameters
	array : {[number]: any}
	filter : (any) => boolean
Returns
	valid : {[any]: boolean}   - Values that match the filter
	invalid : {[any]: boolean} - Values that don't match the filter
]]
local function splitArrayIntoValidSets(array, filter)
	local valid = {}
	local invalid = {}

	for _, obj in ipairs(array) do
		if filter(obj) then
			valid[obj] = true
		else
			invalid[obj] = true
		end
	end

	return valid, invalid
end

--[[
Parameters
	instance : Instance
	set : { [Instance] : boolean }
Returns true if the instance or any of its ancestors are found in the set, otherwise false
]]
local function isAnyInstanceAncestorInSet(instance, set)
	if isProtectedInstance(instance) then
		-- Can't access Parent property if instance is protected
		return false
	end
	while instance do
		if set[instance] then
			return true
		end
		instance = instance.Parent
	end
	return false
end

return {
	arrayToSet = arrayToSet,
	diff = diff,
	splitArrayIntoValidSets = splitArrayIntoValidSets,
	isAnyInstanceAncestorInSet = isAnyInstanceAncestorInSet,
}
