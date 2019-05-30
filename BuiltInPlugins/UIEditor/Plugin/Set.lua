
local HttpService = game:GetService("HttpService")

local function getUniqueKey(t)
	return HttpService:JSONEncode(t)
end


local Set = {}

function Set.new()
	local setTable = {}
	setTable.map = {}
	setTable.mt = {}
	
	function setTable.mt.__index(t, k)
		if k == "insert" then
			return function(v)
				
				local pk = v
				if (type(pk) == "table") then
					pk = getUniqueKey(pk)
				end
				
				if (not t.map[pk]) then
					table.insert(t, v)
					t.map[pk] = #t
				end
			end
		elseif k == "remove" then
			return function(v)
				
				local pk = v
				if (type(pk) == "table") then
					pk = getUniqueKey(pk)
				end
				
				if (t.map[pk]) then
					local index = t.map[pk]
					table.remove(setTable, index)
					for i = index, #t do
						
						pk = t[i]
						if (type(pk) == "table") then
							pk = getUniqueKey(pk)
						end
						
						t.map[pk] = i
					end
				end
			end
		elseif k == "exists" then
			return function(v)
				
				local pk = v
				if (type(pk) == "table") then
					pk = getUniqueKey(pk)
				end
				
				return t.map[pk] ~= nil
			end
		elseif k == "clear" then
			return function()
				while #t > 0 do
					
					local pk = t[1]
					if (type(pk) == "table") then
						pk = getUniqueKey(pk)
					end
				
					t.map[pk] = nil
					table.remove(t, 1)
				end
			end
		end
	end
	
	setmetatable(setTable, setTable.mt)	
	return setTable
end



return Set


