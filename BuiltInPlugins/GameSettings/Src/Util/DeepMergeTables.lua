-- Deep merge 2 tables, It will return a new copy of dictionaries on every level that is merged together and
--   a shallow copy of tables that are not merged. If you need a deep copy, please use something else.
-- TODO: this functionality will be coming to Cyro soon but use this for now

local Plugin = script.Parent.Parent.Parent
local Cryo = require(Plugin.Packages.Cryo)

local DeepMergeTables = {}

function DeepMergeTables.Merge(t1, t2)
	t1 = t1 or {}
	t2 = t2 or {}
	
	local newTable = {}
	
	for k,v in pairs(t1) do
		if t2[k] == nil then
			newTable[k] = v
		end
	end

	for k,v in pairs(t2) do
		if type(v) == "table" then
			if t1[k] ~= nil and type(t1[k]) == "table" then
				newTable[k] = DeepMergeTables.Merge(t1[k], v)
			else
				newTable[k] = DeepMergeTables.Merge(nil, v)
			end
		else
			if v == Cryo.None then
				newTable[k] = nil
			else
				newTable[k] = v
			end
		end
	end

	if next(newTable) == nil then
		return nil
	end

	return newTable
end

return DeepMergeTables