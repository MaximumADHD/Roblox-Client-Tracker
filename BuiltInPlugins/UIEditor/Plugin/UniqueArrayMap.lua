local UniqueArrayMap = {}

function UniqueArrayMap.new()
	local setTable = {}
	setTable.map = {}
	setTable.mt = {}

	function setTable.mt.__index(t, k)
		if k == "insert" then
			return function(key, value)
				if not t.map[key] then
					table.insert(t, { key, value })
					t.map[key] = #t
				end
			end
		elseif k == "remove" then
			return function(key, value)
				if t.map[key] then
					local index = t.map[key]
					table.remove(setTable, index)
					for i = index, #t do
						t.map[t[i][1]] = i
					end
				end
			end
		elseif k == "exists" then
			return function(key)
				return t.map[key] ~= nil
			end
		elseif k == "clear" then
			return function()
				while #t > 0 do
					t.map[t[1][1]] = nil
					table.remove(t, 1)
				end
			end
		end
	end

	setmetatable(setTable, setTable.mt)
	return setTable
end

return UniqueArrayMap
