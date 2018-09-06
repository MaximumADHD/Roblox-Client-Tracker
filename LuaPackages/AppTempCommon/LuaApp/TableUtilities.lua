--[[
	Provides functions for comparing and printing lua tables.
]]

local TableUtilities = {}
local defaultIgnore = {}

--[[
	Takes two tables A and B, returns if they have the same key-value pairs
	Except ignored keys
]]
function TableUtilities.ShallowEqual(A, B, ignore)
	if not A or not B then
		return false
	elseif A == B then
		return true
	end

	if not ignore then
		ignore = defaultIgnore
	end

	for key, value in pairs(A) do
		if B[key] ~= value and not ignore[key] then
			return false
		end
	end
	for key, value in pairs(B) do
		if A[key] ~= value and not ignore[key] then
			return false
		end
	end

	return true
end

--[[
	Takes two tables A, B and a key, returns if two tables have the same value at key
]]
function TableUtilities.EqualKey(A, B, key)
	if A and B and key and key ~= "" and A[key] and B[key] and A[key] == B[key] then
		return true
	end
	return false
end

--[[
	Takes two tables A and B, returns a new table with elements of A
	which are either not keys in B or have a different value in B
]]
function TableUtilities.TableDifference(A, B)
	local new = {}

	for key, value in pairs(A) do
		if B[key] ~= A[key] then
			new[key] = value
		end
	end

	return new
end


--[[
	Takes a list and returns a table whose
	keys are elements of the list and whose
	values are all true
]]
local function membershipTable(list)
	local result = {}
	for i = 1, #list do
		result[list[i]] = true
	end
	return result
end


--[[
	Takes a table and returns a list of keys in that table
]]
local function listOfKeys(t)
	local result = {}
	for key,_ in pairs(t) do
		table.insert(result, key)
	end
	return result
end


--[[
	Takes two lists A and B, returns a new list of elements of A
	which are not in B
]]
function TableUtilities.ListDifference(A, B)
	return listOfKeys(TableUtilities.TableDifference(membershipTable(A), membershipTable(B)))
end


--[[
	For debugging.  Returns false if the given table has any of the following:
		- a key that is neither a number or a string
		- a mix of number and string keys
		- number keys which are not exactly 1..#t
]]
function TableUtilities.CheckListConsistency(t)
	local containsNumberKey = false
	local containsStringKey = false
	local numberConsistency = true

	local index = 1
	for x, _ in pairs(t) do
		if type(x) == 'string' then
			containsStringKey = true
		elseif type(x) == 'number' then
			if index ~= x then
				numberConsistency = false
			end
			containsNumberKey = true
		else
			return false
		end

		if containsStringKey and containsNumberKey then
			return false
		end

		index = index + 1
	end

	if containsNumberKey then
		return numberConsistency
	end

	return true
end


--[[
	For debugging, serializes the given table to a reasonable string that might even interpret as lua.
]]
function TableUtilities.RecursiveToString(t, indent)
	indent = indent or ''

	if type(t) == 'table' then
		local result = ""
		if not TableUtilities.CheckListConsistency(t) then
			result = result .. "-- WARNING: this table fails the list consistency test\n"
		end
		result = result .. "{\n"
		for k,v in pairs(t) do
			if type(k) == 'string' then
				result = result
					.. "  "
					.. indent
					.. tostring(k)
					.. " = "
					.. TableUtilities.RecursiveToString(v, "  "..indent)
					..";\n"
			end
			if type(k) == 'number' then
				result = result .. "  " .. indent .. TableUtilities.RecursiveToString(v, "  "..indent)..",\n"
			end
		end
		result = result .. indent .. "}"
		return result
	else
		return tostring(t)
	end
end


--[[
    Takes a table and returns the field count
]]
function TableUtilities.FieldCount(t)
    local fieldCount = 0
    for _ in pairs(t) do
        fieldCount = fieldCount + 1
    end
    return fieldCount
end

return TableUtilities

