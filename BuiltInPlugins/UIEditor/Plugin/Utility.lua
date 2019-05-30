local Error = require(script.Parent.Error)

local Utility = {}

-- bool Utility:tablesAreEquivalent(table t1, table t2)
function Utility:tablesAreEquivalent(t1, t2)
	if #t1 ~= #t2 then return false end
	
	for i = 1, #t1 do
		if t1[i] ~= t2[i] then return false end
	end
	return true	
end

-- int Utility:findItemInTable(? item, table t)
function Utility:findItemInTable(item, t)
	if not item then return 0 end
	for i = 1, #t do
		if (t[i] == item) then
			return i
		end
	end
	return 0
end

-- void Utility:removeItemFromTable(? item, table t)
function Utility:removeItemFromTable(item, t)
	local index = Utility:findItemInTable(item, t)
	if (index > 0) then
		table.remove(t, index)
		return true
	end
	return false
end

-- int Utility:mathattanDistance(Vector2 v)
function Utility:manhattanDistance(v)
	return math.abs(v.X) + math.abs(v.Y)
end

-- Returns the cross product between two vectors.
--
-- double Utility:crossVector2(Vector2 v1, Vector2 v2)
function Utility:crossVector2(v1, v2)
	return v1.X*v2.Y - v1.Y*v2.X
end

-- Returns the angle in radians between two vectors. 
--
-- double Utility:angleVector2(Vector2 v1, Vector2 v2)
function Utility:angleVector2(v1, v2)
	-- We use this for when rotating the selected object. This method
	-- works better than the method we use in the transform dragger tool.
	-- See https://stackoverflow.com/questions/21483999/using-atan2-to-find-angle-between-two-vectors
	return math.atan2(Utility:crossVector2(v1, v2), v1:Dot(v2))
end

-- Vector2 Utility:floorVector2(Vector2 v)
function Utility:floorVector2(v)
	return Vector2.new(math.floor(v.X), math.floor(v.Y))
end

-- Vector2 Utility:minVector2(Vector2 v1, Vector2 v2)
function Utility:minVector2(v1, v2)
	return Vector2.new(math.min(v1.X, v2.X), math.min(v1.Y, v2.Y))
end

-- Vector2 Utility:maxVector2(Vector2 v1, Vector2 v2)
function Utility:maxVector2(v1, v2)
	return Vector2.new(math.max(v1.X, v2.X), math.max(v1.Y, v2.Y))
end

-- UDim2 Utility:vector2ToUDim2Offset(Vector2 v)
function Utility:vector2ToUDim2Offset(v1)
	return UDim2.new(0, v1.X, 0, v1.Y)
end

-- num or nil Utility:minOrNil(num v1, num v2)
function Utility:minOrNil(v1, v2)
	if not v1 then return v2 end
	if not v2 then return v1 end
	
	return math.min(v1, v2)
end

-- num or nil Utility:maxOrNil(num v1, num v2)
function Utility:maxOrNil(v1, v2)
	if not v1 then return v2 end
	if not v2 then return v1 end
	
	return math.max(v1, v2)
end

-- bool Utility:isOnlyScaleUDim2(UDim2 value)
function Utility:isOnlyScaleUDim2(value)
	return (value.X.Offset == 0 and value.Y.Offset == 0) and
			(value.X.Scale ~=0 or value.Y.Scale ~= 0)
end

-- bool Utility:isOnlyOffsetUDim2(UDim2 value)
function Utility:isOnlyOffsetUDim2(value)
	return (value.X.Scale == 0 and value.Y.Scale == 0) and
			(value.X.Offset ~=0 or value.Y.Offset ~= 0)
end

-- num or Vector2 Utility:distance((num or Vector2) v1, (num or Vector2) v2)
function Utility:distance(v1, v2)
	local v1IsNumber = type(v1) == "number"
	local v2IsNumber = type(v2) == "number"
	if (v1IsNumber and v2IsNumber) then
		return math.abs(v2 - v1)
	elseif (v1IsNumber or v2IsNumber) then
		Error("passed in one number and one non number")
	else
		return (v2 - v1).magnitude
	end
end

-- table(mt ?) Utility:cloneTable(table(mt ?) t)
function Utility:cloneTable(t)
	local newTable = {}

	local mt = getmetatable(t)
	local newMt = nil
	
	for k, v in pairs(t) do
		if (type(v) == "table") then
			if v == mt then
				v = Utility:cloneTable(v)
				newMt = v
			else
				v = Utility:cloneTable(v)
			end
		end
		newTable[k] = v
	end
	
	if mt ~= nil and newMt == nil then
		newMt = Utility:cloneTable(mt)
	end	
	
	if newMt then
		setmetatable(newTable, newMt)
	end
	
	return newTable
end

--table Utility:joinTables(table t1, table t2)
function Utility:joinTables(t1, t2)
	local newTable = Utility:cloneTable(t1)
	
	for i = 1, #t2 do
		table.insert(newTable, t2[i])
	end
	
	return newTable
end

return Utility
