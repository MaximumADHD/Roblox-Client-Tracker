-- singleton
local FastFlags = require(script.Parent.Parent.FastFlags)

local Table = {}

function Table:init(Paths)
	self.Paths = Paths
end

function Table:terminate(Paths)
	Table.Paths = nil
end

function Table:getValuesArray(tab)
	local valueSet={}
	local n=0

	for k,v in pairs(tab) do
  		n=n+1
  		valueSet[n]=v
	end
	return valueSet
end

function Table:getValuesToKeysTable(tab)
	local newTab={}
	for k,v in pairs(tab) do
  		newTab[v]=k
	end
	return newTab
end

function Table:getSize(tab)
	local count = 0
	for k, v in pairs(tab) do
		count = count + 1
	end
	return count
end

function Table:containsOneKeyOnly(tab)
	local count = 0
	if nil ~= tab then
  		for _ in pairs(tab) do 
			count = count + 1
			if count > 1 then
				return false
			end
		end
	end
  	return 1 == count
end

function Table:containsMultipleKeys(tab)
	return not self:isNilOrEmpty(tab) and not self:containsOneKeyOnly(tab)
end

function Table:isNilOrEmpty(tab)
  	return nil == tab or nil == next(tab)
end

function Table:firstKey(tab)
  	local key = next(tab)
	return key
end

function Table:firstValue(tab)
  	local key, value = next(tab)
	return value
end

function Table:hasValue(tab, searchForVal)
	return self.Paths.HelperFunctionsIteration:ifAny(tab, function(k,v) return v == searchForVal end)
end

function Table:indexOf(tab, searchForVal)
	for index, value in ipairs(tab) do
		if searchForVal == value then
			return index
		end
	end
end

return Table