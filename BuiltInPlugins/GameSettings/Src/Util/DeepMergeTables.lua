-- Deep merge 2 tables, TODO: this functionality will be coming to Cyro soon but use this for now

local DeepMergeTables = {}

DeepMergeTables.None = newproxy(true)

getmetatable(DeepMergeTables.None).__tostring = function()
	return "DeepMergeTables.None"
end

function DeepMergeTables.Merge(t1, t2)
	t1 = t1 or {}
	t2 = t2 or {}
	
	local newTable = {}

	for k,v in pairs(t1) do
		if type(t1[k]) == "table" then
			if t2[k] then
				if type(t2[k]) == "table" then
					newTable[k] = DeepMergeTables.Merge(t1[k], t2[k])
				else
					-- If t2[k] is not a table but it exists, just skip the extra work
					newTable[k] = t2[k]
				end
			else
				newTable[k] = DeepMergeTables.Merge(t1[k], {})
			end
		else
			if v == DeepMergeTables.None then
				newTable[k] = nil
			else
				newTable[k] = v
			end
		end
	end

	for k,v in pairs(t2) do
		if type(t2[k]) == "table" then
			-- Only merge tables if we didn't merge tables already
			if not t1[k] or type(t1[k]) ~= "table" then
				newTable[k] = DeepMergeTables.Merge({}, t2[k])
			end
		else
			if v == DeepMergeTables.None then
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