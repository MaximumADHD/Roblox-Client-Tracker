local Root = script.Parent.Parent
local Cryo = require(Root.Parent.Cryo)
local None = require(Root.None)
local _deepJoinHelper

--[[
	deepJoin deeply merges any number of immutable data structures.
	It conforms to the following behavior:
	1. UnorderedMaps and OrderedMaps are merged with pairs in later maps overwriting pairs in earlier maps. Values
		are recursively deepJoined. None is respected. UnorderedMaps will not be joined with OrderedMaps, and vice versa.
	2. UnorderedSets and OrderedSets are unioned. UnorderedSets will not be unioned with OrderedSets, and vice versa.
	3. Lists are joined (i.e. appended) to one another according to List:join().
	4. Joining two differently typed (i.e. OrderedSet and UnorderedSet) immutable data structures will return the
		RHS immutable data structure.
	5. All other values are overwritten, taking the furthest right value.
]]
local function deepJoin(...)
	local values = { ... }
	if #values == 0 then
		return nil
	end
	return Cryo.List.foldLeft(values, function(accumulator, value, index)
		if index == 1 then
			return accumulator
		end
		return _deepJoinHelper(accumulator, value)
	end, values[1])
end

function _deepJoinHelper(table1, table2)
	if table2 == None then
		return nil
	end
	if type(table1) ~= type(table2) or type(table1) ~= "table" then
		return table2
	end

	if getmetatable(table1) == getmetatable(table2) and type(table1.deepJoin) == "function" then
		if type(table1.deepJoin) == "function" then
			return table1:deepJoin(table2)
		else
			warn([[deepJoining two tables with the same metatable, but not implementing deepJoin.
				Overriding with rightmost table.]])
		end
	end

	return table2
end

return deepJoin